import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MainComponent } from './main/main.component';
import { ProductCatalogComponent } from './product-catalog/product-catalog.component'


@NgModule({
  declarations: [
    MainComponent,
    ProductCatalogComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [
    MainComponent,
    ProductCatalogComponent
  ]
})
export class ConsumerModule { }
