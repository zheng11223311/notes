### 1.ThinkPHP 目录结构和MVC 模式

**如何安装TP**

1. 源代码包安装
2. Git 安装
3. Composer 安装

**目录结构**

- application  `应用目录,是整个网站的核心,一个应用代表一个网站`
  - index `前台目录`
    - controller `控制器`
    - model `数据模型`
    - view `页面`
  - admin `后台目录`
- extend `扩展类目录`
- public `静态资源和入口文件`
  - static `存放静态资源 css,js,img`
  - index.php `入口文件`
- runtime `网站运行临时目录`
- tests `测试目录`
- thinkphp `TP 框架的核心文件`
  - lang `语言包`
  - library `TP 核心文件`
  - tpl `模板页面`
- vendor `第三方扩展目录`

**URL 地址了解**

输入:http://www.tp.com/

访问到的是:http://www.tp.com/index.php/Index/Index/index

http://   www.tp.com/   index.php     /Index   /Index          /index

协议		域名					入口文件		前台    前台控制器   方法

**了解TP 开发模式**

1. 开启调试模式(C:\\AppServ\\www\\tp5\\application\\config.php)

   > 修改为:'app_debug:=>true'

2. 连接数据库(C:\\AppServ\\www\\tp5\\application\\database.php)

3. 控制器中书写代码(C:\\AppServ\\www\\tp5\\application\\index\\controller\\index.php)

   1. ```php
      <?php
      namespace app\index\controller;
      //引入系统数据库类
      use think\Db;
      //引入系统控制器类
      use think\Controller;
      class Index extends Controller{
      	public functon index(){
      		//从数据库中读取数据
      		$data=Db::table('user')->select();
      		
      		//分配数据给页面
      		$this->assign('data',$data);
      		
      		//加载页面
      		return view();
      	}
      }
      ```

4. 页面中书写代码(C:\\AppServ\\www\\tp5\\application\\index\\view\\index\\index.html)

   1. ```html
      {volist name="data" id="value"}
      <tr>
      	<td>{$value.id}</td>
          <td>{$value.name}</td>
          <td>{$value.pass}</td>
      </tr>
      {/volist}
      ```

**MVC 模式**

- m `model模型`

  > 作用:执行数据库相关处理

- v `view 视图`

  > 作用:其实就是页面

- c `controller 控制器`

  > 作用:主要负责整个逻辑运转

**MVC 的变形**

1. MC `模型和控制器`
   1. 主要作用:用于接口开发
2. VC `视图和控制器`
   1. 主要作用:单页面的网站,没有数据库交互

**更多请看TP5 书册**

