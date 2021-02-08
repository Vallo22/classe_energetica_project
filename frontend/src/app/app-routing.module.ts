import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { TipoStrutturaComponent } from './tipo-struttura/tipo-struttura.component';
import { MatriceComparazioneComponent } from './matrice-comparazione/matrice-comparazione.component';
import { McdmComponent } from './mcdm/mcdm.component';

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'tipo-struttura', component: TipoStrutturaComponent },
  { path: 'matrice', component: MatriceComparazioneComponent },
  { path: 'mcdm', component: McdmComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  
  exports: [RouterModule]
})
export class AppRoutingModule { }