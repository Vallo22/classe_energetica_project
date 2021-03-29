import { Component, OnInit } from '@angular/core';
import { AssociazioneInterventoSt } from '../classes-services/classes/associazione-intervento-st';
import { CostoAAB } from '../classes-services/classes/damage/costo-aab';
import { CostoC } from '../classes-services/classes/damage/costo-c';
import { CostoDE } from '../classes-services/classes/damage/costo-de';
import { CostoFG } from '../classes-services/classes/damage/costo-fg';
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

  interventi: AssociazioneInterventoSt[] = []
  risk: string
  soglia: number
  sommaPacchettoInterventi: number
  tipo_superficie: number = 0
  totale: number = 0
  risultatoDivisione: number

  selezione: number
  inputUtente: number
  costoDiRiparazione: number = 0
  
  costoAAB: CostoAAB[] = [
    {id: 1, nome: "D2", costo: 240},
    {id: 2, nome: "D3", costo: 840},
    {id: 3, nome: "D4", costo: 1200},
    {id: 4, nome: "D5", costo: 1200}
  ]

  costoFG: CostoFG[] = [
    {id: 1, nome: "D0", costo: 840},
    {id: 2, nome: "D1", costo: 840},
    {id: 3, nome: "D2", costo: 1080},
    {id: 4, nome: "D3", costo: 1200},
    {id: 5, nome: "D4", costo: 1200},
    {id: 6, nome: "D5", costo: 1200}
  ]

  costoC: CostoC[] = [
    {id: 1, nome: "D0", costo: 240},
    {id: 2, nome: "D1", costo: 240},
    {id: 3, nome: "D2", costo: 600},
    {id: 4, nome: "D3", costo: 840},
    {id: 5, nome: "D4", costo: 1200},
    {id: 6, nome: "D5", costo: 1200}
  ]

  costoDE: CostoDE[] = [
    {id: 1, nome: "D0", costo: 600},
    {id: 2, nome: "D1", costo: 600},
    {id: 3, nome: "D2", costo: 840},
    {id: 4, nome: "D3", costo: 1080},
    {id: 5, nome: "D4", costo: 1200},
    {id: 6, nome: "D5", costo: 1200}
  ]

  ngOnInit() {
    this.sommaPacchettoInterventi = window.history.state.sommaPacchettoInterventi
    this.soglia = window.history.state.soglia
    this.risk = window.history.state.risk;
    this.risultatoSelezione.interventiSelezionati.forEach(z => {
      this.interventi.push(z)
    })
  }

  calcolaInvestimentoTotale(){
    this.totale = 0
    this.interventi.forEach(z => {
      let pr: number
      if(z.tipo_superficie == 1) {
        pr = z.prezzo * z.valoreCifra
      } else if(z.tipo_superficie == 2) {
        pr = z.prezzoSupInt * z.valoreCifra
      } else if(z.tipo_superficie == 3) {
        pr = z.prezzoEntrInt * z.valoreCifra
      } else if(z.tipo_superficie == 4) {
        pr = 54.96 * z.valoreCifra
      } else if(z.tipo_superficie == 5) {
        pr = 180 * z.valoreCifra
      } else if(z.tipo_superficie == 6) {
        pr = 234.93 * z.valoreCifra
      }
      this.totale += pr
    })
    console.log("costo investimento totale: " + this.totale)
    this.risultatoDivisione = this.totale/this.soglia
  }

  mostraTotaleRiparazione() {
    this.costoDiRiparazione = this.inputUtente * this.selezione
    console.log("costo di riparazione: " + this.costoDiRiparazione)
  }

}
