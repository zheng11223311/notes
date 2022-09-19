// app/model/like.js
module.exports = app => {
  const mongoose = app.mongoose;
  const Schema = mongoose.Schema;

  const VideoLikeSchema = new Schema({
    like: { // 点赞状态
      type: Number,
      enum: [ 1, -1 ], // 1 喜欢 -1 不喜欢
      required: true,
    },
    user: { // 点赞用户
      type: mongoose.ObjectId,
      ref: 'User',
      required: true,
    },
    video: { // 点赞视频
      // type: mongoose.ObjectId,
      type: String,
      ref: 'Video',
      required: true,
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
  return mongoose.model('VideoLike', VideoLikeSchema);
};
