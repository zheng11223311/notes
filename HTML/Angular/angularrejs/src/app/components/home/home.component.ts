import { Component, OnInit } from '@angular/core';

//引入service 服务
import { StorageService } from '../../services/storage.service';

// 引入rxjs 工具函数
import { map, filter } from 'rxjs/operators'


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  //使用StorageService
  constructor(public request: StorageService) {

  }

  ngOnInit(): void {
    console.log(111);

    //1 同步方法
    let data = this.request.getData()
    console.log(data);

    //2 callback 获取异步数据
    this.request.getCallbackData((data1: any) => {
      console.log(data1);

    })

    //3 Promise 获取异步数据
    var promiseData = this.request.getPromiseData()
    // console.log(promiseData);

    promiseData.then((data2: any) => {
      console.log(data2);

    })

    //4 rxjs 获取异步方法里面的数据
    // var rxjsData = this.request.getRxjsData()
    // rxjsData.subscribe((data) => {
    //   console.log(data);

    // })

    // 5.取消订阅
    var stream = this.request.getRxjsData()
    var d = stream.subscribe((data) => {
      console.log(data);
    })

    setTimeout(() => {
      d.unsubscribe()   //取消订阅
    }, 1000)

    // 6.promise 订阅后只执行一次
    var intervalData = this.request.getPromiseIntervalData()
    intervalData.then((data) => {
      console.log(data);

    })
    // .RxJS 订阅后多次执7行
    // var intervalStream = this.request.getRxjsIntervalData()
    // intervalStream.subscribe((data) => {
    //   console.log(data);
    // })

    //8.用工具方法对返回的数据进行处理

    //   var intervalStream1 = this.request.getRxjsIntervalNum()
    //   intervalStream1.pipe(
    //     filter(value => {
    //       if (value % 2 == 0) {
    //         return true
    //       }
    //     }),
    // map(value => {
    //   return value ** 2
    // })
    //   )
    //     .subscribe((data) => {
    //       console.log(data);
    //     })
    // }

  }


}
