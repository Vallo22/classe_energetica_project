import { Component, OnInit } from '@angular/core';
import { AssociazioneInterventoSt } from '../classes-services/classes/associazione-intervento-st';
import { InterventoSt } from '../classes-services/classes/intervento-st';
import { RisultatoSelezioneStService } from '../classes-services/services/risultato-selezione-st.service';

@Component({
  selector: 'app-riepilogo-costi-st',
  templateUrl: './riepilogo-costi-st.component.html',
  styleUrls: ['./riepilogo-costi-st.component.css']
})
export class RiepilogoCostiStComponent implements OnInit {

  constructor(
    private risultatoSelezione: RisultatoSelezioneStService
  ) { }

  interventiDaMostrare: InterventoSt[] = []
  interventi: AssociazioneInterventoSt[] = []
  elementoSelezionato: AssociazioneInterventoSt[] = []
  prezzoSingoloIntervento: number[] = []
  totale: number = 0
  risk: string
  soglia: number
  risultatoDivisione: number
  costoDiRiparazione: number
  sommaPacchettoInterventi: number
  valoreCosto: number
  numeroUtente: number
  costoRiparazione: number
  tipo_superficie: number = 0

  ngOnInit() {
    this.sommaPacchettoInterventi = window.history.state.sommaPacchettoInterventi
    console.log("Pacchetto interventi somma: ", this.sommaPacchettoInterventi)
    this.soglia = window.history.state.soglia
    this.risk = window.history.state.risk;
    this.risultatoSelezione.interventiSelezionati.forEach(z => {
      this.interventi.push(z)
      console.log("interventi: ", this.interventi)
    })
    this.selezionaIntervento()
    console.log(this.dannoIpotizzato)
    this.calcolaCostoRiparazione()
  }

  selezionaIntervento() {
    this.interventi.forEach(z => {
      this.elementoSelezionato.push(z)
    })
  }

  calcolaInvestimentoTotale(){
    this.interventi.forEach(z => {
      let pr: number
      if(z.tipo_superficie == 1) {
        pr = z.prezzo * z.valoreCifra
      } else if(z.tipo_superficie == 2) {
        pr = z.prezzoSupInt * z.valoreCifra
      } else if(z.tipo_superficie == 3) {
        pr = z.prezzoEntrInt * z.valoreCifra
      }
      this.totale += pr
    })
    this.risultatoDivisione = this.totale/this.soglia
  }

  dannoIpotizzato = [
    { id: 1, valore: "D0", costo: this.valoreCosto },
    { id: 2, valore: "D1", costo: this.valoreCosto },
    { id: 3, valore: "D2", costo: this.valoreCosto },
    { id: 4, valore: "D3", costo: this.valoreCosto },
    { id: 5, valore: "D4", costo: this.valoreCosto },
    { id: 6, valore: "D5", costo: this.valoreCosto }
  ]

  calcolaCostoRiparazione(){
    if(this.risk == "A+" || this.risk == "A" || this.risk == "B"){
      this.dannoIpotizzato[2].costo = 240
      this.dannoIpotizzato[3].costo = 840
      this.dannoIpotizzato[4].costo = 1200
      this.dannoIpotizzato[5].costo = 1200
    }
    else if(this.risk == "F" || this.risk == "G"){
      this.dannoIpotizzato[0].costo = 840
      this.dannoIpotizzato[1].costo = 840
      this.dannoIpotizzato[2].costo = 1080
      this.dannoIpotizzato[3].costo = 1200
      this.dannoIpotizzato[4].costo = 1200
      this.dannoIpotizzato[5].costo = 1200
    }
    else if(this.risk == "C"){
      this.dannoIpotizzato[0].costo = 240
      this.dannoIpotizzato[1].costo = 240
      this.dannoIpotizzato[2].costo = 600
      this.dannoIpotizzato[3].costo = 840
      this.dannoIpotizzato[4].costo = 1200
      this.dannoIpotizzato[5].costo = 1200
    }
    else if(this.risk == "D" || this.risk == "E"){
      this.dannoIpotizzato[0].costo = 600
      this.dannoIpotizzato[1].costo = 600
      this.dannoIpotizzato[2].costo = 840
      this.dannoIpotizzato[3].costo = 1080
      this.dannoIpotizzato[4].costo = 1200
      this.dannoIpotizzato[5].costo = 1200
    }
  }

  onChangeDannoIpotizzato(i: number){
    this.costoDiRiparazione = 0
    console.log(i)
    console.log("numero utente: ",this.numeroUtente)
      this.costoRiparazione = this.dannoIpotizzato[i - 1].costo * this.numeroUtente
  }

}
