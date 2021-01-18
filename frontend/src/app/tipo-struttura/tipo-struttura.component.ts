import { Component, OnInit } from '@angular/core';
import { Struttura } from '../classi-servizi/classes/strutture/struttura'
import { StrutturaDue } from '../classi-servizi/classes/strutture/struttura-due'
import { ElementiStrutturaService } from '../classi-servizi/service/elementi-struttura.service';
@Component({
  selector: 'app-tipo-struttura',
  templateUrl: './tipo-struttura.component.html',
  styleUrls: ['./tipo-struttura.component.css']
})
export class TipoStrutturaComponent implements OnInit {

  strutt: Struttura[];
  strutt2: StrutturaDue[];

  selectedElement = [];
  selectedIndex: number;

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
  }
  
  onChange(index: number) {
    this.selectedElement = []
    this.strutt2.forEach(t => {
      if (t.struttura_id_id.id === this.strutt[index].id) {
        this.selectedElement.push(t)
      }
    })
    this.selectedIndex = 0;
  }

}
