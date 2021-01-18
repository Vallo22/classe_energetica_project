import { Component, OnInit } from '@angular/core';
import { Struttura } from '../classi-servizi/classes/strutture/struttura'
import { StrutturaDue } from '../classi-servizi/classes/strutture/struttura-due'
import { StrutturaTre } from '../classi-servizi/classes/strutture/struttura-tre';
import { ElementiStrutturaService } from '../classi-servizi/service/elementi-struttura.service';
@Component({
  selector: 'app-tipo-struttura',
  templateUrl: './tipo-struttura.component.html',
  styleUrls: ['./tipo-struttura.component.css']
})
export class TipoStrutturaComponent implements OnInit {

  strutt: Struttura[];
  strutt2: StrutturaDue[];
  strutt3: StrutturaTre[];

  selectedElement = [];
  selectedIndex: number;
  selectedElementDue = [];
  selectedIndexDue: number;
  strutture: StrutturaTre[] = []

  constructor(
    private service: ElementiStrutturaService
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
      if (t.struttura_due_id !== undefined) {
       if (t.struttura_due_id.id === this.strutt2[index].id) {
          this.selectedElementDue.push(t)
       }
      }
    })
    this.selectedIndexDue = 0;
  }

}
