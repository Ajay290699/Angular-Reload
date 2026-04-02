$content = @'
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * -->
<!-- * * * * * * * * * * * The content below * * * * * * * * * * * -->
<!-- * * * * * * * * * * is only a placeholder * * * * * * * * * * -->
<!-- * * * * * * * * * * and can be replaced. * * * * * * * * * * * -->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * -->
<!-- * * * * * * * * * Delete the template below * * * * * * * * * * -->
<!-- * * * * * * * to get started with your project! * * * * * * * * -->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * -->

<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  :host {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
    display: block;
    padding: 20px;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    background: white;
    border-radius: 12px;
    box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
    padding: 40px;
  }

  h1 {
    color: #333;
    font-size: 2.5rem;
    margin-bottom: 10px;
    text-align: center;
  }

  h2 {
    color: #667eea;
    font-size: 1.8rem;
    margin-top: 30px;
    margin-bottom: 15px;
    border-bottom: 3px solid #667eea;
    padding-bottom: 10px;
  }

  h3 {
    color: #333;
    font-size: 1.2rem;
    margin-top: 20px;
    margin-bottom: 10px;
  }

  h4 {
    color: #333;
    font-size: 1rem;
    margin: 10px 0 5px 0;
  }

  p {
    color: #666;
    line-height: 1.6;
    margin: 10px 0;
  }

  .alert {
    padding: 15px 20px;
    border-radius: 6px;
    margin-bottom: 20px;
    animation: slideIn 0.3s ease-in;
  }

  @keyframes slideIn {
    from {
      opacity: 0;
      transform: translateY(-10px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .alert-success {
    background-color: #d4edda;
    color: #155724;
    border: 1px solid #c3e6cb;
  }

  .form-section {
    background: #f8f9fa;
    padding: 25px;
    border-radius: 8px;
    margin-bottom: 30px;
    border-left: 5px solid #667eea;
  }

  .form-group {
    margin-bottom: 15px;
  }

  label {
    display: block;
    margin-bottom: 8px;
    color: #333;
    font-weight: 600;
    font-size: 0.95rem;
  }

  input, textarea {
    width: 100%;
    padding: 12px 15px;
    border: 2px solid #ddd;
    border-radius: 6px;
    font-size: 1rem;
    font-family: inherit;
    transition: all 0.3s ease;
  }

  input:focus, textarea:focus {
    outline: none;
    border-color: #667eea;
    box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
  }

  textarea {
    resize: vertical;
  }

  .btn {
    padding: 12px 24px;
    border: none;
    border-radius: 6px;
    font-size: 1rem;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    display: inline-block;
  }

  .btn-primary {
    background-color: #667eea;
    color: white;
  }

  .btn-primary:hover {
    background-color: #556cd6;
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
  }

  .btn-danger {
    background-color: #ff6b6b;
    color: white;
    padding: 8px 16px;
    font-size: 0.9rem;
  }

  .btn-danger:hover {
    background-color: #ff5252;
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(255, 107, 107, 0.3);
  }

  .btn-warning {
    background-color: #ffc107;
    color: #333;
    padding: 12px 24px;
  }

  .btn-warning:hover {
    background-color: #ffb300;
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(255, 193, 7, 0.3);
  }

  .stats-section {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    padding: 20px 25px;
    border-radius: 8px;
    margin-bottom: 30px;
    color: white;
  }

  .stats-section h3 {
    color: white;
    margin: 0;
  }

  .badge {
    display: inline-block;
    background-color: rgba(255, 255, 255, 0.3);
    color: white;
    padding: 5px 12px;
    border-radius: 20px;
    font-weight: bold;
    margin-left: 10px;
  }

  .list-section {
    margin-bottom: 30px;
  }

  .empty-state {
    text-align: center;
    padding: 60px 20px;
    background-color: #f8f9fa;
    border-radius: 8px;
    border: 2px dashed #ddd;
  }

  .empty-state p {
    color: #999;
    font-size: 1.1rem;
  }

  .items-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 20px;
    margin-top: 20px;
  }

  .item-card {
    background: white;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    padding: 20px;
    transition: all 0.3s ease;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
  }

  .item-card:hover {
    border-color: #667eea;
    box-shadow: 0 5px 20px rgba(102, 126, 234, 0.15);
    transform: translateY(-5px);
  }

  .item-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 10px;
  }

  .item-header h4 {
    margin: 0;
    color: #333;
  }

  .item-id {
    background-color: #667eea;
    color: white;
    padding: 4px 12px;
    border-radius: 20px;
    font-size: 0.85rem;
    font-weight: bold;
  }

  .item-description {
    color: #666;
    margin: 12px 0;
    line-height: 1.5;
    font-size: 0.95rem;
  }

  .item-date {
    font-size: 0.85rem;
    color: #999;
    margin: 10px 0 15px 0;
  }

  .action-section {
    text-align: center;
    padding: 20px;
    background-color: #fff3cd;
    border-radius: 8px;
    margin-bottom: 20px;
  }

  .info-section {
    background: #f0f4ff;
    padding: 25px;
    border-radius: 8px;
    border-left: 5px solid #667eea;
    margin-top: 30px;
  }

  .info-section h3 {
    color: #667eea;
    margin-top: 0;
  }

  .info-section ul {
    list-style-position: inside;
    color: #555;
    line-height: 1.8;
  }

  .info-section li {
    margin-bottom: 10px;
  }

  .info-section strong {
    color: #667eea;
  }

  @media (max-width: 768px) {
    .container {
      padding: 20px;
    }

    h1 {
      font-size: 1.8rem;
    }

    .items-grid {
      grid-template-columns: 1fr;
    }
  }
</style>

<div class="container">
  <h1>{{ title }} - Local Storage Cache Manager</h1>
  
  <div *ngIf="successMessage" class="alert alert-success">
    {{ successMessage }}
  </div>

  <div class="form-section">
    <h2>Add New Item</h2>
    <form (ngSubmit)="addItem()">
      <div class="form-group">
        <label for="name">Item Name:</label>
        <input type="text" id="name" [(ngModel)]="newItemName" name="name" placeholder="Enter item name" required />
      </div>

      <div class="form-group">
        <label for="description">Item Description:</label>
        <textarea id="description" [(ngModel)]="newItemDescription" name="description" placeholder="Enter item description" rows="4" required></textarea>
      </div>

      <button type="submit" class="btn btn-primary">Add Item</button>
    </form>
  </div>

  <div class="stats-section">
    <h3>Total Items Stored: <span class="badge">{{ getTotalCount() }}</span></h3>
  </div>

  <div class="list-section">
    <h2>Stored Items <span class="badge">{{ dataItems.length }}</span></h2>
    
    <div *ngIf="dataItems.length === 0" class="empty-state">
      <p>No items stored yet. Add a new item to get started!</p>
    </div>

    <div *ngIf="dataItems.length > 0" class="items-grid">
      <div *ngFor="let item of dataItems" class="item-card">
        <div class="item-header">
          <h4>{{ item.name }}</h4>
          <span class="item-id">#{{ item.id }}</span>
        </div>
        <p class="item-description">{{ item.description }}</p>
        <p class="item-date">Created: {{ item.createdAt }}</p>
        <button type="button" class="btn btn-danger" (click)="deleteItem(item.id)">Delete</button>
      </div>
    </div>
  </div>

  <div class="action-section" *ngIf="dataItems.length > 0">
    <button type="button" class="btn btn-warning" (click)="clearAllItems()">Clear All Items</button>
  </div>

  <div class="info-section">
    <h3>How This Works:</h3>
    <ul>
      <li>All data is stored in your browser's <strong>Local Storage</strong></li>
      <li>Data persists across page refreshes and browser restarts</li>
      <li>After building and deploying to server, previously added items will still be displayed</li>
      <li>Each item has a unique ID, name, description, and timestamp</li>
      <li><strong>Test Steps:</strong>
        <ul>
          <li>1. Add some items and note them</li>
          <li>2. Run "ng build" to create a production build</li>
          <li>3. Deploy the build to your server</li>
          <li>4. Visit the deployed URL and verify items are still there</li>
          <li>5. Add more items on the server</li>
          <li>6. Rebuild and redeploy again</li>
          <li>7. Verify new items persist on the redeployed version</li>
        </ul>
      </li>
    </ul>
  </div>
</div>

<router-outlet></router-outlet>
'@

Set-Content -Path "c:\Users\Solv-It\Desktop\Angular Reload cahce Project\Angular-Reload\src\app\app.component.html" -Value $content -Encoding UTF8
Write-Host "File rebuilt successfully!"
