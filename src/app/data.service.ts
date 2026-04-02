import { Injectable } from '@angular/core';

export interface DataItem {
    id: number;
    name: string;
    ispresent: boolean;
    isDefault?: boolean;
    addedAt: string;
}

@Injectable({
    providedIn: 'root'
})
export class DataService {
    private storageKey = 'cachedDataArray';

    // DEFAULT STATIC DATA - Change this array and redeploy to add new items
    private defaultData: Omit<DataItem, 'id' | 'addedAt'>[] = [
        { name: 'ajay', ispresent: true, isDefault: true },
        { name: 'dhruvil', ispresent: true, isDefault: true },
        { name: 'dinesh', ispresent: true, isDefault: true },
    ];

    constructor() {
        this.initializeData();
    }

    // Initialize by merging default data with localStorage
    private initializeData(): void {
        const storedData = this.getItems();

        // Add any new default items that aren't in localStorage
        this.defaultData.forEach(defaultItem => {
            const exists = storedData.some(item => item.name === defaultItem.name && item.isDefault);
            if (!exists) {
                const newItem: DataItem = {
                    id: storedData.length > 0 ? Math.max(...storedData.map(i => i.id)) + 1 : 1,
                    name: defaultItem.name,
                    ispresent: defaultItem.ispresent,
                    isDefault: true,
                    addedAt: new Date().toLocaleString()
                };
                storedData.push(newItem);
            }
        });

        localStorage.setItem(this.storageKey, JSON.stringify(storedData));
    }

    // Get all items from local storage
    getItems(): DataItem[] {
        const data = localStorage.getItem(this.storageKey);
        return data ? JSON.parse(data) : [];
    }

    // Add new item dynamically
    addItem(item: { name: string; ispresent: boolean }): DataItem {
        const items = this.getItems();

        const newItem: DataItem = {
            id: items.length > 0 ? Math.max(...items.map(i => i.id)) + 1 : 1,
            name: item.name,
            ispresent: item.ispresent,
            isDefault: false,
            addedAt: new Date().toLocaleString()
        };

        items.push(newItem);
        localStorage.setItem(this.storageKey, JSON.stringify(items));

        return newItem;
    }

    // Toggle ispresent status
    togglePresent(id: number): void {
        let items = this.getItems();
        const item = items.find(i => i.id === id);
        if (item) {
            item.ispresent = !item.ispresent;
            localStorage.setItem(this.storageKey, JSON.stringify(items));
        }
    }

    // Delete item from local storage
    deleteItem(id: number): void {
        let items = this.getItems();
        items = items.filter(item => item.id !== id);
        localStorage.setItem(this.storageKey, JSON.stringify(items));
    }

    // Clear all items
    clearAll(): void {
        localStorage.removeItem(this.storageKey);
    }

    // Get count of items
    getItemCount(): number {
        return this.getItems().length;
    }

    // Get default data
    getDefaultData(): Omit<DataItem, 'id' | 'addedAt'>[] {
        return this.defaultData;
    }
}

