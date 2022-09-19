## Egg 跨域

#### 安装cors 跨域

```powershell
npm i egg-cors --save
```



#### 配置插件

```js
//Egg + Vue3开发视频网站\代码\youtubeclone-backend\config\plugin.js
'use strict';

/** @type Egg.EggPlugin */
// module.exports = {
//   // had enabled by egg
//   // static: {
//   //   enable: true,
//   // }
// };

exports.mongoose = { // 使用mongoose 插件
  enable: true,
  package: 'egg-mongoose',
};

exports.validate = { // 使用验证器插件
  enable: true,
  package: 'egg-validate',
};
exports.cors = { // 配置跨域库
  enable: true,
  package: 'egg-cors',
};

```



#### 配置允许跨域

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

  config.cors = { // 配置跨域
    // origin: 'http:120.24.51.158', // 允许跨域的网址
    origin: '*', // 允许所有网址访问
    allowMethods: 'GET,HEAD', // 允许的请求方式
  };

  return {
    ...config,
    ...userConfig,
  };
};

```

