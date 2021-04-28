import { Component, OnInit } from '@angular/core';
import { AssociazioneInterventoCe } from '../classes-services/classes/associazione-intervento-ce';
import { AssociazioneInterventoSt } from '../classes-services/classes/associazione-intervento-st';
import { AssociazioneRiepilogo } from '../classes-services/classes/associazione-riepilogo';
import { AssociazioneRiepilogoService } from '../classes-services/services/associazione-riepilogo.service';
import pdfMake from 'pdfmake/build/pdfmake';
import pdfFonts from 'pdfmake/build/vfs_fonts';
pdfMake.vfs = pdfFonts.pdfMake.vfs;

@Component({
  selector: 'app-riepilogo-combinato-st',
  templateUrl: './riepilogo-combinato-st.component.html',
  styleUrls: ['./riepilogo-combinato-st.component.css']
})
export class RiepilogoCombinatoStComponent implements OnInit {

  constructor(
    private service: AssociazioneRiepilogoService
  ) { }

  interventi: AssociazioneInterventoSt[] = []
  soglia: number
  vulClass: number
  risk: number
  punteggio: number
  interventoSelezionato: number
  associazione: AssociazioneRiepilogo[]
  somma: number
  prezzoStrutturale: number
  prezzoEnergetico: number
  interventoEnergetico: AssociazioneInterventoCe
  interv: AssociazioneInterventoCe[] = []
  associazioneSelezionati: AssociazioneRiepilogo[] = []
  risparmioEuro: number
  costoIntegrato: number
  risparmioPercentuale: number
  attrezzature: string
  showDiv: boolean = true
  elementoSelezionato = []
  interventoPdf = []

  ngOnInit() {
    this.interventi = window.history.state.interventi
    this.soglia = window.history.state.soglia
    this.vulClass = window.history.state.vulClass
    this.risk = window.history.state.risk;
    this.punteggio = window.history.state.punteggio
    this.service.getAssociazioneRiepilogo().subscribe(data => {
      this.associazione = data
    })
    this.interventi.forEach(t => {
      this.interventoPdf.push(t.intervento.codice)
    })
  }

  generatePdf(){
    const documentDefinition = this.getDocumentDefinition()
    pdfMake.createPdf(documentDefinition).open()
  }

  getDocumentDefinition() {
    return{
      content: [
        {text: 'Riepilogo Valutazione Strutturale\n\n', style: 'header', bold:'true', fontSize: 20},

        {
          style: 'tableExample',
          table: {
            widths: ['*', 'auto'],
            body: [
              ['Classe di vulnerabilità', 'V' + this.vulClass],
              ['Totale punteggio iniziale', this.punteggio],
              ['Classe di rischio sismico', this.risk]
            ]
          }
        },

        {text: 'Interventi selezionati:', style: 'subheader'},
		{
			ul: [
				this.interventoPdf
			]
		}
      ]
    }
  }


  mostra() {
    this.showDiv = false;
  }

  onChangeIntervento(intervento: number) {
    this.prezzoStrutturale = intervento
    this.elementoSelezionato = []
    this.interventi.forEach(c => {
      if(this.prezzoStrutturale == c.prezzoRiepilogo) {
        this.elementoSelezionato.push(c)
      }
    })
    this.elementoSelezionato.forEach(a => {
      this.interventoSelezionato = a.id
    })
    this.associazioneSelezionati = []
    this.associazione.forEach(t => {
      if(this.interventoSelezionato == t.associazioneInterventoStrutturale.id) {
        this.associazioneSelezionati.push(t)
      }
    })
    this.interventoEnergetico = null
    this.interv = []
    this.associazioneSelezionati.forEach(d => {
      this.interventoEnergetico = d?.associazioneInterventoEnergetico
      this.interv.push(this.interventoEnergetico)
    })
    this.showDiv = true
  }

  onChangeEnergetico(interventoEn: number) {
    this.prezzoEnergetico = interventoEn
    this.associazioneSelezionati.forEach(c => {
      if(this.prezzoEnergetico == c.associazioneInterventoEnergetico.prezzoRiepilogo) {
        this.risparmioEuro = c.risparmioEuro
        this.attrezzature = c.attrezzature
      }
    })
    this.showDiv = true
  }


  calcolaSomma() {
    this.somma = Number(this.prezzoEnergetico) + Number(this.prezzoStrutturale)
    this.costoIntegrato = this.somma - this.risparmioEuro
    this.risparmioPercentuale = (this.risparmioEuro * 100) / this.somma
  }
 
}
