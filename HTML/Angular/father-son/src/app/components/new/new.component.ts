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
