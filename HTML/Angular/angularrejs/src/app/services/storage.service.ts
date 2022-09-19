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
