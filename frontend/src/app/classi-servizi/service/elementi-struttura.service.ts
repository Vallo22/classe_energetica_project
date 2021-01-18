import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Struttura } from '../classes/strutture/struttura';
import { StrutturaDue } from '../classes/strutture/struttura-due';
import { StrutturaTre } from '../classes/strutture/struttura-tre';

@Injectable({
  providedIn: 'root'
})
export class ElementiStrutturaService {

  url: string

  constructor(private http: HttpClient) {
    this.url = 'http://localhost:8080/';
   }

   public getStruttura():Observable<Struttura[]> {
     return this.http.get<Struttura[]>(`${this.url}${"struttura"}`);
   }

   public getStrutturaDue():Observable<StrutturaDue[]> {
     return this.http.get<StrutturaDue[]>(`${this.url}${"strutturaDue"}`);
   }

   public getStrutturaTre():Observable<StrutturaTre[]> {
    return this.http.get<StrutturaTre[]>(`${this.url}${"strutturaTre"}`);
  }

  }
