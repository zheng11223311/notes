# API

### 小程序API 概述

`小程序中的API 是由宿主环境提供的`,通过这些丰富的小程序API,开发者可以方便的调用微信提供的能力,例如:获取用户信息,本地存储,支付功能等



### 小程序API 的 3 大分类

小程序官方把API 分为了如下 3 大类:

1. **时间监听 API**
   1. 特点,以`on` 开头,用来`监听某些事件的触发`
   2. 举例:wx.`onWindowResize`(function callback) 监听窗口尺寸变化的事件,wx 类似于HTML 的window ,也是全局的
2. **同步 API**
   1. 特点1:以`Sync`结尾的API 都是同步API
   2. 特点2: 同步API 的执行结果,可以通过函数返回值直接获取,如果执行出错会抛出异常
   3. 举例:wx.`setStorageSync`('key','value') 向本地存储中写入内容
3. **异步 API**
   1. 特点:类似于jQuery 中的`$.ajax(options)`函数,需要通过success ,fail ,complete 接收调用的结果
   2. 举例:wx.`request`() 发起网络数据请求,通过success 回调函数接收数据

