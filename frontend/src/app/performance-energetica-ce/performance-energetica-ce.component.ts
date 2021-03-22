import { Component, OnInit } from '@angular/core';
import { ClasseIndicatoreCe } from '../classes-services/classes/classe-indicatore-ce';
import { IndicatoreCe } from '../classes-services/classes/indicatore-ce';
import { PerformanceEnergeticaCeService } from '../classes-services/services/performance-energetica-ce.service';

@Component({
  selector: 'app-performance-energetica-ce',
  templateUrl: './performance-energetica-ce.component.html',
  styleUrls: ['./performance-energetica-ce.component.css']
})
export class PerformanceEnergeticaCeComponent implements OnInit {

  indicatore: IndicatoreCe[]
  classeIndicatore: ClasseIndicatoreCe[]
  selezione: number[]
  msg1: boolean = false
  totalePunteggio: number
  
  constructor(
    private service: PerformanceEnergeticaCeService
  ) { }

  ngOnInit() {
    this.service.getIndicatore().subscribe(data => {
      this.indicatore = data;
      console.log(this.indicatore)
    })
    this.service.getClasseIndicatore().subscribe(data => {
      this.classeIndicatore = data;
      console.log(this.classeIndicatore)
    })
  }

  outputTotale() {
    //this.totalePunteggio = this.selezione.map((option: ClasseIndicatoreCe) => option.punteggio).reduce((punteggioA: number, punteggioB: number) => punteggioA + punteggioB)

    //const totale = this.classeIndicatore.filter(c => this.selezione.includes(c.id)).reduce((a,c) => a + c.punteggio, 0)
    //this.totalePunteggio = totale
    this.msg1 = true
    console.log(this.totalePunteggio)
  }

    
}
