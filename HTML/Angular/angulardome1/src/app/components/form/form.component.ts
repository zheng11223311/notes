import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent implements OnInit {

  public peopleInfo: any = {
    username: '',
    sex: '男',
    cityList: ['北京', '深圳', '上海', '杭州', '苏州'],
    city: '北京',
    hobby: [
      {
        title: '吃饭',
        checked: false,
      },
      {
        title: '碎觉',
        checked: true,
      },
      {
        title: '敲代码',
        checked: false,
      },
    ],
    mark: '',
  }

  doSubmit() {
    console.log(this.peopleInfo);

  }

  constructor() { }

  ngOnInit(): void {
  }

}
