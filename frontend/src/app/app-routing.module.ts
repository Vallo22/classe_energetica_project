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
import { TipoStrutturaStComponent } from './tipo-struttura-st/tipo-struttura-st.component';
import { MatriceStComponent } from './matrice-st/matrice-st.component';
import { ValutazioneInterventiStComponent } from './valutazione-interventi-st/valutazione-interventi-st.component';
import { AggiuntaInterventoSecondarioStComponent } from './aggiunta-intervento-secondario-st/aggiunta-intervento-secondario-st.component';
import { RiepilogoCostiStComponent } from './riepilogo-costi-st/riepilogo-costi-st.component';
import { ValutazioneInterventiSecondarioStComponent } from './valutazione-interventi-secondario-st/valutazione-interventi-secondario-st.component';
import { RiepilogoCostiCeComponent } from './riepilogo-costi-ce/riepilogo-costi-ce.component';
import { RiepilogoCombinatoStComponent } from './riepilogo-combinato-st/riepilogo-combinato-st.component';
import { TipoStrutturaBreveStComponent } from './percorso-breve-st/tipo-struttura-breve-st/tipo-struttura-breve-st.component';
import { MatriceBreveStComponent } from './percorso-breve-st/matrice-breve-st/matrice-breve-st.component';
import { ValutazioneInterventiBreveStComponent } from './percorso-breve-st/valutazione-interventi-breve-st/valutazione-interventi-breve-st.component';
import { ValutazioneInterventiBreveSecondarioStComponent } from './percorso-breve-st/valutazione-interventi-breve-secondario-st/valutazione-interventi-breve-secondario-st.component';
import { AggiuntaInterventoSecondarioBreveStComponent } from './percorso-breve-st/aggiunta-intervento-secondario-breve-st/aggiunta-intervento-secondario-breve-st.component';

const routes: Routes = [
  // HOME
  { path: 'home', component: HomeComponent },
  // PARTE ENERGETICA
  { path: 'performance-energetica-ce', component: PerformanceEnergeticaCeComponent },
  { path: 'tipo-struttura-ce', component: TipoStrutturaCeComponent },
  { path: 'matrice-ce', component: MatriceCeComponent },
  { path: 'valutazione-interventi-ce', component: ValutazioneInterventiCeComponent },
  { path: 'riepilogo-costi-ce', component: RiepilogoCostiCeComponent },
  // PARTE STRUTTURALE
  { path: 'tipo-edificio-st', component: TipoEdificioStComponent },
  { path: 'edificio-singolo-st', component: EdificioSingoloStComponent },
  { path: 'edificio-in-aggregato-st', component: EdificioInAggregatoStComponent },
  { path: 'edificio-singolo-st-q/:id', component: EdificioSingoloStQComponent },
  { path: 'edificio-in-aggregato-st-q/:id', component: EdificioInAggregatoStQComponent },
  { path: 'zona-sismica-st', component: ZonaSismicaStComponent },
  { path: 'tipo-struttura-st', component: TipoStrutturaStComponent },
  { path: 'matrice-st', component: MatriceStComponent },
  { path: 'valutazione-interventi-st', component: ValutazioneInterventiStComponent },
  { path: 'aggiunta-intervento-secondario-st', component: AggiuntaInterventoSecondarioStComponent },
  { path: 'valutazione-interventi-secondario-st', component: ValutazioneInterventiSecondarioStComponent },
  { path: 'riepilogo-costi-st', component: RiepilogoCostiStComponent },
  { path: 'riepilogo-combinato-st', component: RiepilogoCombinatoStComponent },
  //PARTE STRUTTURALE BREVE
  { path: 'tipo-struttura-breve-st', component: TipoStrutturaBreveStComponent },
  { path: 'matrice-breve-st', component: MatriceBreveStComponent },
  { path: 'valutazione-interventi-breve-st', component: ValutazioneInterventiBreveStComponent },
  { path: 'aggiunta-intervento-secondario-breve-st', component: AggiuntaInterventoSecondarioBreveStComponent },
  { path: 'valutazione-interventi-breve-secondario-st', component: ValutazioneInterventiBreveSecondarioStComponent }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  
  exports: [RouterModule]
})
export class AppRoutingModule { }