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
  async login() {

    const body = await this.ctx.request.body;
    // 1.基本数据验证
    this.ctx.validate({ // 配置验证规则,验证失败返回422,可以使用try catch 捕获并自定义错误提示
      email: { type: 'email' },
      password: { type: 'string' },
    }, body);
    // 2.校验邮箱是否存在
    const userService = this.service.user;
    const user = await userService.findByEmail(body.email);
    if (!user) {
      this.ctx.throw(422, '用户不存在');
    }
    // 3.校验密码是否正确
    if (this.ctx.helper.md5(body.password) !== user.password) {
      this.ctx.throw(422, '密码不正确');
    }
    // 4.生成token
    const token = userService.createToken({
      userId: user._id,
    });
    // 5.发送响应数据
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
  async getCurrentUser() {
    // 1.验证token
    // 2.获取用户
    // 3.发送响应
    const user = this.ctx.user;
    this.ctx.body = {
      user: {
        email: user.email,
        token: this.ctx.headers.authorization,
        username: user.username,
        channelDescription: user.channelDescription,
        avatar: user.avatar,
      },
    };
  }
  async update() {
    const body = await this.ctx.request.body;
    // 1.基本数据验证
    this.ctx.validate({ // 配置验证规则,验证失败返回422,可以使用try catch 捕获并自定义错误提示
      email: { type: 'email', required: false },
      password: { type: 'string', required: false },
      username: { type: 'string', required: false },
      channel: { type: 'string', required: false },
      avatar: { type: 'string', required: false },
    }, body);

    // 2.校验邮箱是否已存在
    const userService = this.service.user;
    if (body.email) {
      // 使用app/service 中的user.js
      if (body.email !== this.ctx.user.email && await userService.findByEmail(body.email)) {
        this.ctx.throw(422, '邮箱已存在'); // 抛出错误,状态码,提示消息
      }
    }
    // 3.校验用户是否已存在
    if (body.username) {
      // 使用app/service 中的user.js
      if (body.username !== this.ctx.user.username && await userService.findByUsername(body.username)) {
        this.ctx.throw(422, '用户已存在'); // 抛出错误,状态码,提示消息
      }
    }
    if (body.password) {
      // 使用app/service 中的user.js
      body.password = this.ctx.helper.md5(body.password);
    }

    // 4.更新用户信息
    const user = await userService.updateUser(body);
    // 5.返回更新之后的用户信息
    this.ctx.body = {
      user: {
        email: user.email,
        username: user.username,
        channelDescription: user.channelDescription,
        avatar: user.avatar,
        password: user.password,
      },
    };
  }
  async subscribe() {
    const userId = this.ctx.user._id;
    const channelId = this.ctx.params.userId; // params.userId 获取路由中 /:userId/ 的值
    // 1.用户不能订阅自己
    if (userId.equals(channelId)) { // userid 是一个object 对象,不能直接比较,类型不一样
      this.ctx.throw(422, '用户订阅自己');
    }

    // 2.添加订阅
    const user = await this.service.user.subscribe(userId, channelId);
    // console.log(user);
    // 3.发送响应
    this.ctx.body = {
      user: {
        // ...user.toJSON(),
        ...this.ctx.helper._.pick(user, [ // 取出user 对象中指定的键的数据
          'username',
          'email',
          'avatar',
          'cover',
          'channelDescription',
          'subscribersCount',
        ]),
        isSubscribed: true, // 是否已订阅
      },
    };
  }
  async unsubscribe() {
    const userId = this.ctx.user._id;
    const channelId = this.ctx.params.userId; // params.userId 获取路由中 /:userId/ 的值
    // 1.用户不能订阅自己
    if (userId.equals(channelId)) { // userid 是一个object 对象,不能直接比较,类型不一样
      this.ctx.throw(422, '用户不能取消订阅自己');
    }

    // 2.取消订阅
    const user = await this.service.user.unsubscribe(userId, channelId);
    // console.log(user);
    // 3.发送响应
    this.ctx.body = {
      user: {
        // ...user.toJSON(),
        ...this.ctx.helper._.pick(user, [ // 取出user 对象中指定的键的数据
          'username',
          'email',
          'avatar',
          'cover',
          'channelDescription',
          'subscribersCount',
        ]),
        isSubscribed: false, // 是否已订阅
      },
    };
  }
  async getUser() {
    // 1.获取订阅状态
    let isSubscribed = false;
    if (this.ctx.user) { // 用户当前是否登入
      // 获取订阅记录
      const record = await this.app.model.Subscription({
        user: this.ctx.user._id,
        channel: this.ctx.params.userId,
      });
      // console.log(record);
      if (record) {
        isSubscribed = true;
      }
    }
    // 2.获取用户信息
    const user = await this.app.model.User.findById(this.ctx.params.userId);
    // 3.发送响应
    this.ctx.body = {
      user: {
        // ...user.toJSON(),
        ...this.ctx.helper._.pick(user, [ // 取出user 对象中指定的键的数据
          'username',
          'email',
          'avatar',
          'cover',
          'channelDescription',
          'subscribersCount',
        ]),
        isSubscribed, // 是否已订阅
      },
    };
  }
  async getSubscriptions() {
    const { Subscription } = this.app.model;
    // console.log(this.ctx.params.userId);
    //   await Subscription.find 模型查找是异步的,不使用await 只会返回query 对象,而不是数据
    let subscription = await Subscription.find({
      user: this.ctx.params.userId,
    }, (e, doc) => {
      // console.log(doc);
    }).populate('channel'); // populate('channel') 关联查询User 表的channel 字段,populate 居住于; 生活于; 移民于; 占据;

    // subscription.exec((err, docs) => {
    //   if (err) {
    //     console.log('err: ' + err);
    //     return;
    //   }
    //   console.log(JSON.stringify(docs));
    // });
    subscription = subscription.map(item => {
      return this.ctx.helper._.pick(item.channel, [ // 选择使用对象中指定的字段
        '_id',
        'username',
        'avatar',
      ]);
    // return {
    //   _id: item.channel._id,
    //   username: item.channel.username,
    //   avatar: item.channel.avatar,
    // };
    });
    this.ctx.body = {
      subscription,
    };
    // console.log(subscription);
  }
}

module.exports = UserController;
