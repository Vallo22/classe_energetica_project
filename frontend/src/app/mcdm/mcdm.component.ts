import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AssociazioneIntervento } from '../classi-servizi/classes/associazione-intervento';
import { CaratteristicheQualitative } from '../classi-servizi/classes/caratteristiche-qualitative';
import { StrutturaTre } from '../classi-servizi/classes/strutture/struttura-tre';
import { ElementiStrutturaService } from '../classi-servizi/service/elementi-struttura.service';
import { RisultatoSelezioneService } from '../classi-servizi/service/risultato-selezione.service';

@Component({
  selector: 'app-mcdm',
  templateUrl: './mcdm.component.html',
  styleUrls: ['./mcdm.component.css']
})
export class McdmComponent {

  constructor(
    private risultatoSelezione: RisultatoSelezioneService,
    private router: Router,
    private service: ElementiStrutturaService
  ) {
  }

  result: boolean = false
  ponderazione: number[] = [0, 0, 0, 0, 0, 0]
  strutturaTre: StrutturaTre[];
  variabileIntervento: AssociazioneIntervento[];
  caratteristiche: CaratteristicheQualitative
  car: CaratteristicheQualitative[]
  totale: number[];
  modCos: number
  effic: number
  supInton: number
  supEv: number
  supIv: number
  revers: number
  semplCant: number
  esigIngom: number
  carQual: number
  intervento: number
  strutturaAssociazione: number
  toggleSuperficie: number
  buttonIntervento: boolean = false
  a: boolean = false
  selectedElement1: any
  selectedElement2: any
  deltaPunteggioFinale: number = 0
  vulClass: number;
  risk: String
  pam: String
  punteggio: number
  soglia: number
  emsType: Number
  arraySelezionati: AssociazioneIntervento[] = []
  selectedElement: AssociazioneIntervento
  counterClickCheck: number = 0
  punteggioPassaggioClasse: number
  punteggioDiVul: number = 0
  punteggioPassaggioClasseAggiornato: number = 0
  contatoreVolte: number
  interventoSingolo: number
  bottoneVisibile: boolean = false
  bottoneVisibile1: boolean = false
  ugualeA0: boolean = false
  tipo_superficie: number = 0



  ngOnInit() {
    this.caratteristiche = window.history.state.caratteristiche
    this.variabileIntervento = window.history.state.variabileIntervento
    this.ponderazione = window.history.state.ponderazione
    this.service.getCaratteristicheQualitative().subscribe(data => {
      this.car = data
    })
    console.log(this.ponderazione)
    this.calcolaTotale()
  }

  calcolaTotale() {
    this.variabileIntervento.forEach(t => {
      t.totale = []
      for (const i in t.varianti) {
        this.modCos = t.modicitaDiCosto[i] * this.ponderazione[0]
        this.effic = t.efficacia[i] * this.ponderazione[1]
        if(this.tipo_superficie == 1) {
          this.supInton = t.supIntonacate[i] * this.ponderazione[2]
          this.revers = t.reversibilita[i] * this.ponderazione[3]
          this.semplCant = t.semplicitaDiCantiere[i] * this.ponderazione[4]
          this.esigIngom = t.esiguitaDiIngombro[i] * this.ponderazione[5]
          if(this.supInton === 0){
            t.totale.push(0)
          } else {
            t.totale.push(this.modCos + this.effic + this.supInton + this.revers + this.semplCant + this.esigIngom)
          }
        } 
        else if(this.tipo_superficie == 2) {
          this.supEv = t.supEvIi[i] * this.ponderazione[2]
          this.revers = t.reversibilita[i] * this.ponderazione[3]
          this.semplCant = t.semplicitaDiCantiere[i] * this.ponderazione[4]
          this.esigIngom = t.esiguitaDiIngombro[i] * this.ponderazione[5]
          if(this.supEv === 0){
            t.totale.push(0)
          } else {
            t.totale.push(this.modCos + this.effic + this.supEv + this.revers + this.semplCant + this.esigIngom)
          }        
        } 
        else if(this.tipo_superficie == 3) {
          this.supIv = t.supIvEi[i] * this.ponderazione[2]
          this.revers = t.reversibilita[i] * this.ponderazione[3]
          this.semplCant = t.semplicitaDiCantiere[i] * this.ponderazione[4]
          this.esigIngom = t.esiguitaDiIngombro[i] * this.ponderazione[5]
          if(this.supIv === 0){
            t.totale.push(0)
          } else {
            t.totale.push(this.modCos + this.effic + this.supIv + this.revers + this.semplCant + this.esigIngom)
          }         
        }
      }
      console.log("Totale: ", t.totale);
    })
    this.massimoNumero() 
  }

  massimoNumero() {
    let min = Infinity
    let max = 0
    let maxIndex: number
    let maxIntervento: AssociazioneIntervento
    let minIntervento: AssociazioneIntervento
    let minIndex: number
    this.variabileIntervento.forEach(interventi => {
      for (let index in interventi.varianti) {
        if (interventi.totale[index] != 0) {
          if (interventi.totale[index] >= max) {
            max = interventi.totale[index]
            maxIntervento = interventi
            maxIndex = parseInt(index)
          }
          if (interventi.totale[index] < min) {
              min = interventi.totale[index]
              minIntervento = interventi
              minIndex = parseInt(index)
          }
        }
      }
    })
    maxIntervento.maxVariante = maxIndex
    minIntervento.minVariante = minIndex
  }

}
