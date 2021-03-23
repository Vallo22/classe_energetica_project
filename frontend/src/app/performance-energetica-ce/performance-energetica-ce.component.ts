import { Component, OnInit } from '@angular/core';
import { ClasseIndicatoreCe } from '../classes-services/classes/classe-indicatore-ce';
import { ClasseIndicatoreNonCe } from '../classes-services/classes/classe-indicatore-non-ce';
import { IndicatoreCe } from '../classes-services/classes/indicatore-ce';
import { IndicatoreNonCe } from '../classes-services/classes/indicatore-non-ce';
import { PerformanceEnergeticaCeService } from '../classes-services/services/performance-energetica-ce.service';

@Component({
  selector: 'app-performance-energetica-ce',
  templateUrl: './performance-energetica-ce.component.html',
  styleUrls: ['./performance-energetica-ce.component.css']
})
export class PerformanceEnergeticaCeComponent implements OnInit {

  indicatore: IndicatoreCe[]
  classeIndicatore: ClasseIndicatoreCe[]
  indicatoreNon: IndicatoreNonCe[]
  classeIndicatoreNon: ClasseIndicatoreNonCe[]
  selezione: number[] = []
  selezione1: number[] = []
  msg1: boolean = false
  totalePunteggio: number
  epgl: number
  scelta: boolean = true
  
  constructor(
    private service: PerformanceEnergeticaCeService
  ) { }

  ngOnInit() {
    this.service.getIndicatore().subscribe(data => {
      this.indicatore = data;
      //this.indicatore.forEach(f =>
      //  this.selezione.push(this.classeIndicatore.filter(c => c.indicatore.id === f.id)[0].id)
      //  );
    })
    this.service.getClasseIndicatore().subscribe(data => {
      this.classeIndicatore = data;
    })
    this.service.getIndicatoreNon().subscribe(data => {
      this.indicatoreNon = data;
    })
    this.service.getClasseIndicatoreNon().subscribe(data => {
      this.classeIndicatoreNon = data;
    })
    
  }

  outputTotale() {
    const totale = this.classeIndicatore
    .filter(c => this.selezione.map(m => +m).includes(c.id))
    .reduce((a, c) => a + c.punteggio, 0);
    this.totalePunteggio = totale
    const epgl = ((this.totalePunteggio + 1.68875) / 1.00437 )
    this.epgl = epgl
    this.msg1 = true
    console.log('totale: ' + this.totalePunteggio)
    console.log('epgl: ' + this.epgl)
  }

  outputTotaleNon() {
    const totale = this.classeIndicatoreNon
    .filter(c => this.selezione1.map(m => +m).includes(c.id))
    .reduce((a, c) => a + c.punteggio, 0);
    this.totalePunteggio = totale
    const epgl = ((this.totalePunteggio + 1.12725) / 0.7474 )
    this.epgl = epgl
    this.msg1 = true
    console.log('totale: ' + this.totalePunteggio)
    console.log('epgl: ' + this.epgl)
  }

    
}
