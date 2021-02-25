import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AssociazioneInterventoCe } from '../classes-services/classes/associazione-intervento-ce';
import { CaratteristicheQualitativeCe } from '../classes-services/classes/caratteristiche-qualitative-ce';
import { StrutturaCe } from '../classes-services/classes/structure/struttura-ce';
import { StrutturaDueCe } from '../classes-services/classes/structure/struttura-due-ce';
import { StrutturaTreCe } from '../classes-services/classes/structure/struttura-tre-ce';
import { AssociazioneInterventoCeService } from '../classes-services/services/associazione-intervento-ce.service';
import { RisultatoSelezioneCeService } from '../classes-services/services/risultato-selezione-ce.service';
import { TipoStrutturaCeService } from '../classes-services/services/tipo-struttura-ce.service';

@Component({
  selector: 'app-tipo-struttura-ce',
  templateUrl: './tipo-struttura-ce.component.html',
  styleUrls: ['./tipo-struttura-ce.component.css']
})
export class TipoStrutturaCeComponent implements OnInit {

  strutt: StrutturaCe[];
  strutt2: StrutturaDueCe[];
  strutt3: StrutturaTreCe[];
  caratteristiche: CaratteristicheQualitativeCe[] = [];
  variabileIntervento: AssociazioneInterventoCe[];
  associazioneIntervento: AssociazioneInterventoCe[];

  selectedElement = [];
  selectedIndex: number;
  selectedElementDue = [];
  selectedIndexDue: number;
  selectArr: number;
  alert: boolean = false

  imgA1 = false
  imgA2 = false
  imgA3 = false
  imgA4 = false
  imgA5 = false
  imgA6 = false
  imgA7 = false
  imgA8 = false
  imgB1 = false
  imgB2 = false
  imgB3 = false
  imgB4 = false
  imgB5 = false
  imgB6 = false
  imgB7 = false
  imgB8 = false
  imgB9 = false
  imgB10 = false
  imgB11 = false
  imgB12 = false
  imgB13 = false
  imgB14 = false
  imgC1 = false
  imgC2 = false
  imgC3 = false
  imgC4 = false
  imgC5 = false
  imgC6 = false
  imgC7 = false
  imgC8 = false
  imgC9 = false
  imgC10 = false
  imgC11 = false
  imgD1 = false
  imgD2 = false
  imgD3 = false
  imgD4 = false

  constructor(
    private service: TipoStrutturaCeService,
    private serviceAssociazione: AssociazioneInterventoCeService,
    private risultatoSelezione: RisultatoSelezioneCeService,
    private router: Router
  ) { }

  ngOnInit() {
    this.service.getStruttura().subscribe(data => {
      this.strutt = data;
      console.log(this.strutt)
    })
    this.service.getStrutturaDue().subscribe(data => {
      this.strutt2 = data;
      console.log(this.strutt2)
    })
    this.service.getStrutturaTre().subscribe(data => {
      this.strutt3 = data;
      console.log(this.strutt3)
    })
    this.serviceAssociazione.getAssociazioneIntervento().subscribe(data => {
      this.associazioneIntervento = this.serviceAssociazione.interventGrouping(data);
      console.log(this.associazioneIntervento)
    })
  }

  onChange(index: number) {
    this.selectedElement = []
    this.strutt2.forEach(t => {
      if (t.struttura_id !== undefined) {
        if (t.struttura_id.id === this.strutt[index].id) {
          this.selectedElement.push(t)
        }
      }
    })
    this.selectedIndex = 0;
    this.onChangeSecondo(0);
  }

  onChangeSecondo(index: number) {
    this.selectedElementDue = []
    this.strutt3.forEach(t => {
      if (t.struttura_due_id.id === this.selectedElement[index].id) {
        this.selectedElementDue.push(t)
      }
    })
    this.selectedIndexDue = 0;
    this.onChangeTerzo(0);
  }

  onChangeTerzo(index: number) {
    this.caratteristiche = this.selectedElementDue[index].carattQualit
    this.selectArr = 0;
    this.onChangeCaratteristicheQualitative(0);

  }

