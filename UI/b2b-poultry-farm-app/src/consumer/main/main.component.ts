import { Component, OnInit } from '@angular/core';
import { InventoryService } from '../InventoryService/inventory.service';
import { ICategory } from '../Models/Categories';


@Component({
  selector: 'app-main',                                                                                                                                                                                                                                                                                                                                                                                                                    
  templateUrl: './main.component.html',
  styleUrl: './main.component.scss'
})
export class MainComponent implements OnInit {

  categories: ICategory[] = [];
  constructor(private inventorySvc: InventoryService) {
    this.inventorySvc = inventorySvc;
  }

  ngOnInit(): void {
    this.inventorySvc.getCategories().subscribe((categories) => {
      this.categories = categories;
    });
  }
}
