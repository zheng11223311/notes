import { Component, OnInit } from '@angular/core';

//引入http 提供的方法
import { HttpClient } from '@angular/common/http'

@Component({
  selector: 'app-news',
  templateUrl: './news.component.html',
  styleUrls: ['./news.component.css']
})
export class NewsComponent implements OnInit {

  public list: any[] = [];

  getData() {
    let api = 'http://a.itying.com/api/productlist';
    this.http.get(api).subscribe((data: any) => {
      //http 底层使用的是rxjs 
      console.log(data);
      this.list = data.result

    })
  }

  constructor(public http: HttpClient) { }

  ngOnInit(): void {
  }

}
