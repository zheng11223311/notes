**1.模板里面绑定数据**

**2.模板里面绑定属性**

**3.模板里面绑定HTML**

**4.模板里面允许做简单的运算**

**5.模板里面的数据循环**

**示例：**

**src/app/app.component.html**

```html

<!-- Toolbar -->
<div class="toolbar" role="banner">
 <app-new></app-new>
</div>
```

**src/app/components/new/new.component.html**

```html
<h1>模板里面绑定数据</h1>
<h1>{{title}}</h1>
<h1>{{msg}}</h1>
<h1>{{username}}</h1>
<h1>{{userinfo.username}}</h1>
<h1>{{userinfo.age}}</h1>

<h1>{{message}}</h1>

<h1>模板里面绑定属性</h1>
<div [title]="msg">
    张三
</div>

<h1>模板里面绑定HTML</h1>

<div>
    <!-- 没有解析html -->
    {{content}}
</div>
<!-- 解析标签 -->
<h1 [innerHTML]='content'></h1>

<h1>模板里面允许做简单的运算</h1>
1+2={{1+2}}

<h1>模板里面的数据循环</h1>
<ul>
    <li *ngFor="let item of arr">{{item}}</li>
</ul>


<hr>
```

**src/app/components/new/new.component.ts**

```tsx
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-new',
  templateUrl: './new.component.html',
  styleUrls: ['./new.component.css']
})
export class NewComponent implements OnInit {

  public title = '我是新闻new 标题'
  public msg = '我是新闻new 的msg'
  username: string = '张三'
  public userinfo: any = {
    username: '李四',
    age: 20
  }

  public message: any

  public content = '<h2>我是一个html 标签</h2>'

  public arr = [1111, 2222, 33333, '哈哈哈']
  /* 
      声明属性的几种方式：
      public   公有*（默认）   可以在这个类里面使用，也可以在类外面使用
      protected  保护类型       他只有在当前类和他的子类里面可以访问
      private     私有          再有在当前类里面才可以访问这个属性
  */
  constructor() {
    this.message = '这是给属性赋值---（改变属性的值）'
  }

  ngOnInit(): void {
  }

}

```

