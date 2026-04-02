import { Component, OnInit } from '@angular/core';
import { DataService, DataItem } from './data.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  title = 'Angular-Reload';

  dataItems: DataItem[] = [];
  newItemName = '';
  newItemIsPresent = true;
  successMessage = '';

  constructor(private dataService: DataService) { }

  ngOnInit(): void {
    this.loadItems();
  }

  // Load items from local storage (includes default + dynamic)
  loadItems(): void {
    this.dataItems = this.dataService.getItems();
  }

  // Add new item
  addItem(): void {
    if (this.newItemName.trim()) {
      const newItem = this.dataService.addItem({
        name: this.newItemName,
        ispresent: this.newItemIsPresent
      });

      this.dataItems.push(newItem);
      this.newItemName = '';
      this.newItemIsPresent = true;

      // Show success message
      this.successMessage = `Item "${newItem.name}" added successfully!`;
      setTimeout(() => {
        this.successMessage = '';
      }, 3000);
    }
  }

  // Toggle present status
  togglePresent(id: number): void {
    this.dataService.togglePresent(id);
    this.loadItems();
    const item = this.dataItems.find(i => i.id === id);
    if (item) {
      this.successMessage = `"${item.name}" is now ${item.ispresent ? 'PRESENT' : 'ABSENT'}`;
      setTimeout(() => {
        this.successMessage = '';
      }, 3000);
    }
  }

  // Delete item
  deleteItem(id: number): void {
    const itemName = this.dataItems.find(item => item.id === id)?.name;
    this.dataService.deleteItem(id);
    this.loadItems();

    if (itemName) {
      this.successMessage = `Item "${itemName}" deleted successfully!`;
      setTimeout(() => {
        this.successMessage = '';
      }, 3000);
    }
  }



  // Get total count
  getTotalCount(): number {
    return this.dataService.getItemCount();
  }

}

