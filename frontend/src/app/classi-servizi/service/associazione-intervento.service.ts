import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { AssociazioneIntervento } from '../classes/associazione-intervento';

@Injectable({
  providedIn: 'root'
})
export class AssociazioneInterventoService {

  url: string

  constructor(private http: HttpClient) {
    this.url = 'http://localhost:8080/';
  }

  public getAssociazioneIntervento(): Observable<AssociazioneIntervento[]> {
    return this.http.get<AssociazioneIntervento[]>(`${this.url}${"associazioneIntervento"}`)
  }

  public getInterventoSingolo(carattQualit: number, intervento: number, strutturaAssociazione: number): Observable<AssociazioneIntervento[]> {
    return this.http.get<AssociazioneIntervento[]>(`${this.url}${"getInterventoSingolo"}`, {
      params: {
        carattQualit: `${carattQualit}`,
        intervento: `${intervento}`,
        strutturaAssociazione: `${strutturaAssociazione}`
      }
    }) 
  }

  public getInterventoByCaratteristicaAndStruttura(carattQualit: number, strutturaId: number): Observable<AssociazioneIntervento[]> {
    return this.http.get<AssociazioneIntervento[]>(`${this.url}${"getInterventoByCaratterstica"}`, {
      params: {
        carattQualit: `${carattQualit}`,
        struttura: `${strutturaId}`
      }
    })
  }

  public interventGrouping(data: AssociazioneIntervento[]){
    const result = []
    const raggruppamento = {}
    for (const value of data) {
      const idIntervento = value.intervento.id
      const idCaratteristica = value.caratteristicaAssociazioneIntervento.id
      const idStruttura = value.strutturaAssociazione.id
      const key = idIntervento + "_" + idCaratteristica + "_" + idStruttura
      if (!raggruppamento[key]) {
        raggruppamento[key] = {
          ...value,
          modicitaDiCosto: [],
          efficacia: [],
          supIntonacate: [],
          supEvIi: [],
          supIvEi: [],
          reversibilita: [],
          semplicitaDiCantiere: [],
          esiguitaDiIngombro: []
        }
      }
      raggruppamento[key].modicitaDiCosto.push(value.modicitaDiCosto)
      raggruppamento[key].efficacia.push(value.efficacia)
      raggruppamento[key].supIntonacate.push(value.supIntonacate)
      raggruppamento[key].supEvIi.push(value.supEvIi)
      raggruppamento[key].supIvEi.push(value.supIvEi)
      raggruppamento[key].reversibilita.push(value.reversibilita)
      raggruppamento[key].semplicitaDiCantiere.push(value.semplicitaDiCantiere)
      raggruppamento[key].esiguitaDiIngombro.push(value.esiguitaDiIngombro)
    }
    for (const key in raggruppamento) {
      result.push(raggruppamento[key])
    }
    return result
  }
}
