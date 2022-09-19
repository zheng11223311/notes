### 1.PHP连接数据库

MariaDB 比MySQL 更好的数据库,MySQL 商业版要收费,社区版不收费,一些功能无法使用,创作者又重新创建了MariaDB,使用命令和MySQL 一致

```
MySQL 操作
创建一个数据库lmonkey
创建用户表user
uid int 自增 主键
name VARCHAR(30) NOT NULL
pwd char(37) NOT NULL DEFAULT 'a.jpg'	//md5()加密获得32位字符加.jpeg=37位
sex tinyint NOT NULL default 0	//0 女 1 男 2 保密
age tinyint UNSIGNED NOT NULL DEFAULT  18
```

```sql
CREATE DATABASE lmonkey;
USE lmonkey;
CREATE TABLE user(
uid INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
pwd char(37) NOT NULL DEFAULT 'a.jpg',
sex tinyint NOT NULL default 0,
age tinyint UNSIGNED NOT NULL DEFAULT  18
);
```

**1.七剑下天山**

1. 第一剑:连接数据库
   1. mysqli_connect() 连接并选择数据库
   2. 参数1:连接数据库的地址
   3. 参数2:数据库的用户名
   4. 参数3:数据库的密码
   5. 参数4:可选参数 要操作的默认数据库
   6. 返回值:成功返回数据库对象,失败返回false
2. 第二剑选择数据库
   1. mysqli_select_db() 选择数据库
   2. 参数1:由mysqli_connection 连接数据库成功返回的对象
   3. 参数2:要操作或者要更改的数据库
   4. 返回值:成功返回true,失败返回false
3. 第三剑:设置字符集
   1. mysqli_set_charset() 设置字符集
   2. 参数1:由mysqli_connection 连接数据库成功返回的对象
   3. 参数2:要设置的字符集
   4. 返回值:成功返回的true,失败返回值false
4. 第四剑:准备SQL 语句(INSERT,SELECT,UPDATE,DELETE 等)
5. 第五剑:发送SQL 语句
   1. mysqli_query() 发送一条sql 语句
   2. 参数1:由mysqli_connection 连接数据库成功返回的对象
   3. 参数2:要发送的sql 语句
   4. 返回值:
      1. 做添加,删除,修改操作时,成功返回true,失败返回false
      2. 做查询操作时,成功返回一个结果集对象,失败返回false
6. 第六剑:需要判断并处理结果
   1. mysqli_affected_rows() 返回上一步 sql 操作的影响行(增,删,改)
      1. 参数1:由mysqli_connection 连接数据库成功返回的对象
      2. 返回值:如果有影响则返回影响行,如果没有返回0,操作错误返回-1
   2. mysqli_num_rows() 返回查询结果集对象中的行数
      1. 参数1:由mysqli_query()  连接数据库成功返回的对象
      2. 返回值:返回该对象中查找到数据的供述
   3. mysqli_fetch_assoc() 从查询成功返回的结果集对象中获取一行作为关联数组返回
      1. 参数1:由mysqli_query()  连接数据库成功返回的对象
      2. 返回值:从该对象中获取一行数据以关联数组的方式返回 
7. 第七剑:万剑归宗,关闭数据库
   1. mysqli_close() 关闭数据库
   2. 参数1:由mysqli_connection 连接数据库成功返回的对象
8. mysqli_insert_id() 返回上一步操作添加所产生的唯一id
   1. 参数:由mysqli_connection 连接数据库成功返回的对象
   2. 返回值:返回当前插入数据的id

**2.实现数据操作**

**mysqli mysql 的增强版扩展,面向对象**

使用phpinfo() 查看数据库是否存在mysqli 模块.如果不存在则在my.ini 配置文件中搜索extension=mysqli,去掉前面的; 注释,7.0之前的版本是extension=php_mysqli.dull

```php
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册页面</title>
</head>
<body>
    <form action="./1-php copy 43.php" method="post" enctype="multipart/form-data">
    用户名:<input type="text" name='name'>
    密码:<input type="password" name='pwd'>
    年龄:<input type="number" name='age'>
    上传头像:<input type="file" name="pic" id="">
    <input type="radio" name='sex' checked value='0'>女
    <input type="radio" name='sex' checked value='1'>男
    <input type="radio" name='sex' checked value='2'>保密
    <input type="submit" value="注册">
    </form>
</body>
</html>

```

**1-php copy 43.php**

```php

<?php
//0.接收用户输入的数据,然后插入到数据库中
var_dump($_POST);
var_dump($_FILES);
// $pic=$_FILES['pic'];
$name=$_POST['name'];
$pwd=md5($_POST['pwd']);
$age=$_POST['age'];
$sex=$_POST['sex'];

//1.连接数据库
// mysqli_connect('地址','用户名','密码','默认数据库')
$link=@mysqli_connect('localhost','root','') or die('连接数据库失败'); //@防止错误时,暴露信息
// var_dump($link); 返回对象
//2.选择数据库
$r=mysqli_select_db($link,'lmonkey') or die('选择数据库失败');
// var_dump($r);   //true
//3.设置字符集
mysqli_set_charset($link,'utf8'); //不是utf-8
//4.准备SQL 语句
// $sql="INSERT INTO user(name,pwd,uid,age,sex) VALUES ('高老师',123,4,'20',0)";
$sql="INSERT INTO user(name,pwd,age,sex) VALUES ('{$name}','{$pwd}','{$age}','{$sex}')";
//5.发送到数据库服务器执行
$result=mysqli_query($link,$sql);
var_dump($result);  //查询返回对象,其他返回true,失败返回false
//6.判断并处理结果
// mysqli_affected_rows 受影响的行 0表示不受影响,-1表示查询错误,1表示受影响
if($result&&mysqli_affected_rows($link)>0){
    echo '添加数据成功';
}else{
    echo '添加数据失败';
}

//7.关闭数据库
mysqli_close($link);
?>

```

