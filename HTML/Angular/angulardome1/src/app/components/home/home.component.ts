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
