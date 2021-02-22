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

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    PerformanceEnergeticaCeComponent,
    TipoStrutturaCeComponent,
    MatriceCeComponent,
    ValutazioneInterventiCeComponent
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
