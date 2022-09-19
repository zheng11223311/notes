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
    }).select('+password'); // 查询时,同时查询password 字段数据
  }
  async createUser(data) {
    const user = new this.User(data);
    user.password = this.ctx.helper.md5(data.password); // md5 需要额外的扩展 app/extend/helper.js 框架已经匹配了加载文件的规则
    await user.save(); // 使用模型model 保存到数据库中
    return user;
  }
  createToken(data) {
    // this.app.config.jwt.secret 使用config.default.js 中配置的密钥
    return jwt.sign(data, this.app.config.jwt.secret, {
      expiresIn: this.app.config.jwt.expiresIn, // 过期时间
    }); // 生成token 参数 数据,自定义私钥,过期时间
  }
  verifyToken(token) { // 验证token
    return jwt.verify(token, this.app.config.jwt.secret); // 解码userId 加密后的token 返回token 加密前的userId
  }
  updateUser(data) { // 更新用户资料
    return this.User.findByIdAndUpdate(this.ctx.user._id, data, {
      new: true, // 表示返回的是更新之后的数据,而不是更新之前的数据
    });
  }
  async subscribe(userId, channelId) { // 订阅频道
    const { Subscription, User } = this.app.model;
    // 1.检查是否已经订阅
    const record = await Subscription.findOne({
      user: userId,
      channel: channelId,
    });
    // console.log(record);
    const user = await User.findById(channelId);
    // 2.没有订阅,添加订阅
    // console.log(user);
    if (!record) {
      await new Subscription({
        user: userId,
        channel: channelId,
      }).save();
      // 更新用户的订阅数量
      user.subscribersCount++;
      await user.save(); // 更新到数据库中
    }
    // 3.返回用户信息
    return user;
  }
  async unsubscribe(userId, channelId) { // 取消订阅频道
    const { Subscription, User } = this.app.model;
    // 1.检查是否已经订阅
    const record = await Subscription.findOne({
      user: userId,
      channel: channelId,
    });
    // console.log(record);
    const user = await User.findById(channelId);
    // 2.如果有订阅,取消订阅
    // console.log(user);
    if (record) {
      await record.remove(); // 删除订阅记录
      // 更新用户的订阅数量
      user.subscribersCount--;
      await user.save(); // 更新到数据库中
    }
    return user;
  }
}

module.exports = UserService;
