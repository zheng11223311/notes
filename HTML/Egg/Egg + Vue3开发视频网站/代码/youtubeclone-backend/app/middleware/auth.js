// 授权认证 中间件
module.exports = (options = { required: true }) => { // options 获取路由传递过来的参数
  return async (ctx, next) => {
    // 1.获取请求头中的token 数据
    let token = ctx.headers.authorization;
    token = token ? token.split('Bearer ')[1] : null; // 格式:Bearer +空格+ token 数据,这里截取并获取到token 数据
    // 2.验证 token ,无效返回 401

    if (token) {
      try {
        // 3.token 有效,根据userId 获取用户数据挂载到 ctx 对象中给后续中间件使用
        const data = ctx.service.user.verifyToken(token); // 使用service/auth.js 验证
        ctx.user = await ctx.model.User.findById(data.userId);
      } catch (error) {
        ctx.throw(401);
      }
    } else if (options.required) {
      ctx.throw(401);
    }


    // 4.next 执行后续中间件
    await next();
  };
};
