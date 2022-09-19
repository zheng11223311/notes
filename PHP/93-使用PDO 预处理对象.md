### 1.使用PDO 预处理对象

相比于PDO 优点:执行效率高,更安全

**PDO 查询语句**

```php
<?php
try {
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');
    // $sql="INSERT INTO user(name,age) VALUES ('aa',1)";  
    //预处理的好处,就是这些代码已经被编译了,每次执行直接使用,而不需要再次编译
    $stmt=$pdo->prepare("INSERT INTO user(name,age) VALUES (?,?)");  //预处理sql 语句
    var_dump($stmt);
    //绑定值
    $stmt->bindParam(1,$name);
    // 参数(替代第几个"?", 替代的变量, 指定类型,长度)
    $stmt->bindParam(2,$age,PDO::PARAM_INT,12);
    // 赋值变量
    $name='你好吗?11';
    $age=9;
    // 执行语句
    $result=$stmt->execute();   //布尔值,返回1或0
    // echo $result;
    if($stmt->rowcount()>0){
        echo '成功';
    }else{
        echo '失败';
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}

?>



```

**PDO 删除语句**

```php
<?php
try {
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');
    //预处理的好处,就是这些代码已经被编译了,每次执行直接使用,而不需要再次编译
    // :xxyd  : 后为任意名
    $stmt=$pdo->prepare("DELETE FROM user WHERE uid=:xxyd");  //预处理sql 语句
    var_dump($stmt);
    //绑定值
    // 参数(替代占位的字符, 替代的变量, 指定类型,长度)
    $stmt->bindParam(":xxyd",$id,PDO::PARAM_INT,12);
    // 赋值变量
    $id=70;
    // 执行语句
    $result=$stmt->execute();   //布尔值,返回1或0
    // echo $result;
    // 受影响的行数
    if($stmt->rowcount()>0){
        echo '删除成功';
    }else{
        echo '删除失败';
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}

?>
```

**PDO 修改语句**

```php
<?php
try {
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');
    /*
      //预处理的好处,就是这些代码已经被编译了,每次执行直接使用,而不需要再次编译
        $stmt=$pdo->prepare("UPDATE user SET name=?,sex=? WHERE uid=?");  //预处理sql 语句
        var_dump($stmt);
        // 绑定值,并执行语句
        $result=$stmt->execute(array('哈哈哈',2,71));   //布尔值,返回1或0
        // echo $result;
        // 受影响的行数
        if($stmt->rowcount()>0){
            echo '修改成功';
        }else{
            echo '修改失败';
        }
    */
    // 第二种方式:关联方式
    $stmt=$pdo->prepare("UPDATE user SET name=:name,sex=:sex WHERE uid=:uid");
   // 绑定值,并执行语句
//    占位参数 name 等参数 前面没有: 也可以
//    $result=$stmt->execute(array(":name"=>"美女",':sex'=>12,":uid"=>72));
//    $result=$stmt->execute(array("name"=>"美111女",'sex'=>11,":uid"=>71));
   $result=$stmt->execute(array("name"=>"美111女",'sex'=>11,"uid"=>71));
   if($stmt->rowcount()>0){
        echo '修改成功';
    }else{
        echo '修改失败';
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}

?>



```

**PDO 查询语句**

```php
<?php
try {
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');
    $stmt=$pdo->prepare("SELECT * FROM user ");
   $result=$stmt->execute();
//    判断并处理结果
   if($stmt->rowcount()>0){
        echo '查询成功';
        // $row=$stmt->fetch();    //得到下标和关联数组
        // $row=$stmt->fetch(PDO::FETCH_ASSOC);    //得到关联数组
        // var_dump($row);
        while ($row=$stmt->fetch(PDO::FETCH_ASSOC)) {
            var_dump($row);
        }

    }else{
        echo '查询失败';
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}

?>



```

**PDO 查询语句,绑定列操作**

```php
<?php
try {
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');
    $stmt=$pdo->prepare("SELECT * FROM user ");
    // 绑定列操作
    // 将数据库的第一列的值绑定给变量$uid
    // 将数据库的第二列的值绑定给变量$name
    // 可以不绑定数据库的所有列,只绑定自己需要的列
    $stmt->bindColumn(1,$uid);
    $stmt->bindColumn(2,$name);
    $stmt->bindColumn(3,$age);
   $result=$stmt->execute();
//    判断并处理结果
   if($stmt->rowcount()>0){
        echo '查询成功';
        while ($stmt->fetch()) {
            echo $uid.'---'.$name.'---'.$age.'<br/>';
        }

    }else{
        echo '查询失败';
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}

?>
```

**PDO 查询语句获取全部数据**

```php
<?php
try {
    $dsn='mysql:host=localhost;dbname=lmonkey;charset=utf8';
    $pdo=new PDO($dsn,'root','');
    $stmt=$pdo->prepare("SELECT * FROM user ");
   $result=$stmt->execute();
//    判断并处理结果
   if($stmt->rowcount()>0){
        echo '查询成功';
        // 获取所有数据
       $result=$stmt->fetchALL(PDO::FETCH_ASSOC);
    //    var_dump($result);
       foreach ($result as $key => $value) {
          var_dump($value) ;
       }

    }else{
        echo '查询失败';
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}

?>
```

