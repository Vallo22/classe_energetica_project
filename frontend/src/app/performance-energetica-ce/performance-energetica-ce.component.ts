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
  scelta: boolean = true

  totaleEdificioReale: number
  epglEdificioReale: number
  totaleEdificioIdeale: number
  epglEdificioIdeale: number
  
  constructor(
    private service: PerformanceEnergeticaCeService
  ) { }

  ngOnInit() {
    this.service.getClasseIndicatore().subscribe(data => {
      this.classeIndicatore = data;
    })

    this.service.getIndicatore().subscribe(data => {
      this.indicatore = data;
      this.indicatore.forEach(f =>
        this.selezione.push(this.classeIndicatore.filter(c => c.indicatore.id === f.id)[0].id)
        );
    })

    this.service.getClasseIndicatoreNon().subscribe(data => {
      this.classeIndicatoreNon = data;
    })

    this.service.getIndicatoreNon().subscribe(data => {
      this.indicatoreNon = data;
      this.indicatoreNon.forEach(f =>
        this.selezione1.push(this.classeIndicatoreNon.filter(c => c.indicatore.id === f.id)[0].id)
        );
    })
    
  }

  outputTotale() {
    const totaleEdificioReale = this.classeIndicatore
    .filter(c => this.selezione.map(m => +m).includes(c.id))
    .reduce((a, c) => a + c.punteggio, 0);
    this.totaleEdificioReale = totaleEdificioReale

    const epglEdificioReale = ((this.totaleEdificioReale + 1.68875) / 1.00437 )
    this.epglEdificioReale = epglEdificioReale

    const parziale = this.classeIndicatore
    .filter(c => this.selezione.map(m => +m).includes(c.id))
    .slice(0,5)
    .reduce((a, c) => a + c.punteggio, 0);
    this.totaleEdificioIdeale = parziale + 0.16 + 0.1 + 0.04 + 0.04 + 0.03 + 0.35 + 0.09 + 0.03

    const epglEdificioIdeale = ((this.totaleEdificioIdeale + 2.1079) / 1.2311 )
    this.epglEdificioIdeale = epglEdificioIdeale

    this.msg1 = true
    console.log('EDIFICIO CON CLIMATIZZAZIONE ESTIVA')
    console.log('totale ed. reale: ' + this.totaleEdificioReale)
    console.log('epgl ed. reale: ' + this.epglEdificioReale)
    console.log('totale ed. ideale' + this.totaleEdificioIdeale)
    console.log('epgl ed. ideale' + this.epglEdificioIdeale)
  }

  outputTotaleNon() {
    const totaleEdificioReale = this.classeIndicatoreNon
    .filter(c => this.selezione1.map(m => +m).includes(c.id))
    .reduce((a, c) => a + c.punteggio, 0);
    this.totaleEdificioReale = totaleEdificioReale

    const epglEdificioReale = ((this.totaleEdificioReale + 1.12725) / 0.7474 )
    this.epglEdificioReale = epglEdificioReale

    const parziale = this.classeIndicatoreNon
    .filter(c => this.selezione1.map(m => +m).includes(c.id))
    .slice(0,5)
    .reduce((a, c) => a + c.punteggio, 0);
    this.totaleEdificioIdeale = parziale + 0.16 + 0.1 + 0.04 + 0.04 + 0.03 + 0.35 + 0.14

    const epglEdificioIdeale = ((this.totaleEdificioIdeale + 2.1079) / 1.2311 )
    this.epglEdificioIdeale = epglEdificioIdeale

    this.msg1 = true
    console.log('EDIFICIO SENZA CLIMATIZZAZIONE ESTIVA')
    console.log('totale ed. reale: ' + this.totaleEdificioReale)
    console.log('epgl ed. reale: ' + this.epglEdificioReale)
    console.log('totale ed. ideale' + this.totaleEdificioIdeale)
    console.log('epgl ed. ideale' + this.epglEdificioIdeale)
  }

    
}
