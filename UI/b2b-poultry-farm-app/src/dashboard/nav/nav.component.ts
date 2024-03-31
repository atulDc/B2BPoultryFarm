import { Component, OnInit } from '@angular/core';
import { DashboardService } from '../dashboardService/dashboard.service';
import { isNullOrEmpty } from '../../app/Miscellaneous/helper';
import { faLayerGroup, faUser, faCartShopping } from '@fortawesome/free-solid-svg-icons';
import { NavBarDetail } from '../Models/NavBarDetail';

@Component({
  selector: 'app-nav',
  templateUrl: './nav.component.html',
  styleUrl: './nav.component.scss'
})
export class NavComponent implements OnInit {
  
  navBarItems: NavBarDetail[] = [];
  isBurgerActive: string = "";

  /* begin fontawesome region*/
  faLayerGroup = faLayerGroup;
  faUser = faUser;
  faCartShopping = faCartShopping;
  /* end fontawesome region*/

  constructor(private dashboardSvc: DashboardService) 
  {
    this.dashboardSvc = dashboardSvc;
  }

  ngOnInit(): void 
  {
    this.dashboardSvc.navBarItems().subscribe((navBarItems) => {
      navBarItems.forEach((navItem) =>{
        this.mapNavBarDetail(navItem);
      });
    });
  }

  mapNavBarDetail(navItem: string): void{
    switch(navItem)
    {
      case "Categories":
      this.navBarItems.push({navItemName : navItem, navItemIcon: this.faLayerGroup});
      break;
      case "Account":
      this.navBarItems.push({navItemName : navItem, navItemIcon: this.faUser});
      break;
      case "Cart":
      this.navBarItems.push({navItemName : navItem, navItemIcon: this.faCartShopping});
      break;
    }
  }

  burgerMenuOnClick(): void
  {
    if(isNullOrEmpty(this.isBurgerActive)){
      this.isBurgerActive = "is-active";
    }
    else{
      this.isBurgerActive = "";
    }
  }

  MenuLinkOnClick(): void
  {
      this.isBurgerActive = "";
  }

}
