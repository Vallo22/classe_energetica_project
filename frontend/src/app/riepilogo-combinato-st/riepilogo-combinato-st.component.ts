import { Component, OnInit } from '@angular/core';
import { AssociazioneInterventoSt } from '../classes-services/classes/associazione-intervento-st';

@Component({
  selector: 'app-riepilogo-combinato-st',
  templateUrl: './riepilogo-combinato-st.component.html',
  styleUrls: ['./riepilogo-combinato-st.component.css']
})
export class RiepilogoCombinatoStComponent implements OnInit {

  constructor() { }

  interventi: AssociazioneInterventoSt[] = []

  ngOnInit() {
    this.interventi = window.history.state.interventi
    console.log(this.interventi)
  }

}
