import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { environment } from '../../environments/environments';
import { ICategory } from '../Models/Categories';

@Injectable({
  providedIn: 'root'
})
export class InventoryService {

  inventoryUrl = "/inventory";
  constructor(private http: HttpClient) 
  { 
    this.http = http;
  }

  navBarItems(): Observable<string[]>
  {
    return of(["Categories", "Account", "Cart"]);
  }

  getCategories(): Observable<ICategory[]>
  {
    return this.http.get<ICategory[]>(environment.apiUrl + this.inventoryUrl + '/categories');
  }
}
