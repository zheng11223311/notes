### 虚拟主机配置

- 手动方式配置(wamp)
- 可视化工具配置(phpstudy)
- 运行laravel 项目

**可视化工具配置(phpstudy)**

> 修改hosts 文件,将域名绑定到ip

添加

127.0.0.1  www.blog.com

> 修改apache 配置文件,使apache  支持虚拟主机

打开 Include conf/extra/httpd-vhosts.conf

> 修改httpd-vhosts.conf,添加虚拟主机

<VirtualHost *:80>......</VirtualHost >

> 将blog 放置网站根目录

访问

http://localhost/blog/public

修改过hosts 的访问www.blog.com/public



命令行创建控制器

```
php artisan make:controller UserController
```

命令行创建Model

```
php artisan make:model Model\user
```

命令行创建中间件

```
php artisan make:middleware IsLogin
```

查看路由相关的资源

```
php artisan route:list
```



### 后台模板搭建

- 使用x-admin 后台框架
- 学习如何使用laravel 的blade 模板
- 常用的后台框架模板
  - H-ui.admin
    - [H-ui.admin V3.1后台模版 - H-ui前端框架官方网站](http://h-ui.net/H-ui.admin.shtml)
  - Amaze UI
    - [Amaze UI | 中国首个开源 HTML5 跨屏前端框架 (shopxo.net)](https://amazeui.shopxo.net/)
  - X-admin(已停止维护)
    - [X-admin - 经典前端网站后台管理模板框架 (xuebingsi.com)](http://x.xuebingsi.com/)

**自动加载文件**

```
composer dump-autoload
```

