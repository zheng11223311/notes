**一。Angular get 请求数据**

Angular5.x 以后get，post 和服务器交互使用的是HttpClientModule 模块

**1.在app.module.ts 中引入HttpClientModule 并注入**

```ts
import {HttpClientModule} from '@angular/common/http'
```

```ts
imports:[
BrowserModule,
HttpClientModule
]
```

**2.在用到的地方引入HttpClient 并在构造函数声明**

```ts
import {HttpClient} from '@angular/common/http'
```

```ts
constructor(public http:HttpClient){}
```

**3.get 请求数据**

```ts
var api='http://a.itying.com/api/productlist'
this.http.get(api).subscribe(data=>{
	console.log(data)
})
```

**示例**

