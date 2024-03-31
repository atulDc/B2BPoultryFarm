import { Component, OnInit } from '@angular/core';
import { DashboardService } from '../dashboardService/dashboard.service';
import { Category } from '../Models/Categories';


@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrl: './main.component.scss'
})
export class MainComponent implements OnInit {

  categories: Category[] = [];
  constructor(private dashboardSvc: DashboardService) {
    this.dashboardSvc = dashboardSvc;
  }

  ngOnInit(): void {
    this.dashboardSvc.getCategories().subscribe((categories) => {
      categories.forEach((category) => {
        this.mapCategoryDetail(category)
      });
    });
  }

  mapCategoryDetail(category: string): void {
    switch (category) {
      case "Hen":
        this.categories.push({ categoryName: category, categoryImg: '../../assets/country-chicken.jpg' });
        break;
      case "Goat":
        this.categories.push({ categoryName: category, categoryImg: '../../assets/Saanen-goat.jpg' });
        break;
      case "Egg":
        this.categories.push({ categoryName: category, categoryImg: '../../assets/eggs.jpg' });
        break;
      case "Freshwater Fish":
        this.categories.push({ categoryName: category, categoryImg: '../../assets/rohi-fish.jpg' });
        break;
      case "Seawater Fish":
        this.categories.push({ categoryName: category, categoryImg: '../../assets/rohi-fish.jpg' });
        break;
      case "Crabs-Prawns":
        this.categories.push({ categoryName: category, categoryImg: '../../assets/prawn.jpg' });
        break;
    }
  }
}
