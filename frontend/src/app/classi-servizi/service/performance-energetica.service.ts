import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Indicatore } from '../classes/indicatore';
import { ClasseIndicatore } from '../classes/classe-indicatore';

@Injectable({
  providedIn: 'root'
})
export class PerformanceEnergeticaService {

  url: string

  constructor(private http: HttpClient) {
    this.url = 'http://localhost:8080/';
   }

   public getIndicatore(): Observable<Indicatore[]>{
     return this.http.get<Indicatore[]>(`${this.url}${"indicatore"}`);
   }

   public getClasseIndicatore(): Observable<ClasseIndicatore[]>{
    return this.http.get<ClasseIndicatore[]>(`${this.url}${"classeIndicatore"}`);
  }
  
}
