// app/controller/news.js
const Controller = require('egg').Controller;

class NewsController extends Controller {
  async list() {
    const dataList = {
      list: [
        { id: 1, title: 'this is news 1', url: '/news/1' },
        { id: 2, title: 'this is news 2', url: '/news/2' },
      ],
    };
    await this.ctx.render('news/list.tpl', dataList);  //渲染模板,将数据提供给模板,渲染是异步的,需要await  访问http://localhost:7001/news
  }
}

module.exports = NewsController;
