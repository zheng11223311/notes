 // app/router.js  路由配置模块

 module.exports = (app) => {
    const { router, controller } = app;
    router.get('/', controller.home.index);
    router.get('/news', controller.news.list);
  };