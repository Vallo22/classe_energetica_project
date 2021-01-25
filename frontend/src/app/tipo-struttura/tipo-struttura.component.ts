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

  imgB1 = false
  

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

  apriPopup() {
  }

}
