// app/model/video.js
module.exports = app => {
  const mongoose = app.mongoose;
  const Schema = mongoose.Schema;
  const videoSchema = new Schema({
    title: { // 视频标题
      type: String,
      required: true,
    },
    description: { // 视频介绍
      type: String,
      required: true,
    },
    playUrl: { // 视频播放地址
      type: String,
      required: true,
    },
    cover: { // 视频封面
      type: String,
      required: true,
    },
    user: { // 视频作者
      type: mongoose.ObjectId,
      required: true,
      ref: 'User',
    },
    createAt: { // 创建时间
      type: Date,
      default: Date.now(),
    },
    updateAt: { // 更新时间
      type: Date,
      default: Date.now(),
    },
    commentCount: { // 评论数量
      type: Number,
      default: 0,
    },
    disLikesCount: { // 不喜欢的数量
      type: Number,
      default: 0,
    },
    likesCount: { // 喜欢的数量
      type: Number,
      default: 0,
    },
    viewCount: { // 观看的数量
      type: Number,
      default: 0,
    },
  });
  return mongoose.model('Video', videoSchema);
};
