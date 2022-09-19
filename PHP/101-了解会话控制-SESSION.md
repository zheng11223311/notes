### 1.了解会话控制

**1.什么是会话**

现实中.两个人之间的对话就是会话

再计算机中,客户端和服务器之间的通讯就是会话

**2.什么是会话控制**

对会话的控制就是会话控制

**3.HTTP 协议是什么?**

HTTP 叫无状态跟踪协议,老年痴呆协议,不能有任何的状态跟踪,不能记录任何的状态

**4.session 的使用方法:**

**1.session 的操作跟数组的操作一模一样**

**2.在页面中使用session,那么必须在页面开始处先启动session,即session_start()**

**3.设置或者获取sessionid,通过函数session_id()**

- 添加SESSION 值
  - $_SESSION['下标']=值
- 修改SESSION 值
  - $_SESSION['下标']=新值
- 删除SESSION 值
  - 删除session 的变量值(保留数据类型,不要使用unset(),会删除其数组的数据类型为null 类型)
    - $_SESSION['下标']=array()
  - 删除所有session 信息(包括文件),一般使用于退出操作
    - 使客户端COOKIE 中的SESSIONID 过期
    - 清空页面SESSIONID 的变量值
    - 摧毁服务器的SESSION 文件
- 使用SESSION 
  - 查看全部SESSION 信息
    - var_dump() 或者print_r();
  - 使用其中session 的某一个元素
    - $_SESION['下标'];
  - session 依赖于cookie,关闭cookie 会导致session 失效



**登入操作**

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
  <form action="./1-php copy 113.php" method="post">
    用户名: <input type="text" name="name" ><br/>
    密码: <input type="password" name="pwd" ><br/>
    <button>登入</button>
  </form>
</body>
</html>
```

**登入成功,设置cookie**

```php
<?php
  // 得到用户输入的用户名和密码
  // 然后再数据库中查询是否哟与该用户的记录
  // 有数据 密码正确 登入成功
  // 没有数据 提示用户名或密码错误,请注册
  
  // 手动开启session,
  // 不建议在phpinfo 配置文件中开启自动开启session,因为在类和函数加载中session 优先加载,浪费资源
  session_start();
   if($_POST['name']=='xx'&&$_POST['pwd']=='a.jpg'){
    // var_dump($_POST);
     //登入成功
     //制作session(身份卡) 二维数组方便记录属于user 的session,可以一维数组 $_SESSION['islogin']=true;
     $_SESSION['user']['islogin']=true;
     $_SESSION['user']['name']=$_POST['name'];
     echo '<script>alert("登入成功");location.href="./1-php copy 114.php"</script>';
   }else{
    echo '<script>alert("登入失败")</script>';
   }

?>
```

**登入成功显示内容**

```php
<?php
// 这是项目的首页
session_start();
echo session_id();  //session 存储在服务器,获取当前会话的id
// 存储在服务器temp 文件夹下,文件名为session_id 的值
// echo session_id('123');  //设置当前会话的id
// sesion_id 的值存入在cookie中,需要借助cookie 才能正常访问
if(!isset($_SESSION['user']['islogin'])||$_SESSION['user']['islogin']!=true){
  //用户没有登入
  echo '对不起,您无权访问,3s 后自动跳转到登入页面';
  echo '<meta http-equiv="refresh" content="3;url=./1-php copy 112.php">';
}else{
  //已经登入
  echo '欢迎'.$_SESSION["user"]['name']."回来";
}

?>
<a href="./1-php copy 115.php">退出登入</a>
```

**登出,删除cookie**

```php
<?php
  //退出登入操作
  session_start();
  // 清空所有session
// $_SESSION=array();
// 清除 和user 有关的session
$_SESSION['user']=array();
// 让session_id 失效
// PHPSESSID 在浏览器请求头中cookie 中查看得到
// setcookie('PHPSESSID',null,time()-1,'/');
//获取session 的名称
echo session_name();
//删除session_name() 的cookie 会导致登入失效,需要重新登再次获取
//session_start()是session机制的开始，它有一定概率开启垃圾回收,因为session是存放在文件中，PHP自身的垃圾回收是无效的，SESSION的回收是要删文件的，这个概率是根据php.ini的配置决定的。session会判断当前是否有$_COOKIE[session_name()];session_name()返回保存session_id的COOKIE键值，这个值可以从php.ini找到：	session.name = PHPSESSID //默认值
setcookie(session_name(),null,time()-1,'/');  //session_name() =='PHPSESSID' 默认情况下是相等的,如果修改了php.ini 配置的session.name  那就是另外一个值了
// 删除session 在temp 文件夹中保存的文件
session_destroy();

echo '登出成功';
?>
```

