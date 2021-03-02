import { Component, OnInit } from '@angular/core';
import { AssociazioneInterventoCe } from '../classes-services/classes/associazione-intervento-ce';
import { RisultatoSelezioneCeService } from '../classes-services/services/risultato-selezione-ce.service';

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

  ngOnInit() {
    this.risultatoSelezione.interventiSelezionati.forEach(z => {
      this.interventi.push(z)
      console.log("interventi: ", this.interventi)
    })
  }

  selezionaIntervento() {
    this.interventi.forEach(z => {
      this.elementoSelezionato.push(z)
    })
  }

}
