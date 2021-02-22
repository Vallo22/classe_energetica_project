import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { IndicatoreCe } from '../classes/indicatore-ce';
import { ClasseIndicatoreCe } from '../classes/classe-indicatore-ce';

@Injectable({
  providedIn: 'root'
})
export class PerformanceEnergeticaCeService {

  url: string

  constructor(private http: HttpClient) {
    this.url = 'http://localhost:8080/';
   }

   public getIndicatore(): Observable<IndicatoreCe[]>{
     return this.http.get<IndicatoreCe[]>(`${this.url}${"indicatoreCe"}`);
   }

   public getClasseIndicatore(): Observable<ClasseIndicatoreCe[]>{
    return this.http.get<ClasseIndicatoreCe[]>(`${this.url}${"classeIndicatoreCe"}`);
  }
  
}
