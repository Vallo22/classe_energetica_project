import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { EdificioInAggregatoSt } from 'src/app/classes-services/classes/edificio-in-aggregato-st';
import { QualitySt } from 'src/app/classes-services/classes/quality-st';
import { QualitaEdificiStService } from 'src/app/classes-services/services/qualita-edifici-st.service';
import { EdificioInAggregatoStComponent } from '../edificio-in-aggregato-st/edificio-in-aggregato-st.component';

@Component({
  selector: 'app-edificio-in-aggregato-st-q',
  templateUrl: './edificio-in-aggregato-st-q.component.html',
  styleUrls: ['./edificio-in-aggregato-st-q.component.css']
})
export class EdificioInAggregatoStQComponent implements OnInit {

  edificioInAggregato: { [key: string]: EdificioInAggregatoSt[] } = {}
  edificioSelezionato1: EdificioInAggregatoSt[]
  edificioSelezionato2: EdificioInAggregatoSt
  edificioSelezionato3: EdificioInAggregatoSt
  edificioSelezionato4: EdificioInAggregatoSt
  selezione: number[] = []
  value: number[] = []
  muratura: EdificioInAggregatoStComponent
  edificioFiltro: EdificioInAggregatoSt[]
  quality: QualitySt[] = []
  totalePunteggio: number
  varEmp: number
  vulnerability: number
  msg1: boolean = false
  edificioByQuality: { [key: number]: EdificioInAggregatoSt[] } = {}
  subscriptionsToDelete: Subscription = new Subscription()
  Colors: Array<any> = ["#ce5e59","#fad677","#5a8982"]
  emsType: number

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private qualità: QualitaEdificiStService,
  ) {
  }

  getColors(index) {
    let num = this.getnumber(index);
    return this.Colors[num];
  }

  getnumber(data){
    let i = data;
    if(i > this.Colors.length-1){
       i = i - this.Colors.length;
       if(i < this.Colors.length){
        return i;
       }
       else {
        this.getnumber(i);
       }
    }
    else {
      return i;
    }
  }

  ngOnDestroy() {
    this.subscriptionsToDelete.unsubscribe();
  }

  ngOnInit() {
    this.emsType = window.history.state.emsType
    this.subscriptionsToDelete.add(
      this.route.params.subscribe(params => {
        console.log("questo è il valore che ho passato",params['id']);
        Object.keys(params['id'])
        this.varEmp = params['id']
      }));
    //Prendo il metodo dal servizio e lo metto dentro un dizionario edifici
    this.qualità.getQEdificio().subscribe(data => {
      //Creo un dizionario edifici (const edifici = new Object() è la sintassi più vecchia)
      const edifici = {}
      //faccio un for di data, per prendere il suo contenuto e metterlo dentro edificio
      for (const edificio of data) {
        //Creo una costante chiamata edificio, questa avrà l'attributo tipoStruttura al suo interno
        const { tipoStruttura } = edificio.quality.tQuality
        //Se nel dizionario edifici, non c'è una chiave (Dato che nei dizionari c'è sempre almeno una chiave e un valore)
        //La imposto io.
        if (!edifici[tipoStruttura]) {
          //Creo un array associato all'array di chiavi tipoStruttura dove andranno i valori
          edifici[tipoStruttura] = []
        }
        //Metto all'interno del secondo array edificio, che al suo interno aveva tutti i valori di data (const non può essere cambiato)
        edifici[tipoStruttura].push(edificio)
      }
      //Stampo il dizionario
      console.log(edifici)
      //L'array di oggetti edificioInAggregato prende i valori di edifici(quindi prende le sue chiavi e i suoi)
      this.edificioInAggregato = edifici
      //edificioInAggregato['KEY'].forEach(ELEMENTI)
      let qualityId = null
      this.edificioInAggregato['Edificio Singolo'].forEach(element => {
        this.quality.push(element.quality)
        if (qualityId !== element.quality.id) {
          this.selezione.push(element.id)
        }
        if (!this.edificioByQuality[element.quality.id]) {
          this.edificioByQuality[element.quality.id] = []
        }
        this.edificioByQuality[element.quality.id].push(element)
        qualityId = element.quality.id
      });
      qualityId = null
      this.edificioInAggregato['Edificio In Aggregato'].forEach(element => {
        this.quality.push(element.quality);
        if (qualityId !== element.quality.id) {
          this.selezione.push(element.id)
        }
        if (!this.edificioByQuality[element.quality.id]) {
          this.edificioByQuality[element.quality.id] = []
        }
        this.edificioByQuality[element.quality.id].push(element)
        qualityId = element.quality.id
      })
      this.cleanQualityArray()
    });
    console.log(this.edificioInAggregato)
    this.qualità.getQEdificio().subscribe(data => {
      this.edificioSelezionato1 = data;
    })
  }

  outputSelection() {
    let totalePunteggio = 0
    this.selezione.forEach((function (value, index, array) {
      for (const key in this.edificioInAggregato) {
        const list = this.edificioInAggregato[key]
        list.forEach(function (edificio, edificioIndex, edificioArray) {
          if (edificio.id === value) {
            totalePunteggio = totalePunteggio + parseInt(edificio.punteggio)
          }
        })
      }
    }).bind(this))
    const selezionati = {}
    for(const value of this.selezione){
      selezionati[value] = true
    }
    if(selezionati[37] && selezionati[40]){
      totalePunteggio += 15
    }else if(selezionati[42] && selezionati[45]){
      totalePunteggio += 0
    }else{
      totalePunteggio += 8
    }
    this.totalePunteggio = totalePunteggio
    this.vediMuratura()
    console.log("Questo è il valore EMS: ",this.varEmp)
    this.vulnerability
    this.msg1 = true;
  }

  vediMuratura() {
    if (this.varEmp == 1) {
      this.vulnerability = 6;
    }
    if (this.varEmp == 3) {
      if (this.totalePunteggio < 50) {
        this.vulnerability = 5;
      } else if (this.totalePunteggio >= 50) {
        this.vulnerability = 6;
      }
    }
    if (this.varEmp == 5) {
      if (this.totalePunteggio < 30) {
        this.vulnerability = 4;
      } else if (this.totalePunteggio >= 60) {
        this.vulnerability = 6;
      } else if (this.totalePunteggio >= 30 && this.totalePunteggio <= 60) {
        this.vulnerability = 5;
      }
    } 
    if (this.varEmp == 6) {
      if (this.totalePunteggio < 30) {
        this.vulnerability = 3;
      } else if (this.totalePunteggio >= 60) {
        this.vulnerability = 5;
      } else if (this.totalePunteggio >= 30 && this.totalePunteggio <= 60) {
        this.vulnerability = 4;
      }
    } 
    if (this.varEmp == 7) {
      if (this.totalePunteggio < 30) {
        this.vulnerability = 2;
      } else if (this.totalePunteggio >= 60) {
        this.vulnerability = 4;
      } else if (this.totalePunteggio >= 30 && this.totalePunteggio <= 60) {
        this.vulnerability = 3;
      }
    }
  }

  trasferisciClassVul() {
    this.router.navigate(['/zona-sismica-st'], { state: {emsType: this.emsType, vulClass: this.vulnerability, punteggio: this.totalePunteggio } 
  })
  }

  cleanQualityArray(): void {
    //Crea un array di numeri
    const qualityIds: number[] = [];
    //Metto nell'array ogni ID dell'elemento scelto
    this.quality.forEach(el => {
      qualityIds.push(el.id)
    });
    //Questo Set filtra GLI ID DUPLICATI
    const unique = new Set(qualityIds);
    //Creo un altro array di tipo Quality
    const qualityTemp: QualitySt[] = [];
    unique.forEach(u => {
      //Con questo push, associo ad ongi id il resto della stringa
      qualityTemp.push(this.quality.find(qE => qE.id == u))
    });
    //Rimetto tutto qualityTempo all'interno di quality
    this.quality = qualityTemp
  }
}
