## Context

Context 是一个**请求级别的对象**，继承自 [Koa.Context](http://koajs.com/#context)。在每一次收到用户请求时，框架会实例化一个 Context 对象，这个对象封装了这次用户请求的信息，并提供了许多便捷的方法来获取请求参数或者设置响应信息。框架会将所有的 [Service](https://www.eggjs.org/zh-CN/basics/service) 挂载到 Context 实例上，一些插件也会将一些其他的方法和对象挂载到它上面（[egg-sequelize](https://github.com/eggjs/egg-sequelize) 会将所有的 model 挂载在 Context 上）。

### 获取方式

最常见的 Context 实例获取方式是在 [Middleware](https://www.eggjs.org/zh-CN/basics/middleware), [Controller](https://www.eggjs.org/zh-CN/basics/controller) 以及 [Service](https://www.eggjs.org/zh-CN/basics/service) 中。Controller 中的获取方式在上面的例子中已经展示过了，在 Service 中获取和 Controller 中获取的方式一样，在 Middleware 中获取 Context 实例则和 [Koa](http://koajs.com/) 框架在中间件中获取 Context 对象的方式一致。

框架的 [Middleware](https://www.eggjs.org/zh-CN/basics/middleware) 同时支持 Koa v1 和 Koa v2 两种不同的中间件写法，根据不同的写法，获取 Context 实例的方式也稍有不同：

```js
// Koa v1
function* middleware(next) {
  // this is instance of Context
  console.log(this.query);
  yield next;
}

// Koa v2
async function middleware(ctx, next) {
  // ctx is instance of Context
  console.log(ctx.query);
}
```

除了在请求时可以获取 Context 实例之外， 在有些非用户请求的场景下我们需要访问 service / model 等 Context 实例上的对象，我们可以通过 `Application.createAnonymousContext()` 方法创建一个匿名 Context 实例：

```js
// app.js
module.exports = (app) => {
  app.beforeStart(async () => {
    const ctx = app.createAnonymousContext();
    // preload before app start
    await ctx.service.posts.load();
  });
};
```

在[定时任务](https://www.eggjs.org/zh-CN/basics/schedule)中的每一个 task 都接受一个 Context 实例作为参数，以便我们更方便的执行一些定时的业务逻辑：

```js
// app/schedule/refresh.js
exports.task = async (ctx) => {
  await ctx.service.posts.refresh();
};
```

## Request & Response

Request 是一个**请求级别的对象**，继承自 [Koa.Request](http://koajs.com/#request)。封装了 Node.js 原生的 HTTP Request 对象，提供了一系列辅助方法获取 HTTP 请求常用参数。

Response 是一个**请求级别的对象**，继承自 [Koa.Response](http://koajs.com/#response)。封装了 Node.js 原生的 HTTP Response 对象，提供了一系列辅助方法设置 HTTP 响应。

### 获取方式

可以在 Context 的实例上获取到当前请求的 Request(`ctx.request`) 和 Response(`ctx.response`) 实例。

```js
// app/controller/user.js
class UserController extends Controller {
  async fetch() {
    const { app, ctx } = this;
    const id = ctx.request.query.id;
    ctx.response.body = app.cache.get(id);
  }
}
```

- [Koa](http://koajs.com/) 会在 Context 上代理一部分 Request 和 Response 上的方法和属性，参见 [Koa.Context](http://koajs.com/#context)。
- 如上面例子中的 `ctx.request.query.id` 和 `ctx.query.id` 是等价的，`ctx.response.body=` 和 `ctx.body=` 是等价的。
- 需要注意的是，获取 POST 的 body 应该使用 `ctx.request.body`，而不是 `ctx.body`。