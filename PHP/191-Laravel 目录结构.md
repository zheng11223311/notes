### 目录结构

**Laravel 5.5 目录结构及composer.json 文件解析**

**目录或文件**

- app		`包含Controller,Model 等在内的应用目录,大部分业务将在该目录下进行`
  - Console	`命令行程序目录`
    - Commands 	`包含了用于命令执行的类,可在该目录下自定义类`
    - Kernel.php      `命令调用内核文件,包含commands 变量(命令清单,自定义的命令需要加入到这里)和schedule 方法(用于任务调度)...`
  - Events  `事件目录`
  - Exceptions `包含了自定义错误和异常处理类`
  - Http `HTTP 传输层相关的类目`
    - Controllers  `控制器目录`
    - Middleware `中间件目录`
    - Requests `请求类目录`
    - Kernel.php  `包含http 中间件和路由中间件的内核文件`
  - Jobs      `该目录下包含队列的任务类`
  - Listeners   `监听器目录`
  - Providers     `服务提供者目录`
  - User.php     `自带的模型实例,我们新建的Model 默认也存储在该目录`
- bootstrap `框架启动载入目录`
  - app.php     `创建框架应用实例`
  - autoload.php       `自动加载`
  - cache            `存放框架启动缓存,web 服务器需要有该目录的写入权限`
- config         `各种配置文件的目录`
  - app.php   `系统级配置文件`
  - auth.php  `用户身份认证配置文件,指定好table 和model 就可以很方便的使用身份认证功能了`
  - broadcasting.php    `事件广播配置文件`
  - cache.php              `缓存配置文件`
  - compile.php          `编译额外文件和类需要的配置文件,一般用户很少用到`
  - database.php         `数据库配置文件`
  - filesystems.php      `文件系统配置文件,这里可以配置云存储参数`
  - mail.php                  `电子邮件配置文件`
  - queue.php               `消息队列配置文件`
  - services.php            `可存放第三方服务的配置信息`
  - session.php           `配置session 的存储方式,生命周期等信息`
  - view.php                 `模板文件配置文件,包含模板目录和编译目录等`
- database               `数据库相关目录`
  - factories            `5.1以上版本的新特性,工厂类目录,也是用于数据填充`
    - ModelFactory.php            `在该文件可定义不同Model 所需填充的数据类型`
  - migreations       `存储数据库迁移文件`
  - seeds                 `存放数据填充类的目录`
    - DatabaseSeeder.php           `执行php artisan db:seed 命令将会调用该类的run 方法,该方法可调用执行该目录下其他Seeder 类,也可调用...`
- public          `网站入口,应当将IP 或域名指向该目录而不是根目录,可供外部访问的css,js 和图片等资源皆放置于此`
  - index.php      `入口文件`
  - .htaccess       `Apache 服务器用该文件重写URL`
  - web.config      `IIS 服务器用该文件重写URL`
- resources       `资源文件目录`
  - assets     `可存放包含LESS,SASS,CoffeeScript 在内的原始资源文件`
  - lang          `本地化文件目录`
  - views        `视图文件就放在这啦`
- routes.php    `强大的路由`
- storage           `存储目录,web 服务器需要有该目录及所有子目录的写入权限`
  - app          `可用于存储应用程序所需要的一些文件`
  - framework      `该目录下包括缓存,sessions 和编译后的视图文件`
  - logs          `日志目录`
- tests              `测试目录`
- vendor           `该目录下包含Laravel 源代码和第三方依赖包`
- .env               `环境配置文件.config 目录下的配置文件会使用该文件里面的参数,不同环境使用不同的.env 文件即可`
- artisan          `强大的命令行接口,你可以在app/Console/Commands 下编写自定义命令`
- composer.json       `存放依赖关系的文件`
- composer.lock         `锁文件,存放安装时依赖包的真实版本`
- gulpfile.js                  `gulp(一种前端构建工具)配置文件`
- package.json           `gulp 配置文件`
- phpspec.yml            `phpspec (一种PHP 测试框架)配置文件`
- phpunit.xml             `phpunit (一种PHP 测试框架)配置文件`
- server.php              `PHP 内置的Web 服务器将把这个文件作为入门,以public/index.php 为入口的可以忽略掉该文件`



**composer.json 文件**

```json
{
    "name":"laravel/laravel",						//项目名称
    "description":"The Laravel Framework",			//描述
    "keywords":["framework","laravel"],				//关键字
    "license":"MIT",								//许可类型
    "type":"project",								//类型
    "require":{
        "php":">5.5.9",								//PHP 版本
        "laravel/framework":"5.2.*"					//框架版本
    },
    "require-dev":{									//依赖包
        "fzaninotto/faker":"~1.4",
        "mockery/mpckery":"0.9.*",
        "phpunit/phpunit":"~4.0",
        "symfony/css-selector":"2.8.*|3.0.*",
        "symfony/dom-selector":"2.8.*|3.0.*"
    },
    "autoload":{									//自动加载
        "classmap":[
            "database"
        ],
        "psr-4":{									//一种自动加载的规范
            "APP\\":"app/"
        }
    },
    "autoload-dev":{								//加载测试
         "classmap":[
            "tests/TestCase.php"
        ]
    },
    "scripts":{										//执行脚本
        "post-root-package-install":[
            "php -r \"copy('.evn.example','.evn');\""
        ],
        "post-create-project-cmd":[
        	"php artisan key:generate"
        ],
         "post-install-cmd":[
        	"php artisan clear-compiled",
             "php artisan optimize"
        ],
        "post-update-cmd":[
        	"php artisan clear-compiled",
             "php artisan optimize"
        ],
    },
    "config":{
        "perferred-install":"dist"				//配置项
    },
    "repositories":{							//配置composer 镜像
        "packagist":{
            "type":"composer",
            "url":"https://packagist.phpcomposer.com"
        }
    }
}
```

