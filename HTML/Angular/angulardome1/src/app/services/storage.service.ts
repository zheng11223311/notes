import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class StorageService {
  // 设置自定义属性
  set(key: string, value: any) {
    console.log(localStorage);
    // 使用locallocalStorage 本地储存
    localStorage.setItem(key, JSON.stringify(value))
  }
  get(key: string) {
    return JSON.parse(localStorage.getItem(key) || '[]')
  }
  remove(key: string) {

    localStorage.removeItem(key)
  }
  re() {

  }
  constructor() { }
}
