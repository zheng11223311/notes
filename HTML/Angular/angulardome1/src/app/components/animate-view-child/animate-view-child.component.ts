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
