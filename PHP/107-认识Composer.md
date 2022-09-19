### 1.认识Composer

**PHP 中常用扩展库模式PK**

**1.PECL:**

是PHP 扩展的存储模块,提供了所有已知的扩展和托管设施的目录,用于下载和开发PHP 扩展

与PEAR 相似,但是是用c 语言写的,开发的,用来开发一些php 难以完成的项目

**2.PEAR:**

PEAR 是一个可重用PHP 组件的框架和分发系统(已被Composer 替代)

**3.phpize:**

用phpize 编译共享PECL 扩展库

**4.Composer:**

是PHP 用来管理依赖(dependency) 关系的工具

### 2.Composer 的代码库在哪里?

**常用国内镜像服务器**

https://pkg.phpcomposer.com

https://php.cnpkg.org/

https://mirrors.aliyun.com/composer/

包下载工具(只有php 的框架)(基于github 的数据,同步github):[Packagist](https://packagist.org/)

**项目中常用的Composer 代码包**

| 包名                  | 说明                                            | 地址                                                         |
| --------------------- | ----------------------------------------------- | ------------------------------------------------------------ |
| guzzlehttp/guzzle     | 功能强大的HTTP 请求库                           | [guzzlehttp/guzzle - Packagist](https://packagist.org/packages/guzzlehttp/guzzle) |
| hashids/hashids       | 数字ID 转换字符串,支持多语言                    | [hashids/hashids - Packagist](https://packagist.org/packages/hashids/hashids) |
| gregwar/captcha       | 验证码                                          |                                                              |
| slince/upload         | 文件上传                                        |                                                              |
| jasongrimes/paginator | 分页                                            |                                                              |
| intervention/image    | 图片处理,获取图片信息,上传,格式转换,缩放,裁剪等 | [intervention/image - Packagist](https://packagist.org/packages/intervention/image) |
| phpmailer/phpmailer   | 邮件发送                                        | [phpmailer/phpmailer - Packagist](https://packagist.org/packages/phpmailer/phpmailer) |
| phpoffice/phpexcel    | excel 操作类                                    | [phpoffice/phpexcel - Packagist](https://packagist.org/packages/phpoffice/phpexcel) |
| monolog/monolog       | 日志操作,composer 官方就是用它做例子的          | [monolog/monolog - Packagist](https://packagist.org/packages/monolog/monolog) |
| catfan/medoo          | 简单易用的数据库操作类,支持各种常见的数据库     | [catfan/medoo - Packagist](https://packagist.org/packages/catfan/medoo) |
| league/route          | 路由调度                                        | [league/route - Packagist](https://packagist.org/packages/league/route) |
| Carbon/Carbon         | 时间操作                                        | [nesbot/carbon - Packagist](https://packagist.org/packages/nesbot/carbon) |

