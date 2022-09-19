## 处理token

#### 安装token

```powershell
npm i jsonwebtoken
```



#### 配置config

```js
//Egg + Vue3开发视频网站\代码\youtubeclone-backend\config\config.default.js
/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1657978081785_6636';

  // add your middleware config here
  config.middleware = [
    'errorHandler', // 添加自定义错误中间件,下划线需要改为驼峰命名
  ];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  config.mongoose = {
    client: {
      url: 'mongodb://127.0.0.1/youtube-clone', // mongodb://127.0.0.1/example 地址 example 数据库
      options: {
        useUnifiedTopology: true,
      },
      plugins: [],
    },
  };

  config.security = { // 关闭 csrf 保护
    csrf: {
      enable: false,
    },
  };

  config.jwt = { // 配置token 的密钥
    secret: 'asdahdoiahdigyuiagdsk',
    expiresIn: '1d', // 过期时间1天
  };

  return {
    ...config,
    ...userConfig,
  };
};

```



## service 使用token

```js
//Egg + Vue3开发视频网站\代码\youtubeclone-backend\app\service\user.js
// 简单来说，Service 就是在复杂业务场景下用于做业务逻辑封装的一个抽象层
const Service = require('egg').Service;
const jwt = require('jsonwebtoken');

class UserService extends Service {
  get User() {
    return this.app.model.User;
  }
  findByUsername(username) {
    return this.User.findOne({
      username,
    });
  }
  findByEmail(email) {
    return this.User.findOne({
      email,
    });
  }
  async createUser(data) {
    const user = new this.User(data);
    data.password = this.ctx.helper.md5(data.password); // md5 需要额外的扩展 app/extend/helper.js 框架已经匹配了加载文件的规则
    await user.save(); // 使用模型model 保存到数据库中
    return user;
  }
  createToken(data) {
    // this.app.config.jwt.secret 使用config.default.js 中配置的密钥
    return jwt.sign(data, this.app.config.jwt.secret, {
      expiresIn: this.app.config.jwt.expiresIn, // 过期时间
    }); // 生成token 参数 数据,自定义私钥,过期时间
  }
}

module.exports = UserService;

```



## 路由

```js
//Egg + Vue3开发视频网站\代码\youtubeclone-backend\app\router.js
'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  // router.get('/', controller.home.index);
  router.prefix('/api/v1'); // 设置基础路径
  router.post('/users', controller.user.create); // http://127.0.0.1:7002/api/v1/users

};

```



## 访问时返回数据

```js
//Egg + Vue3开发视频网站\代码\youtubeclone-backend\app\controller\user.js
'use strict';

const Controller = require('egg').Controller;

class UserController extends Controller {
  async create() {
    const { ctx } = this;
    ctx.body = 'hi, egg';
    // 1.数据校验
    const body = this.ctx.request.body;
    this.ctx.validate({ // 配置验证规则,验证失败返回422,可以使用try catch 捕获并自定义错误提示
      username: { type: 'string' },
      email: { type: 'email' },
      password: { type: 'string' },
    }, body);

    const userService = this.service.user;
    // 使用app/service 中的user.js
    if (await userService.findByUsername(body.username)) {
      this.ctx.throw(422, '用户已存在'); // 抛出错误,状态码,提示消息
    }
    if (await userService.findByEmail(body.email)) {
      this.ctx.throw(422, '邮箱已存在'); // 抛出错误,状态码,提示消息
    }
    // 2.保存用户
    const user = await userService.createUser(body);
    // 3.生成token
    // 使用安装后的token
    const token = userService.createToken({
      userId: user._id,
    });
    // 4.发送响应
    this.ctx.body = {
      user: {
        email: user.email,
        token,
        username: user.username,
        channelDescription: user.channelDescription,
        avatar: user.avatar,
      },
    };
  }
}

module.exports = UserController;

```

