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

}
