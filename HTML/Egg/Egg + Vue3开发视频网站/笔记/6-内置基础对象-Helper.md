## 内置基础对象-Helper

## Helper

Helper 用来提供一些实用的 utility 函数。它的作用在于我们可以将一些常用的动作抽离在 helper.js 里面成为一个独立的函数，这样可以用 JavaScript 来写复杂的逻辑，避免逻辑分散各处，同时可以更好的编写测试用例。

Helper 自身是一个类，有和 [Controller](https://www.eggjs.org/zh-CN/basics/objects#controller) 基类一样的属性，它也会在每次请求时进行实例化，因此 Helper 上的所有函数也能获取到当前请求相关的上下文信息。

### 获取方式

可以在 Context 的实例上获取到当前请求的 Helper(`ctx.helper`) 实例。

```js
// app/controller/user.js
class UserController extends Controller {
  async fetch() {
    const { app, ctx } = this;
    const id = ctx.query.id;
    const user = app.cache.get(id);
    ctx.body = ctx.helper.formatUser(user);
  }
}
```

除此之外，Helper 的实例还可以在模板中获取到，例如可以在模板中获取到 [security](https://www.eggjs.org/zh-CN/core/security) 插件提供的 `shtml` 方法。

```unknown
// app/view/home.nj
{{ helper.shtml(value) }}
```

### 自定义 helper 方法

应用开发中，我们可能经常要自定义一些 helper 方法，例如上面例子中的 `formatUser`，我们可以通过[框架扩展](https://www.eggjs.org/zh-CN/basics/extend#helper)的形式来自定义 helper 方法。

```js
// app/extend/helper.js
module.exports = {
  formatUser(user) {
    return only(user, ['name', 'phone']);
  },
};
```