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
