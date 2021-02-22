import { Component, OnInit } from '@angular/core';
import { Indicatore } from '../classi-servizi/classes/indicatore';
import { ClasseIndicatore } from '../classi-servizi/classes/classe-indicatore';
import { PerformanceEnergeticaService } from '../classi-servizi/service/performance-energetica.service';

@Component({
  selector: 'app-performance-energetica',
  templateUrl: './performance-energetica.component.html',
  styleUrls: ['./performance-energetica.component.css']
})
export class PerformanceEnergeticaComponent implements OnInit {

  indicatore: Indicatore[] = [];
  classeIndicatore: ClasseIndicatore[];
  selezione: number[] = [];

  constructor(
    private service: PerformanceEnergeticaService
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
