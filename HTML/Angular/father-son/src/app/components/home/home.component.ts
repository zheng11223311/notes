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
