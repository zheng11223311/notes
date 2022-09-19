**Angular 服务以及事项数据本地localStorage 储存**

**一。创建服务命令**

https://github.com/angular/angular-cli

```
ng g service my-new-service
创建到指定目录下面
ng g service services/storage
```

**三。app.module.ts 里面引入创建的服务**

```ts
//引入服务
import { StorageService } from './services/storage.service'
```

**配置服务**

```ts
 providers: [StorageService],  //配置服务
```

**angulardome1\src\app\app.component.html**

```html
<div class="toolbar" role="banner">
  <app-search></app-search>
</div>
```

**angulardome1\src\app\app.module.ts**

**引入并配置文件**

```ts
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
// 引入双向数据绑定
import { FormsModule } from '@angular/forms'

import { AppComponent } from './app.component';
import { NewComponent } from './components/new/new.component';
import { HomeComponent } from './components/home/home.component';
import { FormComponent } from './components/form/form.component';
import { SearchComponent } from './components/search/search.component';
import { TodolistComponent } from './components/todolist/todolist.component';

//引入服务
import { StorageService } from './services/storage.service'

@NgModule({
  declarations: [
    AppComponent,
    NewComponent,
    HomeComponent,
    FormComponent,
    SearchComponent,
    TodolistComponent
  ],
  imports: [
    BrowserModule,
    FormsModule   //引入FormsModule 模块
  ],
  providers: [StorageService],  //配置服务
  bootstrap: [AppComponent]
})
export class AppModule { }

```

**angulardome1\src\app\services\storage.service.ts**

```ts
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class StorageService {
  // 设置自定义属性
  set(key: string, value: any) {
    console.log(localStorage);
    // 使用locallocalStorage 本地储存
    localStorage.setItem(key, JSON.stringify(value))
  }
  get(key: string) {
    return JSON.parse(localStorage.getItem(key) || '[]')
  }
  remove(key: string) {

    localStorage.removeItem(key)
  }
  re() {

  }
  constructor() { }
}

```

**search 组件使用服务组件**

**angulardome1\src\app\components\search\search.component.ts**

```ts
import { Component, OnInit } from '@angular/core';
import { from } from 'rxjs';

//引入服务
import { StorageService } from '../../services/storage.service'

/* 实例化,可以使用以下方法，但不推荐
var storage = new StorageService()
console.log(storage);
 */



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

      //本地储存数据
      this.storage.set('searchlist', this.historyList)
    }

    this.keyword = ''
  }

  deleteHistory(key: any) {
    this.historyList.splice(key, 1)
  }

  // 官方推荐使用服务
  constructor(public storage: StorageService) {
    let s = this.storage
    console.log(s);
    // 这里的方法都是在StorageService 组件面自定义的方法
    // constructor: class StorageService
    // get: ƒ get(key)
    // remove: ƒ remove(key)
    // set: ƒ set(key, value)

  }

  ngOnInit(): void {
    //刷新会执行这个函数
    // alert('被执行了')
    //取出本地数据
    var searchlist = this.storage.get('searchlist')
    if (searchlist) {
      this.historyList = searchlist
    }
  }

}

```

