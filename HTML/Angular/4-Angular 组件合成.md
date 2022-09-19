**理解**

1.引入图片

2.循环数据的索引

3.条件判断语句 *ngIf

4.条件判断语句 *ngSwitch

5.属性[ngClass],[ngStyle]

6.管道（例如：格式化时间）

7.事件

8.表单事件 事件对象

9.双向数据绑定--MVVM 只针对表单

其他管道

http://bbs.itying.com/topic/5bf519657e9f5911d41f2a34

**示例**

**src/app/app.component.html**

```html
<div class="toolbar" role="banner">
  <app-home></app-home>

</div>

```

**angulardome1\src\app\components\home\home.component.css**

```css
.red {
  color: red;
}

.blue {
  color: blue;
}

.orange {
  color: orange;
}

```

**angulardome1\src\app\app.module.ts**

```tsx
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
// 引入双向数据绑定
import { FormsModule } from '@angular/forms'

import { AppComponent } from './app.component';
import { NewComponent } from './components/new/new.component';
import { HomeComponent } from './components/home/home.component';

@NgModule({
  declarations: [
    AppComponent,
    NewComponent,
    HomeComponent
  ],
  imports: [
    BrowserModule,
    FormsModule   //引入FormsModule 模块
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

```

**angulardome1\src\app\components\home\home.component.html**

```html
<h1>这是home 组件</h1>

<h1>引入图片</h1>
<!-- assets  静态资源 -->
<img src="assets/images/526442733.jpg" alt="" srcset="">
<img [src]="picUrl" alt="" srcset="">

<h1>循环数据的索引</h1>
<ul>
    <!-- let 变量=index -->
    <li *ngFor="let item of arr;let key1=index;">
        {{key1}}----{{item}}
    </li>
</ul>

<h1>条件判断语句 *ngIf</h1>

<img *ngIf="flag" src="assets/images/526442733.jpg" alt=""/>
<img *ngIf="!flag" src="assets/images/531357971.jpg" alt=""/>

<h1>条件判断语句 *ngSwitch</h1>
<span [ngSwitch]="orderStatus">
<p *ngSwitchCase="1">
    已经支付
</p>
<p *ngSwitchCase="2">
    已经支付并且确认订单
</p>
<p *ngSwitchCase="3">
    已经发货
</p>
<p *ngSwitchCase="4">
    已经收货
</p>
<p *ngSwitchDefault>
    无效订单
</p>
</span>


<h1>属性[ngClass],[ngStyle]</h1>
<div class="blue">
    尽量不要用DOM 操作
</div>
<div [ngClass]="{'orange': true,'blue': false}">
    尽量不要用DOM 操作
</div>
<div [ngClass]="{'blue': !flag,'red':flag}">
    尽量不要用DOM 操作
</div>

<p style="color: aqua;">我是一个p 标签</p>
<p [ngStyle]="{color:'skyblue'}">我是一个p 标签skyblue</p>
<p [ngStyle]="{'color':attr}">不带引号的是变量</p>

<h1>管道（例如：格式化时间）</h1>
{{today|date:'yyyy-MM-dd HH:mm ss'}}

<h1>事件</h1>
<button (click)="run()">执行事件</button>
<button (click)="getDate()">执行方法获取数据</button>
<button (click)="setDate()">执行方法改变属性里面的数据</button>

<h1>表单事件 事件对象</h1>
<!-- 小写keydown 不是keyDown -->
<input type="text" (keydown)='keyDown($event)'>

<h1>双向数据绑定--MVVM 只针对表单</h1>
<!-- [表示动态]，()表示事件 -->
<input type="text" [(ngModel)]="keywords" name=''/>
<input type="text" [(ngModel)]="keywords" name=''/>
{{keywords}}

```

**angulardome1\src\app\components\home\home.component.ts**

```tsx
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  public title: string = '我是一个title'

  public picUrl = 'https://img0.baidu.com/it/u=3101694723,748884042&fm=26&fmt=auto&gp=0.jpg'

  public arr = [123, 43, 'ada', '大家看']

  public flag = false

  public orderStatus: number = 1

  public attr: string = 'red'

  public today: any = new Date()

  public keywords:any


  run() {
    alert('执行事件')
  }

  getDate() {
    alert(this.title)
  }

  setDate() {
    this.title = '我是一个改变后的title'
    alert(this.title)
  }

  keyDown(e: any) {
    console.log(e);
    console.log(e.keyCode);
    if (e.keyCode === 13) {
      alert('keydown 按下了回车键')
    }

  }


  constructor() {
    console.log(this.today);

  }

  ngOnInit(): void {
  }

}

```

