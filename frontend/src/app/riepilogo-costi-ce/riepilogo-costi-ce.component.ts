import { Component, OnInit } from '@angular/core';
import { AssociazioneInterventoCe } from '../classes-services/classes/associazione-intervento-ce';
import { Combustibili } from '../classes-services/classes/combustibili';
import { RisultatoSelezioneCeService } from '../classes-services/services/risultato-selezione-ce.service';
import { registerLocaleData } from '@angular/common';
import localeFr from '@angular/common/locales/fr';
registerLocaleData(localeFr, 'fr');

@Component({
  selector: 'app-riepilogo-costi-ce',
  templateUrl: './riepilogo-costi-ce.component.html',
  styleUrls: ['./riepilogo-costi-ce.component.css']
})
export class RiepilogoCostiCeComponent implements OnInit {

  constructor(
    private risultatoSelezione: RisultatoSelezioneCeService
  ) { }

  interventi: AssociazioneInterventoCe[] = []
  elementoSelezionato: AssociazioneInterventoCe[] = []
  tipo_superficie: number = 0
  totale: number = 0

  pre: number
  post: number
  supUtile: number
  selezione: number
  risparmioEnergetico: number
  risparmioEconomico: number
  tempoDiRitorno: number
  cue: number

  combustibili: Combustibili[] = [
    {id: 1, nome: "Gas naturale", costo: 0.084},
    {id: 2, nome: "GPL", costo: 0.174},
    {id: 3, nome: "Gasolio", costo: 0.113},
    {id: 4, nome: "Carbone", costo: 0.12},
    {id: 5, nome: "Biomasse solide", costo: 0.063},
    {id: 6, nome: "Biomasse liquide", costo: 0.063},
    {id: 7, nome: "Teleriscaldamento", costo: 0.111},
    {id: 8, nome: "Energia elettrica", costo: 0.16}
  ]

  ngOnInit() {
    this.risultatoSelezione.interventiSelezionati.forEach(z => {
      this.interventi.push(z)
    })
  }

  selezionaIntervento() {
    this.interventi.forEach(z => {
      this.elementoSelezionato.push(z)
    })
  }

  calcolaInvestimentoTotale() {
    this.totale = 0
    this.interventi.forEach(z => {
      let pr: number
      if(z.tipo_superficie == 1) {
        pr = z.prezzoVista * z.valoreCifra
      } else if(z.tipo_superficie == 2) {
        pr = z.prezzoInton * z.valoreCifra
      } else if(z.tipo_superficie == 3) {
        pr = 64.22 * z.valoreCifra
      } else if(z.tipo_superficie == 4) {
        pr = 56 * z.valoreCifra
      }
      this.totale += pr
    })
    console.log("costo investimento totale: " + this.totale)
  }

  calcoloRisparmi() {
    this.risparmioEnergetico = (this.pre - this.post) * this.supUtile
    this.risparmioEconomico = this.risparmioEnergetico * this.selezione
    this.tempoDiRitorno = ( this.totale / ( this.selezione * ( (this.pre * this.supUtile) - (this.post * this.supUtile) ) ) )
    this.cue = this.totale / (this.pre - this.post)
    console.log("risparmio energetico: " + this.risparmioEnergetico)
    console.log("risparmio economico: " + this.risparmioEconomico)
    console.log("tempo di ritorno: " + this.tempoDiRitorno)
    console.log("cu(e): " + this.cue)
  }

}
