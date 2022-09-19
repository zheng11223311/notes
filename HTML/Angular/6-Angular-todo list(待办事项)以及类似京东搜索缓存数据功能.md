**京东搜索数据缓存案例**

**angulardome1\src\app\app.component.html**

```html
<div class="toolbar" role="banner">
  <app-search></app-search>

</div>
```

**angulardome1\src\app\components\search\search.component.html**

```html
<div class="search">
    <input type="text" [(ngModel)]="keyword"><button (click)="doSearch()">搜索</button>
    <hr>
    <ul>
        <li>列表</li>
        <li *ngFor="let item of historyList;let key=index">{{item}}---<button (click)="deleteHistory(key)">X</button></li>
    </ul>

</div>
```

**angulardome1\src\app\components\search\search.component.ts**

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {

  public keyword: string = ''
  public historyList: any[] = []

  doSearch() {
    // console.log(this.keyword)
    //如果不存在值
    if (this.historyList.indexOf(this.keyword) == -1) {
      this.historyList.push(this.keyword)
    }

    this.keyword = ''
  }

  deleteHistory(key: any) {
    this.historyList.splice(key, 1)
  }

  constructor() { }

  ngOnInit(): void {
  }

}

```

**angulardome1\src\app\components\search\search.component.css**

```css
.search {
  width: 400px;
  height: 200px;
  margin: 20px auto;
}

.search input {
  margin-bottom: 20px;
  width: 300px;
  height: 32px;
}

.search button {
  height: 32px;
  width: 80px;
}

```

**todolist 案例**

**angulardome1\src\app\app.component.html**

```html
<div class="toolbar" role="banner">

  <app-todolist></app-todolist>

</div>
```

**angulardome1\src\app\components\todolist\todolist.component.html**

```html
<h2>ToDoList</h2>
<div class="todolist">
    <input type="text" [(ngModel)]="keyword" (keyup)="doAdd($event)">
    <hr>
    <h3>待办事项</h3>
    <ul>
        <li *ngFor="let item of todolist;let key=index" [hidden]="item.status==1">
            <input type="checkbox" [(ngModel)]="item.status">{{item.title}}---- <button (click)="deleteData(key)">X</button>
        </li>
    </ul>

    <h3>已完成事项</h3>
    <ul>
        <li *ngFor="let item of todolist;let key=index" [hidden]="item.status==0">
            <input type="checkbox" [(ngModel)]="item.status">{{item.title}}---- <button (click)="deleteData(key)">X</button>
        </li>
    </ul>
</div>
<!-- 不允许多个命令同时使用 比如ngFor 和ngIf 不能一起使用-->
```

**angulardome1\src\app\components\todolist\todolist.component.ts**

```tsx
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-todolist',
  templateUrl: './todolist.component.html',
  styleUrls: ['./todolist.component.css']
})
export class TodolistComponent implements OnInit {

  public keyword: string = ''

  public todolist: any[] = []


  doAdd(e: any) {
    if (e.keyCode == 13) {
      this.todolist.push({
        title: this.keyword,
        status: 0
      })
      this.keyword = ''

    }
  }

  deleteData(key: any) {
    this.todolist.splice(key, 1)
  }

  deleteHistory(key: any) {
    this.todolist.splice(key, 1)
  }
  constructor() { }

  ngOnInit(): void {
  }

}h2 {
  text-align: center;
}

.todolist {
  width: 400px;
  height: 200px;
  margin: 20px auto;
}

.todolist input[type='text'] {
  margin-bottom: 20px;
  width: 300px;
  height: 32px;
}


```

**angulardome1\src\app\components\todolist\todolist.component.css**

```css
h2 {
  text-align: center;
}

.todolist {
  width: 400px;
  height: 200px;
  margin: 20px auto;
}

.todolist input[type='text'] {
  margin-bottom: 20px;
  width: 300px;
  height: 32px;
}

```

