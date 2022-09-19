**Rxjs 异步数据流编程-Rxjs 快速入门教程**

**一.Rxjs 介绍**

参考手册:http://www.npmjs.com/package/rxjs

中文手册:https://cn.rx.js.org/

RxJS 是ReactiveX 编程理念的JavaScript 版本,ReactiveX 来自微软,他是一种针对异步数据流的编程,简单来说,他将一切数据,包括HTTP 请求,DOM 事件或者普通数据等包装成流的形式,然后用强大丰富的操作符对流进行处理,使你能够以同步编程的方式处理异步数据,并组合不同的操作符来优雅的实现你所需要的功能

RxJS 是一种针对异步数据编程工具,或者叫响应式扩展编程;可不管如何解释RxJS 其目标就是异步编程,Angular 引入RxJS 为了就是让异步可控,更简单

RxJS 里面提供了很多的模块,这里我们主要讲的是RxJS 里面最常用的Observable 和fromEvevt

**目前常见的异步编程的几种方法:**

1.回调函数

2.事件监听/发布订阅

3.Promise

4.Rxjs

**二.Promise 和RxJS 处理异步对比**

RxJS 和Promise 的基本用法非常类似，除了一些关键字不同。Promise 里面用的是then() 和resolve() ,而RxJS 里面用的是next() 和subscribe()

RxJS 相比Promise 要强大的多，比如RxJS 中可以中途撤回，RxJS 可以发射多个值，RxJS 提供了多种goon工具函数等等

**三。RxJS unsubscribe 取消订阅**

Promise 的创建之后，动作是无法撤回的。Observable 不一样，动作可以通过unsubscribe() 方法中途撤回，而且Observe 在内部做了智能处理

**四.RxJS 订阅后多次执行**

**五。Angular 6.x 之前使用RxJS 的工具函数map filter**

**注意：**Agular6 以后使用之前的rxjs 方法，必须安装rxjs-compat 模块才可以使用map。filter 方法

Angular6 后官方使用的是RXJS6 的新特性，所以官方给出了一个可以暂时延缓我们不需要修改rxjs 代码的办法

**示例**

**angularrejs\src\app\app.component.html**

```html
<app-home></app-home>
```

**angularrejs\src\app\app.module.ts**

```tsx
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';

//引入service 服务
import { StorageService } from './services/storage.service';

import { HomeComponent } from './components/home/home.component'

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [StorageService],//使用service
  bootstrap: [AppComponent]
})
export class AppModule { }
```

**angularrejs\src\app\services\storage.service.ts**

```tsx
import { Injectable } from '@angular/core';
// 引入rxjs
import { Observable } from 'rxjs'

@Injectable({
  providedIn: 'root'
})
export class StorageService {
  getData() {
    return 'this is data'
  }

  getCallbackData(cb: any) {
    setTimeout(() => {
      var data = '张三'
      cb(data)
    })
  }

  getPromiseData() {
    return new Promise((resolve) => {
      setTimeout(() => {
        var data = '张三--pro'
        resolve(data)
      })
    })

  }

  getRxjsData() {
    return new Observable((observe) => {
      setTimeout(() => {
        var username = '张三rejs'
        observe.next(username)
        // observe.error('数据')
      }, 2000)
    })
  }

  getPromiseIntervalData() {
    return new Promise((resolve) => {
      setInterval(() => {
        var data = '张三--proiter'
        resolve(data)
      })
    })

  }

  getRxjsIntervalData() {
    return new Observable((observe) => {
      setInterval(() => {
        var username = '张三rejsinter'
        observe.next(username)
      }, 2000)
    })
  }

  getRxjsIntervalNum() {
    return new Observable((observe) => {
      setInterval(() => {
        var username = '张三rejsinter'
        observe.next(username)
      }, 2000)
    })
  }

  constructor() { }
}

```

**angularrejs\src\app\components\home\home.component.ts**

```tsx
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

```

