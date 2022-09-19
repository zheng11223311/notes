import { Component, OnInit } from '@angular/core';
import { from } from 'rxjs';

//引入服务
import { StorageService } from '../../services/storage.service'

/* 实例化,可以使用以下方法，但不推荐
var storage = new StorageService()
console.log(storage);
 */



@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {

  public keyword: string = ''
  public historyList: any[] = []

  doSearch() {
    // console.log(this.keyword)
    //如果不存在值
    if (this.historyList.indexOf(this.keyword) == -1) {
      this.historyList.push(this.keyword)

      //本地储存数据
      this.storage.set('searchlist', this.historyList)
    }

    this.keyword = ''
  }

  deleteHistory(key: any) {
    this.historyList.splice(key, 1)
  }

  // 官方推荐使用服务
  constructor(public storage: StorageService) {
    let s = this.storage
    console.log(s);
    // 这里的方法都是在StorageService 组件面自定义的方法
    // constructor: class StorageService
    // get: ƒ get(key)
    // remove: ƒ remove(key)
    // set: ƒ set(key, value)

  }

  ngOnInit(): void {
    //刷新会执行这个函数
    // alert('被执行了')
    //取出本地数据
    var searchlist = this.storage.get('searchlist')
    if (searchlist) {
      this.historyList = searchlist
    }
  }

}
