import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { faSquare, faCheckSquare } from '@fortawesome/free-solid-svg-icons';
import { TipoStrutturaComponent } from './tipo-struttura/tipo-struttura.component';
import { RouterModule } from '@angular/router';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    TipoStrutturaComponent
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
