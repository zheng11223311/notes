### 1.了解会话控制

**1.什么是会话**

现实中.两个人之间的对话就是会话

再计算机中,客户端和服务器之间的通讯就是会话

**2.什么是会话控制**

对会话的控制就是会话控制

**3.HTTP 协议是什么?**

HTTP 叫无状态跟踪协议,老年痴呆协议,不能有任何的状态跟踪,不能记录任何的状态

**4.cookie 的使用方法:**

- 添加COOKIE 值
  - setcookie(下标,值,有效时间,有效作用域( '/' 表示当前作用域下所有的页面));
- 修改COOKIE 值
  - setcookie(下标,新值,新的有效时间,新的有效作用域);
- 删除COOKIE 值
  - setcookie(下标,null,设置有效时间为已经过去的时间,有效作用域);
- 查看COOKIE 值
  - cookie 所有的值都是使用依赖于系统提供的$_cookie 预定义数组,所有的cookie 设置的值都会成为该数组的一个元素,查看cookie 值可以使用var_dump() 或者print_r()
  - 如果使用特定的cookie 的值:$_COOKIE['下标'];
- $_COOKIE 是一个可以跨页面的系统预定义变量
- $_COOKIE 再设置当前页面是无法读取信息的,设置cookie 的时候无法读取cookie
- COOKIE 的缺点
  - 他必须依赖于客户端允许(客户端可以关闭COOKIE)     浏览器在 设置>隐私与安全>关闭cookie



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
  <form action="./1-php copy 109.php" method="post">
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
 
   if($_POST['name']=='xx'&&$_POST['pwd']=='a.jpg'){
    // var_dump($_POST);
     //登入成功
     //制作cookie(身份卡)
    //  参数 键,值,有效时间,当前作用域有效
     setCookie('islogin',true,time()+3600,'/');
     setCookie('name',$_POST['name'],time()+3600,'/');
     echo '<script>alert("登入成功");location.href="./1-php copy 110.php"</script>';
   }else{
    echo '<script>alert("登入失败")</script>';
   }

?>
```

**登入成功显示内容**

```php
<?php
// 这是项目的首页
// var_dump($_COOKIE);
if(!isset($_COOKIE['islogin'])||$_COOKIE['islogin']!=true){
  //用户没有登入
  echo '对不起,您无权访问,3s 后自动跳转到登入页面';
  echo '<meta http-equiv="refresh" content="3;url=./1-php copy 108.php">';
}else{
  //已经登入
  echo '欢迎'.$_COOKIE['name']."回来";
}

?>
<a href="./1-php copy 111.php">退出登入</a>
```

**登出,删除cookie**

```php
<?php
  //退出登入操作
setCookie('islogin',null,time()-1,'/');
setCookie('name',null,time()-1,'/');

echo '登出成功';
?>
```

