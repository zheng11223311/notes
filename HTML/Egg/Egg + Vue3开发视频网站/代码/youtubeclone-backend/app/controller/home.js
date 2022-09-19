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
