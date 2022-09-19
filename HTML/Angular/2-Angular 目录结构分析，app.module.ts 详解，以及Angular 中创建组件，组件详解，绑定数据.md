**一.目录结构**

![img](https://img2018.cnblogs.com/blog/1100100/201905/1100100-20190517154934206-582021773.png)

**SRC/APP/APP.MODULE.TS 文件**

```tsx
//这个文件是Angular 模块，告诉Angular 如何组装应用

//Angular 核心模块
import { NgModule } from '@angular/core';
//BrowserModule ，浏览器解析的模块
import { BrowserModule } from '@angular/platform-browser';
//根组件
import { AppComponent } from './app.component';

//@NgModule 装饰器，@NgModule 接收一个元素据对象昂，告诉Angular 如何编译和启动应用
@NgModule({
  declarations: [     //配置当前项目运行的组件
    AppComponent
  ],
  imports: [    //配置当前模块运行依赖的其他模块
    BrowserModule
  ],
  providers: [],    //配置项目所需的服务
  bootstrap: [AppComponent]
  //指定应用注册的主视图（称为根组件）通过引导根组件AppModule
  //来启动应用，这里一般写的是跟组件
})

//模块不需要导出任何东西，应为其他组件不需要导入根组件
export class AppModule { }

```

**SRC/APP/APP.COMPONENT.TS 文件**

```ts
// 引入核心模块里面的Component
import { Component } from '@angular/core';

@Component({
  selector: 'app-root',   //使用这个组件的名称
  templateUrl: './app.component.html',  //html
  styleUrls: ['./app.component.css']  //css
})
export class AppComponent {
  title = 'angulardemo';    //定义属性 
}

```

1.自定义组件

http://cli.angular.io/

2.查看要要创建的东西

```
ng g
```

**3.创建组件：**

在app 文件夹下创建components/header 目录

```
ng g component components/header（要创建的目录）
或者简写
ng g c 要创建的目录
```

命令创建的组件在APP.MODULE.TS 文件里面自动引入

```ts
import { HeaderComponent } from './components/header/header.component';
```

**4.使用组件**

在创建的header 文件夹下的header.component.ts 文件

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',	//在根组件里使用标签
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}
```

**header.component.html** 

```html
<h1>新闻组件</h1>
```

**SRC/APP/APP.MODULE.TS 文件 使用 header 组件**

```ts
<app-header></app-header>

<!-- Toolbar -->
<div class="toolbar" role="banner">
  hello angular

</div>
```

再次在app 文件夹下创建components/home 目录，步骤同上

再次在app 文件夹下创建components/tou 目录，步骤同上

**在home 组件里面使用tou 组件**

```html
<h1>主页组件</h1>
<app-tou></app-tou>
<hr>

```

**tou  组件**

```html
<h2>我是主页组件 里面的tou 组件</h2>
```

**没有其他步骤，简单使用即可**

**5.数据绑定**

**header 文件夹下的header.component.ts 文件**

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  title = '我是header 组件'		//要绑定的数据
  constructor() { }

  ngOnInit(): void {
  }

}
```

**使用数据**

**header 文件夹下的header.component.html 文件**

```html
<h1>新闻组件</h1>
<h2>绑定的数据是：{{title}}</h2>
<hr>
```

