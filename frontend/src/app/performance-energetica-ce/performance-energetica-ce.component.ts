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

  indicatore: IndicatoreCe[] = [];
  classeIndicatore: ClasseIndicatoreCe[];
  selezione: number[] = [];
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
    console.log("rapportos/v: " + this.selezione[0])
  }

  outputTotale() {
    this.msg1= true
    let totalePunteggio = 0
    this.selezione.forEach((function(value) {
      for(const key in this.edificio) {
        const list = this.edificio[key]
        list.forEach(function(ed) {
          if(ed.id === value) {
            totalePunteggio = totalePunteggio + parseInt(ed.punteggio)
          }
        })
        }
      }).bind(this))
      const selezionati = {}
      for(const value of this.selezione) {
        selezionati[value] = true
      }
      this.totalePunteggio = totalePunteggio
      console.log("rapportos/v: " + this.selezione[0])
    }
    

}
