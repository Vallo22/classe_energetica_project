import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { PerformanceEnergeticaCeComponent } from './performance-energetica-ce/performance-energetica-ce.component';
import { TipoStrutturaCeComponent } from './tipo-struttura-ce/tipo-struttura-ce.component';
import { MatriceCeComponent } from './matrice-ce/matrice-ce.component';
import { ValutazioneInterventiCeComponent } from './valutazione-interventi-ce/valutazione-interventi-ce.component';

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'performance-energetica-ce', component: PerformanceEnergeticaCeComponent },
  { path: 'tipo-struttura-ce', component: TipoStrutturaCeComponent },
  { path: 'matrice-ce', component: MatriceCeComponent },
  { path: 'valutazione-interventi-ce', component: ValutazioneInterventiCeComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  
  exports: [RouterModule]
})
export class AppRoutingModule { }