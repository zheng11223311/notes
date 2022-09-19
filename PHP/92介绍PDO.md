### 介绍PDO

**1.什么是PDO**

php data object php 数据对象 他是数据库抽象层的一种

**2.什么是数据库抽象层**

淘宝 的 马云 php+mysql

如果想把项目中的mysql 数据库更换成oracle 数据库 谁难

如果涉及到数据库的更换,我们需要做那些事情?

1. 数据迁移 mysql 数据 导入到 oracle 数据库中
2. 将项目中所有php 连接mysql 的代码都要更换成oracle
3. 调试程序 修改bug

**3.学习哪个数据库抽象层?**

PDO

**4.为什么要学习PDO?**

1. 以模块的方式直接打入系统中,执行效率高
2. 官网推荐使用PDO 作为数据库抽象层
3. 官方人员写的,中国人写的
4. PHP 版本从5.3 之后都是默认开启PDO
5. 使用phpinfo() 查看是否存在PDO 模块

**5.开启PDO 支持**

1. 找到php 配置文件php.ini
2. extension=pdo_mysql.dll (PDO 所支持的数据库)
   1. 5.3 版本之前为extension=php_pdo.dll  是否开启pdo 去掉前面的分号才表示支持PDO
3. 重启apache 服务器
4. 检查phpinfo 中对应的模块是否开启

**6.try...catch 语法的使用**

```php
try{

}catch(){	//捕获不同类型的错误,或者捕获全部类型的错误

}catch(){

}
```

**示例**

```php
<?php
//try...catch() 语法
try{
    // 尝试执行本区间,如果出错 抛出一个异常
    // 抛出给catch 来接收处理
    throw new Exception('笨蛋,出错了'); //手动new 异常对象并抛出
}catch(Exception $e){ //参数类型必须是Exception new 出来的实例
     //调用对象的方法
     echo $e->getMessage();  
}
// catch(RuntimeException $e){  //可以多次抓取错误
//      //调用对象的方法
//      echo $e->getMessage();  
// }
?>
```

**7.PDO 操作MySQL 数据库**

1. 连接数据库
2. 判断数据库
3. 选择数据库
4. 设置字符集
5. 准备并且发送SQL 语句
6. 判断并且处理结果
7. 关闭数据库

**插入数据**

```php
<?php
try{
    // $dsn  data source name  数据源名,即使用的是哪个数据库
    // mysql oracle resdis
    // ;charset=utf8 可不写
    // 1.连接数据库
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');    //mysql,数据库用户名,密码
    // var_dump($pdo);
    //准备SQl 语句
    $sql="INSERT INTO user(name,age) VALUES ('小盆友',20)";
    // 执行插入数据库
    $result=$pdo->exec($sql); //返回受影响的行数
    // var_dump($result);
    //处理结果
    if($result){
        echo '插入成功';
    }else{
        echo '插入失败';
    }
    //关闭数据库.pdo 会自己关闭,不需要自己写
}catch(PDOException $e){ //参数类型必须是PDOException new 出来的实例
     echo $e->getMessage();  
}
?>
```

**删除数据**

```php
<?php
try{
    // 1.连接数据库
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');    //mysql,数据库用户名,密码
    //准备SQl 语句
    $sql="DELETE FROM  user WHERE uid= 32";
    // 执行删除数据库
    $result=$pdo->exec($sql); //返回受影响的行数
    //处理结果
    if($result){
        echo '删除成功';
    }else{
        echo '删除失败';
    }
    //关闭数据库.pdo 会自己关闭,不需要自己写
}catch(PDOException $e){ //参数类型必须是PDOException new 出来的实例
     echo $e->getMessage();  
}
?>
```

**更新数据**

```php
<?php
try{
    // 1.连接数据库
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');    //mysql,数据库用户名,密码
    //准备SQl 语句
    $sql="UPDATE user SET name='嘻嘻' WHERE uid= 31";
    // 执行修改数据库
    $result=$pdo->exec($sql); //返回受影响的行数
    //处理结果
    if($result){
        echo '修改成功';
    }else{
        echo '修改失败';
    }
    //关闭数据库.pdo 会自己关闭,不需要自己写
}catch(PDOException $e){ //参数类型必须是PDOException new 出来的实例
     echo $e->getMessage();  
}
?>

```

**查询数据:使用query()**

```php
<?php
try{
    // 1.连接数据库
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');    //mysql,数据库用户名,密码
    //准备SQl 语句
    $sql="SELECT * FROM  user ORDER BY uid ASC";
    // 执行修改数据库
    $result=$pdo->query($sql); //返回查询到的数据
    // var_dump($result);
    //处理结果
    echo '<table border="1" align="center" width="600">';
    foreach ($result as $key => $value) {
        //    var_dump($value);
        echo '<tr>';
        echo '<td>'.$value['uid'];
        echo '<td>'.$value['name'];
        echo '<td>'.$value['pwd'];
        echo '<td>'.$value['sex'];
        echo '<td>'.$value['age'];
        echo '</tr>';
    }
    echo '</table>';
    //关闭数据库.pdo 会自己关闭,不需要自己写
}catch(PDOException $e){ //参数类型必须是PDOException new 出来的实例
     echo $e->getMessage();  
}
?>
```

