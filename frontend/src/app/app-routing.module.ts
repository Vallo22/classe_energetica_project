import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { PerformanceEnergeticaCeComponent } from './performance-energetica-ce/performance-energetica-ce.component';
import { TipoStrutturaCeComponent } from './tipo-struttura-ce/tipo-struttura-ce.component';
import { MatriceCeComponent } from './matrice-ce/matrice-ce.component';
import { ValutazioneInterventiCeComponent } from './valutazione-interventi-ce/valutazione-interventi-ce.component';
import { TipoEdificioStComponent } from './tipo-edificio-st/tipo-edificio-st.component';
import { EdificioSingoloStComponent } from './edificio-st/edificio-singolo-st/edificio-singolo-st.component';
import { EdificioInAggregatoStComponent } from './edificio-st/edificio-in-aggregato-st/edificio-in-aggregato-st.component';
import { EdificioSingoloStQComponent } from './edificio-st/edificio-singolo-st-q/edificio-singolo-st-q.component';
import { EdificioInAggregatoStQComponent } from './edificio-st/edificio-in-aggregato-st-q/edificio-in-aggregato-st-q.component';
import { ZonaSismicaStComponent } from './zona-sismica-st/zona-sismica-st.component';

const routes: Routes = [
  // HOME
  { path: 'home', component: HomeComponent },
  // PARTE ENERGETICA
  { path: 'performance-energetica-ce', component: PerformanceEnergeticaCeComponent },
  { path: 'tipo-struttura-ce', component: TipoStrutturaCeComponent },
  { path: 'matrice-ce', component: MatriceCeComponent },
  { path: 'valutazione-interventi-ce', component: ValutazioneInterventiCeComponent },
  // PARTE STRUTTURALE
  { path: 'tipo-edificio-st', component: TipoEdificioStComponent },
  { path: 'edificio-singolo-st', component: EdificioSingoloStComponent },
  { path: 'edificio-in-aggregato-st', component: EdificioInAggregatoStComponent },
  { path: 'edificio-singolo-st-q/:id', component: EdificioSingoloStQComponent },
  { path: 'edificio-in-aggregato-st-q/:id', component: EdificioInAggregatoStQComponent },
  { path: 'zona-sismica-st', component: ZonaSismicaStComponent }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  
  exports: [RouterModule]
})
export class AppRoutingModule { }