var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');  //输出到错误信息(日志)文件

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// express 视图的设置
app.set('views', path.join(__dirname, 'views'));
// app.set('view engine', 'jade');    //在views 下使用jade 模板文件
app.set('view engine', 'ejs');  //在views 下使用ejs 模板文件

//express 中间件,一层一层往下使用中间件
app.use(logger('dev'));  //输出开发环境下的日志信息
app.use(express.json());  //解析json 数据
app.use(express.urlencoded({ extended: false })); //解析post 请求的 body 的数据
app.use(cookieParser());
// 在 app 文件夹开启静态服务,将前端文件夹app 作为静态文件
app.use(express.static(path.join(__dirname, '../app')));  ////处理静态文件
// console.log(path.join(__dirname,'../app'));


//路由匹配
app.use('/', indexRouter);
app.use('/users', usersRouter);

//设置404 中间件
app.use(function(req, res, next) {
  //允许跨域请求
res.append('Access-Control-Allow-Origin','*')   //允许所有的源
res.append('Access-Control-Allow-Content-Type','*')   //允许所有的请求类型
//渲染自己的404 页面,404 所用的js 和css 代码 都放在静态文件app 文件夹
res.render('404.ejs')
  // next(createError(404));
});

//处理错误的中间件
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

var server = app.listen(3000,'127.0.0.1', function() {

  var host = server.address().address
  var port = server.address().port
  
  console.log("Node.JS 服务器已启动，访问地址： http://%s:%s", host, port)

})
module.exports = app;
