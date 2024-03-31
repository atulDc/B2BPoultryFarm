import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DashboardService {

  constructor(private http: HttpClient) 
  { 
    this.http = http;
  }

  navBarItems(): Observable<string[]>
  {
    return of(["Categories", "Account", "Cart"]);
  }

  getCategories(): Observable<string[]>
  {
    return of(["Hen", "Goat", "Egg", "Freshwater Fish", "Seawater Fish", "Crabs-Prawns"])
  }
}
