**Angular 中的DOM 操作以及@ViewChild，Angular 执行css3 动画**

**1.@ViewChild获取节点**

ViewChild 获取DOM 节点

 1.模板中给DOM 起一个名字，注意是：#box

```html
  <div  #box></div>
```

 2.在业务逻辑里面引入ViewChild

```ts
 import { Component, OnInit, ViewChild } from '@angular/core';
```

 3.写在类面 

```ts
@ViewChild('box') myBox: any
```

 4.ngAfterViewInit 生命周期函数里面获取DOM

```ts
 this.myBox.nativeElement
```

**示例**

**angulardome1\src\app\app.component.html**

```html
<div class="toolbar" role="banner">
  <app-animate-view-child></app-animate-view-child>

</div>
```

**angulardome1\src\app\components\animate-view-child\animate-view-child.component.html**

```html
<h2>这是animate 组件--DOM 操作演示</h2>


<!-- 定义节点 #box -->
<div  #box>
    这是
</div>
<app-animate-header #header></app-animate-header>

```

**angulardome1\src\app\components\animate-header\animate-header.component.html**

```html
<h1>我是一个头部组件</h1>
```

**angulardome1\src\app\components\animate-header\animate-header.component.ts**

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-animate-header',
  templateUrl: './animate-header.component.html',
  styleUrls: ['./animate-header.component.css']
})
export class AnimateHeaderComponent implements OnInit {

  run() {
    console.log('我是子组件里面的run 方法');

  }

  constructor() { }

  ngOnInit(): void {
  }

}

```

**angulardome1\src\app\components\animate-view-child\animate-view-child.component.ts**

```ts
/* 
  ViewChild 获取DOM 节点

  1.模板中给DOM 起一个名字
  <div  #box></div>

  2.在业务逻辑里面引入ViewChild
  import { Component, OnInit, ViewChild } from '@angular/core';

  3.写在类类面  @ViewChild('box') myBox: any

  4.ngAfterViewInit 生命周期函数里面获取DOM
  this.myBox.nativeElement

*/

// 使用时自动导入 ViewChild 
import { Component, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-animate-view-child',
  templateUrl: './animate-view-child.component.html',
  styleUrls: ['./animate-view-child.component.css']
})
export class AnimateViewChildComponent implements OnInit {

  // 获取DOM 节点 ，注意是写box 不是#box,赋值给myBox
  @ViewChild('box') myBox: any    //类型准确的是ElementRef

  //获取一个组件
  @ViewChild('header') myHeader: any

  constructor() { }

  // 生命周期
  ngOnInit(): void {
    //ngOnInit  组件和指令初始化完成， 并不是真正的DOM 加载完成，会有获取不到节点的情况


  }

  // 视图加载完成以后触发的方法  DOM 加载完成（建议把DOM 操作放在这个里面）
  ngAfterViewInit(): void {
    // console.log(document.querySelector('#box'));
    console.log(this.myBox);
    this.myBox.nativeElement.style.width = '100px'
    this.myBox.nativeElement.style.height = '100px'
    this.myBox.nativeElement.style.background = 'orange'


    //调用子组件里面的方法
    this.myHeader.run()

  }

}


```

**侧边栏动画**

**angulardome1\src\app\app.component.html**

```html
<div class="toolbar" role="banner">
  <app-animate-transition></app-animate-transition>

</div>

```

**angulardome1\src\app\components\animate-transition\animate-transition.component.html**

```html
<div class="content">
    内容区域
    <button (click)="showAside()">弹出侧边栏</button>
    <button (click)="hiddenAside()">隐藏侧边栏</button>
</div>

<aside id="aside">
    这是一个侧边栏
</aside>
```

**angulardome1\src\app\components\animate-transition\animate-transition.component.css**

```css
#aside {
  width: 200px;
  height: 100%;
  position: absolute;
  right: 0;
  top: 0;
  background-color: black;
  color: #fff;
  transform: translate(100%, 0);
  transition: all 2s;
}

```

**angulardome1\src\styles.css**

```css
/* 公共（全局）样式 */
* {
  margin: 0;
  padding: 0;
}

ul,
ol {
  list-style: none;
}

body {
  width: 100%;
  overflow-x: hidden;
}
```

**angulardome1\src\app\components\animate-transition\animate-transition.component.ts**

```ts
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-animate-transition',
  templateUrl: './animate-transition.component.html',
  styleUrls: ['./animate-transition.component.css']
})
export class AnimateTransitionComponent implements OnInit {

  showAside() {
    //获取节点
    var aside: any = document.getElementById('aside')
    console.log(aside);

    aside.style.transform = 'translate(0,0)'
  }
  hiddenAside() {
    //获取节点
    var aside: any = document.getElementById('aside')
    console.log(aside);

    aside.style.transform = 'translate(100%,0)'
  }

  constructor() { }

  ngOnInit(): void {
  }

}

```

