### 1.ThinkPHP geetest 验证码

**Geetest 官网:**

http://www.geetest.com/

1. 注册账号
2. 登入账号,打开Test-Button
3. 新增验证
4. 复制对应ID 和Key ,配置验证码

**geetest 接入:**

1. 接入demo 时候要注意,使用的key 和id 是你网站上生成的,否则使用默认的可能无法正常运行demo
2. geetest 核心文件:
   1. 后端核心库文件:`/lib/class.geetestlib.php`
   2. 前端核心库文件:`static/gt.js`
   3. 后端的模拟接口:
      1. `/web/StartCaptchaServlet`
      2. `/web/VerifyLoginServlet`
   4. 配置文件
      1. `/config/config.php`

**geetest 的接入流程:**

> 1.获取验证参数(获取验证码相关参数,得到唯一阿德返回值) 
>
> --> 前端请求初始化接口
>
>  -->StartCaptchaServlet.php
>
>  -->获得返回值(此时已经知道geetest 的服务器状态即是否宕机,存在session 中,以及geetest_challage,geetest_validate,geetest_seccode 参数) 
>
>  -->前端渲染验证码样式
>
>  -->完成验证码初始化

2.提交表单数据进行二次验证

 -->VeraifyLoginServlet.php

 -->请求参数geetest_challage,geetest_validate,geetest_seccode 