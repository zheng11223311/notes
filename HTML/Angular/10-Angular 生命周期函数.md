**一.Angular 中的生命周期函数**

官方文档:

https://www.angular.cn/guide/lifecycle-hooks

生命周期函数通俗的讲就是组件的创建,组件的更新,组件销毁的时候会触发的一系列的方法.

当Angular 使用构造函数新建一个组件或指令后,就会按下面的顺序在特定的时刻调用这些生命周期钩子方法

**示例**

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

  // 生命周期函数执行顺序依次往下执行   constructor 不是生命周期函数
  constructor() {
    console.log('00--构造函数执行了---除了使用简单的值对局部变量进行初始化之外，生命都不应该做')
  }

  ngOnChanges(): void {
    console.log('01--ngOnChanges 执行了---当被绑定的输入属性的值发生了变化时调用（父子组件传值的时候会触发）')
  }
  ngOnInit(): void {
    console.log('02--ngOnInit 执行了---请求数据一般放在这里面')
  }
  ngDoCheck(): void {
    //写一些自定义的操作
    console.log('03--ngDoCheck 执行了---检测，并在发生Angular 无法或不愿意自己检测的变化时做出的反应')

    // if(this.name!==this.oldName){
    //   console.log(`你从${this.oldName}改成了${this.name}`);
    //   this.name == this.oldName
    // }else{
    //   this.counts=this.counts+1
    //   console.log('没有任何改变的调用了'+this.counts+'次');

    // }
  }
  ngAfterContentInit(): void {
    console.log('04--ngAfterContentInit 执行了---把内容投影进组件之后调用')

  }
  ngAfterContentChecked(): void {
    console.log('05--ngAfterContentChecked 执行了---每次完成被投影组件内容的变更检测之后调用')

  }
  ngAfterViewInit(): void {
    console.log('06--ngAfterViewInit 执行了---初始化完成组件视图及其子视图之后调用(DOM 操作放在这个里面)')

  }
  ngAfterViewChecked(): void {
    console.log('07--ngAfterViewChecked 执行了---每次做完组件视图和子视图的变更检测之后调用')

  }
  ngOnDestroy(): void {
    console.log('08--ngOnDestroy 执行了---组件销毁')
  }

}

```

