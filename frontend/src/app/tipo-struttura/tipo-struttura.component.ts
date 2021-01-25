import { Component, OnInit } from '@angular/core';
import { Struttura } from '../classi-servizi/classes/strutture/struttura'
import { StrutturaDue } from '../classi-servizi/classes/strutture/struttura-due'
import { StrutturaTre } from '../classi-servizi/classes/strutture/struttura-tre';
import { CaratteristicheQualitative } from '../classi-servizi/classes/caratteristiche-qualitative'
import { ElementiStrutturaService } from '../classi-servizi/service/elementi-struttura.service';
import { AssociazioneIntervento } from '../classi-servizi/classes/associazione-intervento';
import { AssociazioneInterventoService } from '../classi-servizi/service/associazione-intervento.service';
@Component({
  selector: 'app-tipo-struttura',
  templateUrl: './tipo-struttura.component.html',
  styleUrls: ['./tipo-struttura.component.css']
})
export class TipoStrutturaComponent implements OnInit {

  strutt: Struttura[];
  strutt2: StrutturaDue[];
  strutt3: StrutturaTre[];
  caratteristiche: CaratteristicheQualitative[] = [];
  variabileIntervento: AssociazioneIntervento[];
  associazioneIntervento: AssociazioneIntervento[];

  selectedElement = [];
  selectedIndex: number;
  selectedElementDue = [];
  selectedIndexDue: number;
  selectArr: number;

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
  imgE1 = false
  imgE2 = false
  imgE3 = false
  imgE4 = false
  imgE5 = false
  imgE6 = false
  imgE7 = false
  imgE8 = false
  imgE9 = false
  imgE10 = false
  imgE11 = false
  imgE12 = false
  imgE13 = false
  imgF1 = false
  imgF2 = false
  imgF3 = false
  imgF4 = false
  
  constructor(
    private service: ElementiStrutturaService,
    private serviceAssociazione: AssociazioneInterventoService
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
    this.variabileIntervento = []
    let elemento = this.selectedElementDue[this.selectedIndexDue]
    let caratteristica = this.caratteristiche[index]
    this.associazioneIntervento.forEach(t => {
      if (elemento.id == t.strutturaAssociazione.id && caratteristica.id == t.caratteristicaAssociazioneIntervento.id) {
        this.variabileIntervento.push(t);
      } 
    })
    console.log(this.variabileIntervento)
  }

  visualizzaCodiceIntervento(codice: string) {
    this.imgB1 = false

    console.log(codice)
    if(codice == "B1"){
      this.imgB1 = true
    }
  }

}
