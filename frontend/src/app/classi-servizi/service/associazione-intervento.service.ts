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
}
