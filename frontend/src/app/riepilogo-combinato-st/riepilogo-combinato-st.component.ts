import { Component, OnInit } from '@angular/core';
import { AssociazioneInterventoSt } from '../classes-services/classes/associazione-intervento-st';
import { AssociazioneRiepilogo } from '../classes-services/classes/associazione-riepilogo';
import { AssociazioneRiepilogoService } from '../classes-services/services/associazione-riepilogo.service';

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
  associazione: AssociazioneRiepilogo[]
  somma: number = 0

  ngOnInit() {
    this.interventi = window.history.state.interventi
    this.service.getAssociazioneRiepilogo().subscribe(data => {
      this.associazione = data
    })
    this.interventi.forEach(c => {
      this.associazione.forEach(d => {
        if(c.intervento.codice == d.associazioneInterventoStrutturale.intervento.codice) {
          const totaleSt = d.associazioneInterventoStrutturale.prezzoSupInt
          const totaleEn = d.associazioneInterventoEnergetico.prezzoVista
          this.somma = totaleSt + totaleEn
         }
      })
    })
    
    
      
  }



}
