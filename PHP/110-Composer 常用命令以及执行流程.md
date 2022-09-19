### 1.Composer 常用命令以及执行流程

**Composer 常用命令**

| 命令                    | 描述                                                         |
| ----------------------- | ------------------------------------------------------------ |
| composer list           | 获取帮助信息                                                 |
| composer init           | 以交互方式填写 composer.json  文件信息,生成并初始化composer.json 文件 |
| composer install        | 从当前目录读取composer.json 文件,处理依赖关,并安装到vendor 目录下 |
| composer update         | 获取依赖的最新版本,升级composer.lock 文件                    |
| composer require        | 添加新的依赖包到composer.json 文件中并执行更新               |
| composer search         | 在当前项目中搜索依赖包                                       |
| composer show           | 列举所有可用的资源包                                         |
| composer validate       | 检测composer.json 文件是否有效                               |
| composer self-update    | 将composer 工具更新到最新版本                                |
| composer create-project | 基于composer 创建一个项目                                    |

**2.类库的规范**

- COmposer 利用PSR-0 和PSR-4 ,以及PHP5.3 的命名空间构造了一个繁荣的PHP 生态系统
- PSR 即PHP 推荐标准,目前通过审核的有PSR-1 至PSR-4,还有最近的PSR-6和PSR-7.重点是成熟前四个标准,对于初学者来说,可以起到一个很好的代码规范作用,早些时候还有PSR-0 规范,但已经废弃并被PSR-4 取代,例如,PSR 规范描述了从文件路径自动加载类,可与PSR-0 规范互操作,可一起使用,PSR 规范也描述了自动加载的文件应当放在哪里,PSR-4 规范能够满足面向package 的自动加载,它规范了如何从文件路径自动加载类,同时规范了自动加载文件的位置,PSR 描述的规范内容很多,具体细节请参考PSR 规范文档