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
