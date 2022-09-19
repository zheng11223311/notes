### 1.MVC 设计模式

1. 设计模式不限语言,任何一门服务器脚本语言都可以使用
2. m =>model  模型层   负责加工处理数据,返回结果
3. v  =>view   视图层    负责接收信息和显示信息
4. c  => control 控制器    负责业务逻辑地处理

![Snipaste_2021-11-20_11-46-40](D:\学习\wanye\PHP\img\Snipaste_2021-11-20_11-46-40.png)

### 2.MVC 设计模式实现view  及control

创建一个project 文件夹

**project 下创建 View 文件夹**

​	View 下创建 index.html 文件夹

```php
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>项目首页</title>
</head>
<body>
    这是首页
</body>
</html>
```

​	 	View 下创建 goods.html 文件夹

```php
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    这是商品显示页面
</body>
</html>
```

**project 下创建 Model文件夹**

​	Model 下创建 MySQL.class.php 文件

```php
<?php

class MySQL{
    //连接数据库 对数据库进行增删改查操作
   
    function show(){
       echo '显示用户';
    }
    function insert(){
       echo '插入数据';
    }
    function delete(){
    }
    function select(){
        echo '查询数据';
    }
    function update(){
        echo '修改数据';
    }
}
?>
```

**project 下创建 Control文件夹**

​	 Control 下创建Goods.class.php 文件

```php
<?php

class Goods{
    private $methods=array('show','goodsAdd','goodsdel','goodssearch','goodsuodate');
    function show(){
        echo '这是显示商品';
        // $this->methods[]='show';
        // include './';
    }
    function goodsAdd(){
        echo '这是添加商品';
        // $this->methods[]='goodsAdd';
        // include './';
    }
    function goodsdel(){
        echo '这是删除商品';
        // include './';
    }
    function goodssearch(){
        echo '这是搜索商品';
        // include './';
    }
    function goodsuodate(){
        echo '这是修改商品';
        // include './';
    }
    //调用不存在的方法时自动触发
    function __call($name,$arg){
        if(!in_array($name,$this->methods)){
            echo '404,你好像走错了';
        }
        // if($name=='login'){
        //     echo '404,你好像走错了';
        // }
    }
}
?>
```

​	 Control 下创建User.class.php 文件

```php
<?php

class User{
    //所有用户操作相关的内容都放在这里
    private $m;
    function __construct(){
        $this->m=new MySQL;
    }
    function show(){
        echo '这是显示用户';
        // include './';
    }
    function add(){
        echo '这是添加用户';
        // include './';
    }
    function search(){
        echo '这是搜索用户';
        // include './';
    }
    function search(){
        echo '这是删除用户';
        // include './';
    }
}
?>
```

​	 Control 下创建Index.class.php 文件

```php
<?php

class Index{
    function show(){
        //默认显示首页的方法
        // 被index.php 包含,路径不能再是../ 而是以index.php 路径为
        // 基础，改为./
        include './View/index.html';
    }
    function login(){
        //显示登入的方法
    }
    function register(){
        //显示注册的方法
    }
}
?>
```

**project 下创建 args 文件夹 (自己有需求,就创建,扩展文件)**

​	 args 下创建Upload.class.php 文件

```php
<?php
class Upload{
    function do_upload(){
        echo '上传中...';
    }
}

?>
```

**project 下创建 index.php 文件(主入口文件)**

```php
<?php
//这是主入口文件,所有的内容都从该文件中触发
include './Control/Index.class.php';
// $m=new Index;
// $m->show();
// 需要哪个类就new 哪个类   调用对应的方法
// 制作路由规则?m=goods&a=goodsAdd
$m=ucfirst(strtolower($_GET['m']))??'Index';
$a=$_GET['a']??"show";

spl_autoload_register(function($className){
    if(file_exists('./Control/'.$className.'.class.php')){
        require('./Control/'.$className.'.class.php');
    }elseif(file_exists('./Model/'.$className.'.class.php')){
        require('./Model/'.$className.'.class.php');
    }else{
        die( '404');

    }
});
$obj=new $m;
$obj->$a();

?>

```

