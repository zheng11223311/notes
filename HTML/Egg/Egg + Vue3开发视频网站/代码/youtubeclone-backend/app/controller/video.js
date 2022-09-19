'use strict';

const fs = require('fs');
const path = require('path');
const { md5 } = require('../extend/helper');
const Controller = require('egg').Controller;

class VideoController extends Controller {
  async createVideo() {
    const body = this.ctx.request.body;
    const { Video } = this.app.model;
    // 文件上传需要在config.default.js 中配置multipart
    const file = this.ctx.request.files; // file包含了文件名，文件类型，大小，路径等信息，可以自己打印下看看
    // console.log(file);
    // console.log(body);
    // console.log(file[0].filename);
    const fileObj = {
      title: body.title,
      description: body.description,
      cover: body.cover,
      vodVideoId: md5(file[0].filename + this.ctx.user._id),
      playUrl: 'http://' + this.ctx.headers.host + '/public/video/' + file[0].filename,
    };

    this.ctx.validate({
      title: { type: 'string' },
      description: { type: 'string' },
      cover: { type: 'string' },
      vodVideoId: { type: 'string' },
      playUrl: { type: 'string' },
    }, fileObj);
    fileObj.user = this.ctx.user._id;
    // fileObj.user = '62d9097b03166e1c1cdea254';
    const video = await new Video(fileObj).save();
    this.ctx.status = 201;
    console.log('文件/video 是否存在', fs.existsSync('/video'));
    console.log('当前位置', __dirname);
    if (!fs.existsSync('./app/public/video')) {
      console.log(fs.mkdirSync('./app/public/video'));
    }
    fs.writeFileSync('./app/public/video/' + file[0].filename, fs.readFileSync(file[0].filepath));
    this.ctx.body = {
      video,
      // imgUrl: './video/' + file[0].filename,
    };
  }
  async getVideo() {
    console.log(this.ctx.headers.host);
    const { Video, Like, Subscription } = this.app.model;
    const { videoId } = this.ctx.params; // 路由 :videoId 传递的值
    let video = await Video.find({
      _id: videoId,
    }).populate('user', '_id username avatar subscribersCount'); // 关联 user 字段,查找user 字段所关联的表的_id username 等字段
    if (!video) {
      this.ctx.throw(404, 'Video Not Found');
    }
    // console.log(this.app.model);
    // console.log(Video);
    // console.log(Like);
    // console.log(Subscription);
    video = video[0].toJSON();
    video.isLiked = false; // 是否喜欢
    video.isDisLiked = false; // 是否不喜欢
    video.user.isSubscribed = false; // 是否已订阅视频作者

    // this.ctx.user = {};
    // this.ctx.user._id = '62d9097b03166e1c1cdea254';
    // console.log(this.ctx.user, 1111111);
    if (this.ctx.user) {
      const userId = this.ctx.user._id;
      // const userId = '62d9097b03166e1c1cdea254';
      if (await Like.findOne({ user: userId, video: videoId, like: 1 })) {
        video.isLiked = true;
      }
      if (await Like.findOne({ user: userId, video: videoId, like: -1 })) {
        video.isDisLiked = true;
      }
      if (await Subscription.findOne({ user: userId, channel: video.user._id })) {
        video.user.isSubscribed = true;
      }
    }
    this.ctx.body = {
      video,
    };
  }
  async getVideos() {
    const { Video } = this.app.model;
    let { pageNum = 1, pageSize = 10 } = this.ctx.query;
    pageNum = Number.parseInt(pageNum);
    pageSize = Number.parseInt(pageSize);
    console.log(pageNum, pageSize);
    const getvideos = Video.find().populate('user').sort({
      createAt: -1,
    })
      .skip((pageNum - 1) * pageSize)
      .limit(pageSize);

    const getvideosCount = Video.countDocuments(); // 数据总数量
    const [ videos, videosCount ] = await Promise.all([
      getvideos,
      getvideosCount,
    ]);
    this.ctx.body = {
      videos,
      videosCount,
    };
  }
  async getUserVideos() {
    const { Video } = this.app.model;
    let { pageNum = 1, pageSize = 10 } = this.ctx.query;
    const userId = this.ctx.params.userId;
    pageNum = Number.parseInt(pageNum);
    pageSize = Number.parseInt(pageSize);
    console.log(pageNum, pageSize);
    const getvideos = Video.find({
      user: userId,
    }).populate('user').sort({
      createAt: -1,
    })
      .skip((pageNum - 1) * pageSize)
      .limit(pageSize);

    const getvideosCount = Video.countDocuments({
      user: userId,
    }); // 数据总数量
    const [ videos, videosCount ] = await Promise.all([
      getvideos,
      getvideosCount,
    ]);
    this.ctx.body = {
      videos,
      videosCount,
    };
  }
  async getUserFeedVideos() {
    const { Video, Subscription } = this.app.model;
    let { pageNum = 1, pageSize = 10 } = this.ctx.query;
    const userId = this.ctx.user._id;
    pageNum = Number.parseInt(pageNum);
    pageSize = Number.parseInt(pageSize);

    const channels = await Subscription.find({ user: userId }).populate('channel');
    console.log(channels);
    const getvideos = Video.find({
      user: {
        $in: channels.map(item => item.channel._id), // 包含在channels 内的user
      },
    })
    // .populate('user').sort({
    //   createAt: -1,
    // })
      .skip((pageNum - 1) * pageSize)
      .limit(pageSize);

    const getvideosCount = Video.countDocuments({
      user: {
        $in: channels.map(item => item.channel._id), // 包含在channels 内的user
      },
    }); // 数据总数量
    const [ videos, videosCount ] = await Promise.all([
      getvideos,
      getvideosCount,
    ]);
    this.ctx.body = {
      videos,
      videosCount,
    };
  }
  async updateVideos() {
    const body = this.ctx.request.body;
    const { Video } = this.app.model;
    const { videoId } = this.ctx.params;
    const userId = this.ctx.user._id;

    // 数据验证
    this.ctx.validate({
      title: { type: 'string', required: false },
      description: { type: 'string', required: false },
      vodVideoId: { type: 'string', required: false },
      cover: { type: 'string', required: false },
    }, body);

    // 查询视频
    const video = await Video.findById(videoId);
    // console.log(video);
    // console.log( this.ctx.params);
    if (!video) {
      this.ctx.throw(404, 'Video Not Found');
    }

    // 视频作者必须是当前登入用户
    if (!video.user.equals(userId)) {
      this.ctx.throw(403); // 禁止访问"Forbidden"
    }

    // 合并对象数据
    Object.assign(video, this.ctx.helper._.pick(body, [
      'title',
      'description',
      'vodVideoId',
      'cover',
    ]));
    // console.log(video);
    // 把修改保存到数据库中
    await video.save();

    // 发送响应
    this.ctx.body = {
      video,
    };
  }
  async deleteVideos() {
    const { Video } = this.app.model;
    const { videoId } = this.ctx.params;
    const userId = this.ctx.user._id;

    // 查询视频
    const video = await Video.findById(videoId);
    if (!video) {
      this.ctx.throw(404, 'Video Not Found');
    }

    // 视频作者必须是当前登入用户
    if (!video.user.equals(userId)) {
      this.ctx.throw(403); // 禁止访问"Forbidden"
    }

    await video.remove();
    this.ctx.status = 204;
  }
  async createComment() {
    const body = this.ctx.request.body;
    const { Video, Comment } = this.app.model;
    const userId = this.ctx.user._id;
    const { videoId } = this.ctx.params;

    // 数据验证
    this.ctx.validate({
      content: 'string',
    }, body);

    // 获取评论所属的视频
    const video = await Video.findById(videoId);

    if (!video) {
      this.ctx.throw(404);
    }

    // 创建评论
    const comment = await new Comment({
      content: body.content,
      user: userId,
      video: videoId,
    }).save();

    // 更新视频的评论数量
    video.commentCount = await Comment.countDocuments({
      video: videoId,
    });

    await video.save();

    // 映射评论所属用户和视频字段数据
    await comment.populate('user').populate('video').execPopulate();

    this.ctx.body = {
      comment,
    };
  }
  async getVideoComments() {
    const { Comment } = this.app.model;
    let { pageNum = 1, pageSize = 10 } = this.ctx.query;
    const { videoId } = this.ctx.params;
    pageNum = Number.parseInt(pageNum);
    pageSize = Number.parseInt(pageSize);

    const getComments = Comment.find({
      video: videoId,
    })
      .skip((pageNum - 1) * pageSize)
      .limit(pageSize)
      .populate('user')
      .populate('video');

    const getCommentsCount = Comment.countDocuments({
      video: videoId,
    }); // 数据总数量
    const [ comments, commentsCount ] = await Promise.all([
      getComments,
      getCommentsCount,
    ]);
    this.ctx.body = {
      comments,
      commentsCount,
    };
  }
  async deleteVideoComments() {
    const { Comment, Video } = this.app.model;
    const { videoId, commentId } = this.ctx.params;

    // 校验视频是否存在
    const video = await Video.findById(videoId);
    if (!video) {
      this.ctx.throw(404, 'Video Not Found');
    }

    const comment = await Comment.findById(commentId);

    // 检验评论是否存在
    if (!comment) {
      this.ctx.throw(404, 'Commnet Not Found');
    }

    // 校验当前评论作者是否是当前登入用户
    if (!comment.user.equals(this.ctx.user._id)) {
      this.ctx.throw(403);
    }

    // 删除视频评论
    await comment.remove();

    // 更新视频的评论数量
    video.commentCount = await Comment.countDocuments({
      video: videoId,
    });

    await video.save();

    this.ctx.status = 204;
  }
  async likeVideo() {
    const { Video, Like } = this.app.model;
    const { videoId } = this.ctx.params;
    const userId = this.ctx.user._id;
    const video = await Video.findById(videoId);

    if (!video) {
      this.ctx.throw(404, 'Video Not Found');
    }

    const doc = await Like.findOne({
      user: userId,
      video: videoId,
    });

    let isLiked = true;

    if (doc && doc.like === 1) {
      await doc.remove(); // 取消点赞
      isLiked = false;
    } else if (doc && doc.like === -1) {
      doc.like = 1;
    } else {
      await new Like({
        user: userId,
        video: videoId,
        like: 1,
      }).save();
    }

    // 更新喜欢视频的数量
    video.likesCount = await Like.countDocuments({
      video: videoId,
      like: 1,
    });

    // 更新不喜欢视频的数量
    video.likesCount = await Like.countDocuments({
      video: videoId,
      like: -1,
    });

    // 将修改保存到数据库中
    await video.save();

    this.ctx.body = {
      video: {
        ...video.toJSON(),
        isLiked,
      },
    };
  }
  async dislikeVideo() {
    const { Video, Like } = this.app.model;
    const { videoId } = this.ctx.params;
    const userId = this.ctx.user._id;
    const video = await Video.findById(videoId);

    if (!video) {
      this.ctx.throw(404, `Not Video Found For ID - ${videoId}`);
    }

    const doc = await Like.findOne({
      user: userId,
      video: videoId,
    });

    let isdisLiked = true;

    if (doc && doc.like === -1) {
      await doc.remove(); // 取消点赞
      isdisLiked = false;
    } else if (doc && doc.like === 1) {
      doc.like = -1;
      await doc.save();
    } else {
      await new Like({
        user: userId,
        video: videoId,
        like: -1,
      }).save();
    }

    // 更新喜欢视频的数量
    video.likesCount = await Like.countDocuments({
      video: videoId,
      like: 1,
    });

    // 更新不喜欢视频的数量
    video.likesCount = await Like.countDocuments({
      video: videoId,
      like: -1,
    });

    // 将修改保存到数据库中
    await video.save();

    this.ctx.body = {
      video: {
        ...video.toJSON(),
        isdisLiked,
      },
    };
  }
  async getUserLikedVideos() {
    const { Like, Video } = this.app.model;
    let { pageNum = 1, pageSize = 10 } = this.ctx.query;
    const userId = this.ctx.user._id;
    pageNum = Number.parseInt(pageNum);
    pageSize = Number.parseInt(pageSize);

    const filterDoc = {
      user: userId,
      like: 1,
    };

    const like = await Like.find(filterDoc).sort({ createAt: -1 })
      .skip((pageNum - 1) * pageSize)
      .limit(pageSize);

    // console.log(like);
    const getVideos = Video.find({
      _id: {
        $in: like.map(item => item.video),
      },
    }).populate('user');
    const getVideosCount = Like.countDocuments(filterDoc);
    const [ videos, videosCount ] = await Promise.all([
      getVideos,
      getVideosCount,
    ]);
    this.ctx.body = {
      videos,
      videosCount,
    };
  }
}

module.exports = VideoController;
