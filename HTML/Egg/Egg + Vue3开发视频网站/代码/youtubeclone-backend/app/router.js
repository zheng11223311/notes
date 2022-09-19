'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  const auth = app.middleware.auth();

  // router.get('/', controller.home.index);
  router.prefix('/api/v1'); // 设置基础路径
  // 注册
  router.post('/users', controller.user.create); // http://127.0.0.1:7002/api/v1/users
  // 登入
  router.post('/users/login', controller.user.login); // http://127.0.0.1:7002/api/v1/users/login
  // 获取当前登入用户
  router.get('/user', auth, controller.user.getCurrentUser); // 路径 要经过的中间件 控制器 http://127.0.0.1:7002/api/v1/user
  // 更新当前登入用户的资料
  router.patch('/user', auth, controller.user.update); // 路径 要经过的中间件 控制器 http://127.0.0.1:7002/api/v1/user
  // 获取用户资料 传递参数.使查看其他用户时,可以不用验证当前账号是否登入
  router.get('/user/:userId', app.middleware.auth({ required: false }), controller.user.getUser); // 路径 要经过的中间件 控制器 http://127.0.0.1:7002/api/v1/user/62d9097b03166e1c1cdea254


  // 订阅频道
  router.post('/user/:userId/subscribe', auth, controller.user.subscribe); // 路径 要经过的中间件 控制器 http://127.0.0.1:7001/api/v1/user/62d9097b03166e1c1cdea254/subscribe
  // 取消订阅频道
  router.delete('/user/:userId/subscribe', auth, controller.user.unsubscribe); // 路径 要经过的中间件 控制器 http://127.0.0.1:7001/api/v1/user/62d9097b03166e1c1cdea254/unsubscribe
  // 获取用户订阅的频道列表
  router.get('/user/:userId/subscriptions', auth, controller.user.getSubscriptions); // 路径 要经过的中间件 控制器 http://127.0.0.1:7001/api/v1/user/62d9097b03166e1c1cdea254/subscriptions
  // 创建视频-接口实现
  router.post('/videos', auth, controller.video.createVideo);
  // router.post('/videos', controller.video.createVideo);
  // 可以使用链式调用 router.get(...).post(...).get(...)
  // 获取视频详情-接口实现
  router.get('/videos/:videoId', app.middleware.auth({ required: false }), controller.video.getVideo);
  // 获取视频列表-接口实现
  router.get('/videos', controller.video.getVideos);
  // 获取用户发布的视频列表-接口实现
  router.get('/users/:userId/videos', controller.video.getUserVideos);
  // 获取用户关注的频道视频列表-接口实现
  router.get('/users/videos/feed', auth, controller.video.getUserFeedVideos);
  // 修改视频-接口实现
  router.patch('/videos/:videoId', auth, controller.video.updateVideos);
  // 删除视频-接口实现
  router.delete('/videos/:videoId', auth, controller.video.deleteVideos);
  // 添加视频评论-接口实现
  router.post('/videos/:videoId/comments', auth, controller.video.createComment);
  // 获取视频评论列表-接口实现
  router.get('/videos/:videoId/comments', controller.video.getVideoComments);
  // 删除视频评论-接口实现
  router.delete('/videos/:videoId/comments/:commentId', auth, controller.video.deleteVideoComments);
  // 喜欢视频-接口实现
  router.post('/videos/:videoId/like', auth, controller.video.likeVideo);
  // 不喜欢视频-接口实现
  router.post('/videos/:videoId/dislike', auth, controller.video.dislikeVideo);
  // 获取用户喜欢的视频列表-接口实现
  router.get('/user/videos/like', auth, controller.video.getUserLikedVideos);

};
