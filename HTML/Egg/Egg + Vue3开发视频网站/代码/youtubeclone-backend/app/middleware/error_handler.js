// 错误统一处理中间件
module.exports = () => { // 外层函数负责接收参数
  // 返回一个中间件函数
  return async function errorHandler(ctx, next) {
    try {
      await next(); // 传递到下一个中间件
    } catch (error) {
      // 所有的异常都在 app 上触发一个 error 事件,框架会记录一条错误日志
      ctx.app.emit('error', error, ctx); // 手动抛出异常,使框架自动记录错误日志

      const status = error.status || 500;
      // 生产环境时 500 错误的详细错误内容不返回给客户端,因为可能包含敏感信息
      const err = status === 500 && ctx.app.config.env === 'prod' ? 'Internal Server Error' : error.message;
      // 从err 对象上读取各个属性,设置到响应体中
      ctx.body = { err };
      if (status === 422) {
        ctx.body.detail = error.errors;
      }
      ctx.status = status;
    }
  };
};
