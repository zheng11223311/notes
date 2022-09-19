**Angular 父子组件之间以及组件之间的通信**

**一。父组件给子组件传值-@input**

父组件不仅可以给子组件传递简单的数据，还可以把自己的方法以及整个父子组件传递给子组件

**1.父组件调用子组件的时候传入数据**

```html
<app-header [msg]='msg'></app-header>
```

**2.子组件引入Input 模块**

```ts
import { Component,OnInit,Input} from '@angular/core'
```

**3.子组件 @Input 接收父组件传过来的数据**

```ts
export class HeaderComponent implements OnInit{
  @Input() msg:string
}
```

**示例**

**father-son\src\app\app.component.html**

```html
<app-home></app-home>
```

**father-son\src\app\components\home\home.component.html**

```html
<!-- 传递给子组件数据title 和run 方法 -->
<!-- [home]='this' 将父组件传递给子组件 -->
<app-header [title]='title' [run]='run' [home]='this'></app-header>

<hr>

<div>我是首页组件</div>
```

**father-son\src\app\components\home\home.component.ts**

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {


  public title: string = '首页组件的标题'

  run() {
    alert('我是首页的run 方法')
  }

  constructor() { }

  ngOnInit(): void {
  }

}

```

**father-son\src\app\components\header\header.component.html**

```html
<header>我是一个头部组件</header>
<!-- 使用父组件传递过来的信息 -->
{{title}}

<button (click)='getParentMsg()'>子组件里面获取父组件传来的msg</button>
<button (click)='getParentRun()'>子组件里面执行父组件传来的run  方法</button>
```

**father-son\src\app\components\header\header.component.ts**

```ts
//子组件引入Input 装饰器
import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  //接收父组件传递的title
  @Input() title: any

  //接收父组件传递的run  方法
  @Input() run: any

  //接收整个父组件
  @Input() home: any

  getParentMsg() {
    // 获取父组件的数据
    alert(this.title)
  }

  getParentRun() {
    // 执行父组件的run  方法
    // this.run()

    //从接收到的整个父组件里面使用方法和属性
    alert(this.home.title)
    this.home.run()
  }

  constructor() { }

  ngOnInit(): void {
  }

}

```

**2.使用Output 子组件使用父组件的方法** 

**1.子组件引入Output 和EventEmitter**

```ts
import { Component, OnInit,Output,EventEmitter} from '@angular/core';
```

**2.子组件中实例化EventEmitter**

```ts
@Output() private outer=new EventEmitter<string>()//用EventEmitter 和output 装饰器配合使用<string> 指定类型变量
```

**3.子组件通过 EventEmitter 对象 outer 示例广播数据**

```ts
SendParent(){	this.outer.emit('msg form child')}
```

**4.父组件调用子组件的时候,定义接收事件,outer 就是子组件的EventEmitter 对象outer **

```html
<app-header outer='runParent($event)'></app-header>
```

**5.父组件接收到数据会调用自己的runParent 方法,这个时候就能拿到子组件的数据**

**示例**

father-son\src\app\app.component.html

```html
<app-new></app-new>
```

father-son\src\app\components\new\new.component.html

```html
<app-footer  (outer)='getChildMsg($event)'></app-footer>

<hr>
<div> 我是一个新闻组件</div>
```

father-son\src\app\components\new\new.component.ts

```ts
import { Component, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-new',
  templateUrl: './new.component.html',
  styleUrls: ['./new.component.css']
})
export class NewComponent implements OnInit {

  @ViewChild('footer') footer: any

  getChildMsg(e: any) {
    console.log(e);

    alert('我是父组件的方法')
  }

  constructor() { }

  ngOnInit(): void {
  }

}

```

father-son\src\app\components\footer\footer.component.html

```html
<h2>我是footer 子组件</h2>

<button (click)="sendParent()">通过@Output 给父组件广播数据 </button>
```

father-son\src\app\components\footer\footer.component.ts

```ts
import { Component, OnInit, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {

  @Output() private outer = new EventEmitter()


  sendParent() {
    this.outer.emit('我是子组件的数据')
  }

  constructor() { }

  ngOnInit(): void {
  }

}

```



**二。子组件传递数据给父组件**

**使用ViewChild**

**father-son\src\app\app.component.html**

```html
<app-new></app-new>
```

**father-son\src\app\components\new\new.component.html**

```html
<app-footer #footer></app-footer>

<hr>
<div> 我是一个新闻组件</div>

<button (click)='getChildMsg()'>获取子组件的msg</button>
<button (click)='getChildRun()'>执行子组件的run 方法</button>
```

**father-son\src\app\components\new\new.component.ts**

```ts
import { Component, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-new',
  templateUrl: './new.component.html',
  styleUrls: ['./new.component.css']
})
export class NewComponent implements OnInit {

  @ViewChild('footer') footer: any

  getChildMsg() {
    //获取子组件的数据
    alert(this.footer.msg)
  }

  getChildRun() {
    //执行子组件的run 方法
    this.footer.run()
  }

  constructor() { }

  ngOnInit(): void {
  }

}
```

**father-son\src\app\components\footer\footer.component.html**

```html
<h2>我是footer 子组件</h2>
```

**father-son\src\app\components\footer\footer.component.ts**

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {


  public msg = '我是子组件的一个msg'

  run() {
    alert('我是子组件得一个run 方法')
  }

  constructor() { }

  ngOnInit(): void {
  }

}
```

**三.兄弟组件通信方式**

1.使用服务

2.使用localSotrage

