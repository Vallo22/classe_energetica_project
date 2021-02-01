import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { CaratteristicheQualitative } from '../classi-servizi/classes/caratteristiche-qualitative';
import { AssociazioneIntervento } from '../classi-servizi/classes/associazione-intervento';


@Component({
  selector: 'app-matrice-comparazione',
  templateUrl: './matrice-comparazione.component.html',
  styleUrls: ['./matrice-comparazione.component.css']
})

export class MatriceComparazioneComponent implements OnInit {

  constructor(
    private router: Router
  ) { }


  numeroArray: number = 0;
  x: number = 1;
  y: number;
  a: number;
  cr: number;
  mxp: number[] = [0, 0, 0, 0, 0, 0];
  ponderazione: number[] = [0, 0, 0, 0, 0, 0];
  arrayOpposite: number[];
  arr: number[];
  arrayProva: number[] = [];
  numeroPrimario;
  z: number;
  matriceNormalizzata: number[][] = [];
  oggetto: any = {};
  matrix: number[][] = [];
  matrixRisultati: number[] = [0, 0, 0, 0, 0, 0];
  variabileIntervento: AssociazioneIntervento[];
  caratteristiche: CaratteristicheQualitative[];
  interventoSelezionato: AssociazioneIntervento | null = null;
  idStruttura: number = 0;
  idCaratteristica: number = 0;
  

  arrayScelta = [
    { id: 1, char:"è più importante di" },
    { id: 2, char:"è meno importante di" }
  ]

  arrayComparazione = [
    { id: 1, char: "1/9", num: 1 / 9, sceltaId: 2 },
    { id: 2, char: "1/8", num: 1 / 8, sceltaId: 2 },
    { id: 3, char: "1/7", num: 1 / 7, sceltaId: 2 },
    { id: 4, char: "1/6", num: 1 / 6, sceltaId: 2 },
    { id: 5, char: "1/5", num: 1 / 5, sceltaId: 2 },
    { id: 6, char: "1/4", num: 1 / 4, sceltaId: 2 },
    { id: 7, char: "1/3", num: 1 / 3, sceltaId: 2 },
    { id: 8, char: "1/2", num: 1 / 2, sceltaId: 2 },
    { id: 9, char: "2", num: 2, sceltaId: 1 },
    { id: 10, char: "3", num: 3, sceltaId: 1 },
    { id: 11, char: "4", num: 4, sceltaId: 1 },
    { id: 12, char: "5", num: 5, sceltaId: 1 },
    { id: 13, char: "6", num: 6, sceltaId: 1 },
    { id: 14, char: "7", num: 7, sceltaId: 1 },
    { id: 15, char: "8", num: 8, sceltaId: 1 },
    { id: 16, char: "9", num: 9, sceltaId: 1 }
  ]

  comparazioneId = undefined;
  comparazioneListDrop = [];
  sceltaId = undefined
  
  ngOnInit() {
    this.variabileIntervento = window.history.state.variabileIntervento
    this.caratteristiche = window.history.state.caratteristiche
    this.interventoSelezionato = window.history.state.interventoSelezionato
    this.idCaratteristica = window.history.state.idCaratteristica
    this.idStruttura = window.history.state.idStruttura
    for (let r = 0; r < 6; r++) {
      this.matriceNormalizzata.push([0, 0, 0, 0, 0, 0])
      this.matrix[r] = []
      this.oggetto[r] = {}
      this.oggetto[r][r] = 1
      for (let c = 0; c < 6; c++) {
        if (r == c) {
          this.matrix[r].push(1)
          this.oggetto[r][c] = 1
        }
        if (r > c) {
          this.matrix[r].push(1 / 9)
          this.oggetto[r][c] = 1 / 9
        }
        else if (r < c) {
          this.matrix[r].push(9)
          this.oggetto[r][c] = 9
        }
      }
    }
    this.onSelectChange(0, 0)
  }

  onSelectChange(r: number, c: number) {
    //i risultati della prima matrice
    this.oggetto[c][r] = 1 / this.oggetto[r][c]
    this.matrixRisultati = [0, 0, 0, 0, 0, 0]
    for (let r = 0; r < this.matrix.length; r++) {
      for (let c = 0; c < this.matrix[r].length; c++) {
        this.matrixRisultati[c] += this.oggetto[r][c] !== undefined ? this.oggetto[r][c] : 0
      }
    }
    console.log(this.matrix)
    console.log(this.matrixRisultati)
    //La seconda matrice
    for (let r = 0; r < this.matriceNormalizzata.length; r++) {
      for (let c = 0; c < this.matriceNormalizzata[r].length; c++) {
        this.matriceNormalizzata[r][c] = this.oggetto[r][c] / this.matrixRisultati[c]
      }
    }
    //i risultati della secconda matrice
    this.ponderazione = [0, 0, 0, 0, 0, 0]
    for (let r = 0; r < this.matriceNormalizzata.length; r++) {
      for (let c = 0; c < this.matriceNormalizzata[r].length; c++) {
        this.ponderazione[r] += this.matriceNormalizzata[r][c]
      }
      this.ponderazione[r] = this.ponderazione[r] / this.matriceNormalizzata.length
    }
    //Matrice x 
    for (let r = 0; r < 6; r++) {
      let riga = []
      for (let c = 0; c < 6; c++) {
        riga.push(this.oggetto[r][c] !== undefined ? this.oggetto[r][c] : 0)
      }
      this.mxp[r] = this.prodottoVettoriale(riga, this.ponderazione)
    }
    //Calcolo di lambda e di cr
    let lambda = 0
    for (let r in this.mxp) {
      lambda += this.mxp[r] / this.ponderazione[r]
    }
    lambda = lambda / 6
    let ci = (lambda - 6) / 5
    let ri = 1.24
    this.cr = ci / ri
  }

  prodottoVettoriale(array1: number[], array2: number[]) {
    let risultato = 0
    for (let r = 0; r < array1.length; r++) {
      risultato = risultato + array1[r] * array2[r]
    }
    return risultato
  }

  trasferisciPonderazione() {
    this.router.navigate(['/mcdm'], {
      state: {
         caratteristiche: this.caratteristiche
        , ponderazione: this.ponderazione
        , variabileIntervento: this.variabileIntervento
        , idStruttura: this.idStruttura
        , idCaratteristica: this.idCaratteristica
        , interventoSelezionato: this.interventoSelezionato
      }
    })
  }

  public onChangeScelta() {
    this.comparazioneId = undefined;
    this.comparazioneListDrop = this.arrayComparazione.filter(
      c => c.sceltaId === this.sceltaId
    );
  }

}
