# 框架内置基础对象

在本章，我们会初步介绍一下框架中内置的一些基础对象，包括从 [Koa](http://koajs.com/) 继承而来的 4 个对象（Application, Context, Request, Response) 以及框架扩展的一些对象（Controller, Service, Helper, Config, Logger），在后续的文档阅读中我们会经常遇到它们。

## Application

Application 是全局应用对象，在一个应用中，只会实例化一个，它继承自 [Koa.Application](http://koajs.com/#application)，在它上面我们可以挂载一些全局的方法和对象。我们可以轻松的在插件或者应用中[扩展 Application 对象](https://www.eggjs.org/zh-CN/basics/extend#Application)。

### 事件

在框架运行时，会在 Application 实例上触发一些事件，应用开发者或者插件开发者可以监听这些事件做一些操作。作为应用开发者，我们一般会在[启动自定义脚本](https://www.eggjs.org/zh-CN/basics/app-start)中进行监听。

- `server`: 该事件一个 worker 进程只会触发一次，在 HTTP 服务完成启动后，会将 HTTP server 通过这个事件暴露出来给开发者。
- `error`: 运行时有任何的异常被 onerror 插件捕获后，都会触发 `error` 事件，将错误对象和关联的上下文（如果有）暴露给开发者，可以进行自定义的日志记录上报等处理。
- `request` 和 `response`: 应用收到请求和响应请求时，分别会触发 `request` 和 `response` 事件，并将当前请求上下文暴露出来，开发者可以监听这两个事件来进行日志记录。

```js
// app.js
module.exports = (app) => {
  app.once('server', (server) => {
    // websocket
  });
  app.on('error', (err, ctx) => {
    // report error
  });
  app.on('request', (ctx) => {
    // log receive request
  });
  app.on('response', (ctx) => {
    // ctx.starttime is set by framework
    const used = Date.now() - ctx.starttime;
    // log total cost
  });
};
```

### 获取方式

Application 对象几乎可以在编写应用时的任何一个地方获取到，下面介绍几个经常用到的获取方式：

几乎所有被框架 [Loader](https://www.eggjs.org/zh-CN/advanced/loader) 加载的文件（Controller，Service，Schedule 等），都可以 export 一个函数，这个函数会被 Loader 调用，并使用 app 作为参数：

- [启动自定义脚本](https://www.eggjs.org/zh-CN/basics/app-start)

  ```js
  // app.js
  module.exports = (app) => {
    app.cache = new Cache();
  };
  ```

- [Controller 文件](https://www.eggjs.org/zh-CN/basics/controller)

  ```js
  // app/controller/user.js
  class UserController extends Controller {
    async fetch() {
      this.ctx.body = this.app.cache.get(this.ctx.query.id);
    }
  }
  ```

和 [Koa](http://koajs.com/) 一样，在 Context 对象上，可以通过 `ctx.app` 访问到 Application 对象。以上面的 Controller 文件举例：

```js
// app/controller/user.js
class UserController extends Controller {
  async fetch() {
    this.ctx.body = this.ctx.app.cache.get(this.ctx.query.id);
  }
}
```

在继承于 Controller, Service 基类的实例中，可以通过 `this.app` 访问到 Application 对象。

```js
// app/controller/user.js
class UserController extends Controller {
  async fetch() {
    this.ctx.body = this.app.cache.get(this.ctx.query.id);
  }
}
```

