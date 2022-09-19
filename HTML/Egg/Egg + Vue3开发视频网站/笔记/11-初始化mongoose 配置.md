## 初始化mongoose 配置

安装 egg 管理mongoose  的库

```powershell
npm i egg-mongoose --save  //save 生产环境
```

配置插件

```js
//config/plugin.js
exports.mongoose = {		//默认开启了严格模式,需要注意格式
  enable: true,
  package: 'egg-mongoose',
};

```

```js
//config/config-default.js
'use strict';
module.exports = appInfo => {
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1657978081785_6636';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  config.mongoose = {  //配置mongoose
    client: {
      url: 'mongodb://127.0.0.1/youtube-clone', // mongodb://127.0.0.1/example 地址 example 数据库
      options: {
        useUnifiedTopology: true,
      },
      plugins: [],
    },
  };

  return {
    ...config,
    ...userConfig,
  };
};

```

创建模型

```js
// app/model/user.js
module.exports = app => {
  const mongoose = app.mongoose; // 使用插件后,会自动添加到app 上
  const Schema = mongoose.Schema; // 使用表

  const UserSchema = new Schema({ // 创建表
    userName: { type: String },
    password: { type: String },
  });
  return mongoose.model('User', UserSchema); // User 表,UserSchema 字段  返回模型
};

```

使用模型

```js
//app/controller/home.js
'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    const User = this.app.model.User; // 获取模型
    await new User({ // 使用模型创建表
      userName: 'admin',
      password: '123456',
    }).save(); // save 将数据保存到数据库,查看数据库,有字段生成
    ctx.body = 'hi, egg';
  }
}

module.exports = HomeController;


```