  onChangeCaratteristicheQualitative(index: number) {
    if (index === 0) {
      this.variabileIntervento = null
    } else {
      this.variabileIntervento = []
      let elemento = this.selectedElementDue[this.selectedIndexDue]
      let caratteristica = this.caratteristiche[index]
      this.associazioneIntervento.forEach(t => {
        if (elemento.id == t.strutturaAssociazione.id && caratteristica.id == t.caratteristicaAssociazioneIntervento.id) {
          this.variabileIntervento.push(t);
        }
      })
    }
    console.log(this.variabileIntervento)
  }

  trasferisciOggetti() {
    if (this.variabileIntervento == null) {
      this.alert = true
      window.scrollTo(0, 0)
    } else {
      this.risultatoSelezione.aggiungiCaratteristica(this.caratteristiche[this.selectArr])
      this.router.navigate(['/matrice-ce'], {
        state: {
          variabileIntervento: this.variabileIntervento,
          caratteristiche: this.caratteristiche[this.selectArr]
        }
      })
    }
  }

  visualizzaCodiceIntervento(codice: string) {
    this.imgA1 = false
    this.imgA2 = false
    this.imgA3 = false
    this.imgA4 = false
    this.imgA5 = false
    this.imgA6 = false
    this.imgA7 = false
    this.imgA8 = false
    this.imgB1 = false
    this.imgB2 = false
    this.imgB3 = false
    this.imgB4 = false
    this.imgB5 = false
    this.imgB6 = false
    this.imgB7 = false
    this.imgB8 = false
    this.imgB9 = false
    this.imgB10 = false
    this.imgB11 = false
    this.imgB12 = false
    this.imgB13 = false
    this.imgB14 = false
    this.imgC1 = false
    this.imgC2 = false
    this.imgC3 = false
    this.imgC4 = false
    this.imgC5 = false
    this.imgC6 = false
    this.imgC7 = false
    this.imgC8 = false
    this.imgC9 = false
    this.imgC10 = false
    this.imgC11 = false
    this.imgD1 = false
    this.imgD2 = false
    this.imgD3 = false
    this.imgD4 = false

    console.log(codice)
    if (codice == "A1") {
      this.imgA1 = true
    }
    else if (codice == "A2") {
      this.imgA2 = true
    }
    else if (codice == "A3") {
      this.imgA3 = true
    }
    else if (codice == "A4") {
      this.imgA4 = true
    }
    else if (codice == "A5") {
      this.imgA5 = true
    }
    else if (codice == "A6") {
      this.imgA6 = true
    }
    else if (codice == "A7") {
      this.imgA7 = true
    }
    else if (codice == "A8") {
      this.imgA8 = true
    }
    else if (codice == "B1") {
      this.imgB1 = true
    }
    else if (codice == "B2") {
      this.imgB2 = true
    }
    else if (codice == "B3") {
      this.imgB3 = true
    }
    else if (codice == "B4") {
      this.imgB4 = true
    }
    else if (codice == "B5") {
      this.imgB5 = true
    }
    else if (codice == "B6") {
      this.imgB6 = true
    }
    else if (codice == "B7") {
      this.imgB7 = true
    }
    else if (codice == "B8") {
      this.imgB8 = true
    }
    else if (codice == "B9") {
      this.imgB9 = true
    }
    else if (codice == "B10") {
      this.imgB10 = true
    }
    else if (codice == "B11") {
      this.imgB11 = true
    }
    else if (codice == "B12") {
      this.imgB12 = true
    }
    else if (codice == "B13") {
      this.imgB13 = true
    }
    else if (codice == "B14") {
      this.imgB14 = true
    }
    else if (codice == "C1") {
      this.imgC1 = true
    }
    else if (codice == "C2") {
      this.imgC2 = true
    }
    else if (codice == "C3") {
      this.imgC3 = true
    }
    else if (codice == "C4") {
      this.imgC4 = true
    }
    else if (codice == "C5") {
      this.imgC5 = true
    }
    else if (codice == "C6") {
      this.imgC6 = true
    }
    else if (codice == "C7") {
      this.imgC7 = true
    }
    else if (codice == "C8") {
      this.imgC8 = true
    }
    else if (codice == "C9") {
      this.imgC9 = true
    }
    else if (codice == "C10") {
      this.imgC10 = true
    }
    else if (codice == "C11") {
      this.imgC11 = true
    }
    else if (codice == "D1") {
      this.imgD1 = true
    }
    else if (codice == "D2") {
      this.imgD2 = true
    }
    else if (codice == "D3") {
      this.imgD3 = true
    }
    else if (codice == "D4") {
      this.imgD4 = true
    }

  }

}