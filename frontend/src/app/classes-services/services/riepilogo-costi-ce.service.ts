import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { InterventoCe } from '../classes/intervento-ce';

@Injectable({
  providedIn: 'root'
})
export class RiepilogoCostiCeService {

  url: string

  constructor(private http: HttpClient) {
    this.url = 'http://localhost:8080/';
  }

  public getCodice(): Observable<InterventoCe[]> {
    return this.http.get<InterventoCe[]>(this.url + "codiceInterventoCe")
  }
}
