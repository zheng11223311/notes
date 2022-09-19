## Controller

框架提供了一个 Controller 基类，并推荐所有的 [Controller](https://www.eggjs.org/zh-CN/basics/controller) 都继承于该基类实现。这个 Controller 基类有下列属性：

- `ctx` - 当前请求的 [Context](https://www.eggjs.org/zh-CN/basics/objects#context) 实例。
- `app` - 应用的 [Application](https://www.eggjs.org/zh-CN/basics/objects#application) 实例。
- `config` - 应用的[配置](https://www.eggjs.org/zh-CN/basics/config)。
- `service` - 应用所有的 [service](https://www.eggjs.org/zh-CN/basics/service)。
- `logger` - 为当前 controller 封装的 logger 对象。

在 Controller 文件中，可以通过两种方式来引用 Controller 基类：

```js
// app/controller/user.js

// 从 egg 上获取（推荐）
const Controller = require('egg').Controller;
class UserController extends Controller {
  // implement
    console.log(this.ctx)
 	console.log(this.app)
	console.log(this.config)
	console.log(this.config.key)
	console.log(this.logger)
	console.log(this.service)  //指向app/service 文件夹
	console.log(this.service.userService) //指向app/service/userService.js
	console.log(this.service.userService.getUser()) //指向app/service/userService.js userService类的getUser 方法
}
module.exports = UserController;

// 从 app 实例上获取
module.exports = (app) => {
  return class UserController extends app.Controller {
    // implement
  };
};
```

## Service

框架提供了一个 Service 基类，并推荐所有的 [Service](https://www.eggjs.org/zh-CN/basics/service) 都继承于该基类实现。

Service 基类的属性和 [Controller](https://www.eggjs.org/zh-CN/basics/objects#controller) 基类属性一致，访问方式也类似：

```js
// app/service/user.js

// 从 egg 上获取（推荐）
const Service = require('egg').Service;
class UserService extends Service {
  // implement
}
module.exports = UserService;

// 从 app 实例上获取
module.exports = (app) => {
  return class UserService extends app.Service {
    // implement
  };
};
```