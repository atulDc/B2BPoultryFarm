import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { ConsumerModule } from '../consumer/consumer.module';
import { HttpClientModule } from '@angular/common/http';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { NavComponent } from './nav/nav.component';
import { FooterComponent } from './footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    NavComponent,
    FooterComponent
],
  imports: [
    BrowserModule,
    ConsumerModule,
    HttpClientModule,
    FontAwesomeModule
],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
