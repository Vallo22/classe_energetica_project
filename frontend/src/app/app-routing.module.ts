import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { TipoStrutturaComponent } from './tipo-struttura/tipo-struttura.component';

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'tipo-struttura', component: TipoStrutturaComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  
  exports: [RouterModule]
})
export class AppRoutingModule { }