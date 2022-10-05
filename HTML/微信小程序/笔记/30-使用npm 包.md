# 使用npm 包

### 小程序对 npm 的支持与限制

目前,小程序中已经支持使用 npm 安装第三方包,从而提高小程序的开发效率,但是在小程序中使用npm 包有如下3 个限制:

1. 不支持依赖于`NodeJS 内置库`的包
2. 不支持依赖于`浏览器内置对象`的包
3. 不支持依赖于`C++ 插件`的包

总结: 虽然 npm 上的包有千千万,但是能供



### 什么是 Vant Weapp

Vant Weapp 是有赞前端团队开源的一套`小程序UI 组件库`,助力开发者快速搭建小程序应用,它所使用的是`MIT 开源许可协议`,对商业使用比较友好

官方文档地址: https://youzan.github.io/vant-weapp





### 安装Vant 组件库

在小程序项目中,安装Vant 组件库主要分为如下3 个步骤:

1. 通过npm  安装(建议指定版本为@1.3.3)

   1. 在项目目录中,右键->在外部打开终端

   2. ```
      # 通过 npm 安装
      npm i @vant/weapp -S --production
      ```

2. 构建npm 包

   1. ![](https://img.yzcdn.cn/public_files/2019/08/15/fa0549210055976cb63798503611ce3d.png)

3. 修改 app.json

   1.  将 app.json 中的 `"style": "v2"` 去除，小程序的[新版基础组件](https://developers.weixin.qq.com/miniprogram/dev/reference/configuration/app.html#style)强行加上了许多样式，难以覆盖，不关闭将造成部分组件样式混乱。 



详细的操作步骤,大家可以参考Vant 官方提供的快速上手教程:

https://youzan.github.io/vant-weapp/#/quickstart#an-zhuang





### 使用Vant 组件

安装完Vant 组件库之后,可以在`app.json` 的`usingComponents` 节点中引入需要的组件,即可在wxml 中直接使用组件,示例代码如下:

```json
// app.json
"usingComponents":{
    "vant-button":"@vant/weapp/button/index"
}
```

```html
<!-- 页面的 .wxml 结构-->
<vant-button type="primary">按钮</vant-button>
```





### 定制全局主题样式

Vant Weapp 使用`css 变量` 来实现定制主题,关于CSS 变量的基本用法,请参考MDN 文档;

https://developer.mozilla.org/zh-CN/docs/Web/CSS/Using_CSS_custom_properties



在`app.wxss`中,写入CSS 变量,即可对全局生效:

```css
/* app.wxss */
page{
    /* 定制警告按钮的背景颜色和边框颜色 */
    --button-danger-background-color:#C00000;
    --button-danger-border-color:#D60000;
}
```



# API Promise 化

### 基于回调函数的异步API 的缺点

默认情况下,小程序官方提供的`异步 API` 都是`基于回调函数`实现的,例如,网络请求的API 需要按照如下的方式调用:

```js
wx.request({
    method:'',
    url:'',
    data:'',
    success:()=>{},	//请求成功的回调函数
    fail:()=>{},	//请求失败的回调函数
    complete:()=>{},	//请求完成的回调函数
})
```

缺点: 容易造成`毁掉地狱` 的问题,代码的`可读性,维护性`差!



### 什么是API Promise 化

`API promise 化`,指的是`通过额外的配置`,将官方提供的,基于回调函数的异步API ,`升级改造为基于Promise 的异步API`,从而提高代码的可读性,维护性,避免回调地狱的问题





### 实现API Promise 化

在小程序中,实现API Promise 化主要依赖于`miniprogram-api-promise` 这个第三方的 npm 包,它的安装和使用步骤如下:

```
npm install --save miniprogram-api-promise@1.0.4
```

安装完后,需要重新构建npm, 目的是将node_module 文件中的包迁移到 miniprogram_npm 文件中 ,小程序才能使用组件

```js
// 在小程序的入口文件中(app.js) ,只需要调用一次 promisifyAll() 方法
// 即可实现异步API 的promise 化

import { promisifyAll } from "miniprogram-api-promise"

const wxp=wx.p={}
//promisify all wx's api
promisifyAll(wx,wxp)  //将wx 中的所有异步函数Promise 化后,挂载到wxp 上
```





### 调用Promise 化之后的异步API

```html
页面的wxml 结构
<vant-button type="danger" bindtap="getInfo"> vant 按钮</vant-button>
```

```js
// 在页面的 .js 文件中,定义对应的tap 事件处理函数
async getInfo(){
    const {data :res}=await wx.p.request({
        method:'GET',
        url:"https://www.escook.cn/api/get",
        data:{name:"zs",age:20}
    })
    console.log(res)
}
```

