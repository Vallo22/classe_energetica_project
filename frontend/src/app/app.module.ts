import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { PerformanceEnergeticaCeComponent } from './performance-energetica-ce/performance-energetica-ce.component';
import { TipoStrutturaCeComponent } from './tipo-struttura-ce/tipo-struttura-ce.component';
import { MatriceCeComponent } from './matrice-ce/matrice-ce.component';
import { ValutazioneInterventiCeComponent } from './valutazione-interventi-ce/valutazione-interventi-ce.component';
import { TipoEdificioStComponent } from './tipo-edificio-st/tipo-edificio-st.component';
import { EdificioInAggregatoStComponent } from './edificio-st/edificio-in-aggregato-st/edificio-in-aggregato-st.component';
import { EdificioSingoloStComponent } from './edificio-st/edificio-singolo-st/edificio-singolo-st.component';
import { EdificioSingoloStQComponent } from './edificio-st/edificio-singolo-st-q/edificio-singolo-st-q.component';
import { EdificioInAggregatoStQComponent } from './edificio-st/edificio-in-aggregato-st-q/edificio-in-aggregato-st-q.component';
import { ZonaSismicaStComponent } from './zona-sismica-st/zona-sismica-st.component';
import { TipoStrutturaStComponent } from './tipo-struttura-st/tipo-struttura-st.component';
import { MatriceStComponent } from './matrice-st/matrice-st.component';
import { ValutazioneInterventiStComponent } from './valutazione-interventi-st/valutazione-interventi-st.component';
import { AggiuntaInterventoSecondarioStComponent } from './aggiunta-intervento-secondario-st/aggiunta-intervento-secondario-st.component';
import { ValutazioneInterventiSecondarioStComponent } from './valutazione-interventi-secondario-st/valutazione-interventi-secondario-st.component';
import { RiepilogoCostiStComponent } from './riepilogo-costi-st/riepilogo-costi-st.component';
import { RiepilogoCostiCeComponent } from './riepilogo-costi-ce/riepilogo-costi-ce.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    PerformanceEnergeticaCeComponent,
    TipoStrutturaCeComponent,
    MatriceCeComponent,
    ValutazioneInterventiCeComponent,
    TipoEdificioStComponent,
    EdificioInAggregatoStComponent,
    EdificioSingoloStComponent,
    EdificioSingoloStQComponent,
    EdificioInAggregatoStQComponent,
    ZonaSismicaStComponent,
    TipoStrutturaStComponent,
    MatriceStComponent,
    ValutazioneInterventiStComponent,
    AggiuntaInterventoSecondarioStComponent,
    ValutazioneInterventiSecondarioStComponent,
    RiepilogoCostiStComponent,
    RiepilogoCostiCeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
      {path: '' , redirectTo:'/home',pathMatch:'full'}
    ])
  ],
  bootstrap: [AppComponent]
})
export class AppModule {
 }
