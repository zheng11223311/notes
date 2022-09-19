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
