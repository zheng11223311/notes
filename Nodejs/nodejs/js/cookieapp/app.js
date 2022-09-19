var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');   //输出到错误信息(日志)文件


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var upload = require('./routes/upload');
var download = require('./routes/download');

var app = express();

// view engine setup
// express 视图的设置
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

//express 中间件,一层一层往下使用中间件
app.use(logger('dev'));   //输出开发环境下的日志信息
app.use(express.json());  //解析json 数据
app.use(express.urlencoded({ extended: false }));   //解析body 的数据
app.use(cookieParser('secret'));    //处理cookie
app.use(express.static(path.join(__dirname, 'public')));  //处理静态文件

//路由匹配
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/imgUpload', upload);
app.use('/download', download);

// catch 404 and forward to error handler
//设置404 中间件
app.use(function(req, res, next) {
  //渲染自己的404 页面,404 所用的js 和css 代码 都放在public 文件夹
  res.render('404.ejs')
  // next(createError(404));
});

// error handler
//处理错误的中间件
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
