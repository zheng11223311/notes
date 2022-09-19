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
