// module.exports = app => {
//   const mongoose = app.mongoose; // 使用插件后,会自动添加到app 上
//   const Schema = mongoose.Schema; // 使用表

//   const UserSchema = new Schema({ // 创建表
//     userName: { type: String },
//     password: { type: String },
//   });
//   return mongoose.model('User', UserSchema); // User 表,UserSchema 字段  返回模型
// };

// app/model/user.js
module.exports = app => {
  const mongoose = app.mongoose;
  const Schema = mongoose.Schema;

  const userSchema = new Schema({
    username: { // 用户名
      type: String,
      required: true,
    },
    email: { // 邮箱
      type: String,
      required: true,
    },
    password: { // 密码
      type: String,
      select: false, // false 查询中,不包含该字段
      required: true,
    },
    avatar: { // 头像
      type: String,
      default: null,
    },
    cover: { // 封面
      type: String,
      default: null,
    },
    channelDescription: { // 频道介绍
      type: String,
      // required: true,
      default: null,
    },
    subscribersCount: { // 订阅频道的数量
      type: Number,
      default: 0,
    },
    createAt: { // 创建时间
      type: Date,
      default: Date.now(),
    },
    updateAt: { // 更新时间
      type: Date,
      default: Date.now(),
    },
  });
  return mongoose.model('User', userSchema);
};
