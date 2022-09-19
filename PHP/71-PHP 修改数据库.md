### 1.PHP 修改数据库操作

读取信息制作成表格

```php

<?php

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
$sql="SELECT * FROM user ORDER BY uid DESC";
//5.发送到数据库服务器执行
$result=mysqli_query($link,$sql);
// var_dump($result);  //查询返回对象,其他返回true,失败返回false
//6.判断并处理结果
// mysqli_num_rows 查询到的行数
if($result&&mysqli_num_rows($result)>0){
    // echo '查询数据成功';
    //数据处理,都有指针位置限制,上面语句查询玩,指针指向最后一位,下面的语句就查询不到数据
    // var_dump(mysqli_fetch_all($result));    //返回数组,包含所有记录,下标为0
    // var_dump(mysqli_fetch_array($result));    //返回数组,包含一条记录,下标为字段名和数字,值为数据
    // var_dump(mysqli_fetch_assoc($result));    //返回数组,包含一条记录,下标只有字段名,值为数据
    // var_dump(mysqli_fetch_assoc($result));    //拿取第二条记录 
    echo '<table border="1" align="center" width="800">';
    echo '<tr>';
        echo '<th>编号</th>';
        echo '<th>用户名</th>';
        echo '<th>性别</th>';
        echo '<th>年龄</th>';
        echo '<th>操作</th>';
    echo '</tr>';
    
    while($row=mysqli_fetch_assoc($result)){
        echo '<tr align="center">';
            echo '<td>'.$row['uid'].'</td>';
            echo '<td>'.$row['name'].'</td>';
            echo '<td>'.$row['sex'].'</td>';
            echo '<td>'.$row['age'].'</td>';
            echo '<td><a href="">删除</a>|<a href="./1-php copy 46.php?uid='.$row['uid'].'">修改</a></td>';
        echo '</tr>';
    }
    echo '<tr>';
        echo '<td colspan="3"><a href="./1-php copy 46.php">返回添加数据</a></td>';
        echo '<td  colspan="3">&nbsp;</td>';
    echo '</tr>';
    echo '</table>';
}else{
    echo '查询数据失败';
}

//7.关闭数据库
mysqli_close($link);
?>



```

修改或添加操作

```php
<?php
$name='';
$pic='';
$age='';
$sex='';
    if(isset($_GET['uid'])){
        $str='修改页面';
        $action='./1-php copy 48.php?uid='.$_GET['uid'];
        $submit='<input type="submit" value="修改">';
        //将原有数据查询出来
        //连接数据库,查询指定uid 的数据
        $link=mysqli_connect('localhost','root','','lmonkey') or die('数据库连接失败或选择失败');
        mysqli_set_charset($link,'utf8');
        $sql="SELECT * FROM  user WHERE uid={$_GET['uid']}";
        $result=mysqli_query($link,$sql);
        if($result&&mysqli_num_rows($result)>0){
            //有数据
            // 提取数据
            $row=mysqli_fetch_assoc($result);
            // var_dump($row);
            $name=$row['name'];
            $age=$row['age'];
            $sex=$row['sex'];
        }
    }else{
        $str='添加页面';
        $action='./1-php copy 43.php';
        $submit='<input type="submit" value="注册">';
    }
    $nv='checked';
    $nan=$bao='';
    switch ($sex) {
        case 1:
           $nan='checked';
           $nv='';
            break;
        case 2:
           $bao='checked';
           $nv='';
            break;
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$str?></title>
    <style>
        body{
            text-align:center;
        }
    </style>
</head>
<body>
    <h2><?=$str?></h2>
    <hr width="80%">
    <form action="<?=$action?>" method="post" enctype="multipart/form-data">
    用户名:<input type="text" name='name' value="<?=$name?>"><br/>
    密码:<input type="password" name='pwd'><br/>
    年龄:<input type="number" name='age' value="<?=$age?>"><br/>
    上传头像:<input type="file" name="pic" ><br/>
    <input type="radio" name='sex' <?=$nv?> value='0'>女
    <input type="radio" name='sex' <?=$nan?> value='1'>男
    <input type="radio" name='sex' <?=$bao?> value='2'>保密<br/>
    <?=$submit?>
    </form>
</body>
</html>



```

修改操作

```php
<?php
//接收并处理数据
var_dump($_POST);
$name=$_POST['name'];
$age=$_POST['age'];
$sex=$_POST['sex'];
$pwd=md5($_POST['pwd']);
//1.连接数据库
$link=@mysqli_connect('localhost','root','') or die('连接数据库失败'); //@防止错误时,暴露信息
//2.选择数据库
$r=mysqli_select_db($link,'lmonkey') or die('选择数据库失败');
//3.设置字符集
mysqli_set_charset($link,'utf8'); //不是utf-8
//4.准备修改SQL 语句
$sql="UPDATE  user SET name='{$name}',age={$age},sex={$sex},pwd='{$pwd}' WHERE uid={$_GET['uid']}";
//5.发送到数据库服务器执行
$result=mysqli_query($link,$sql);
// var_dump($result);  //查询返回对象,其他返回true,失败返回false
//6.判断并处理结果
// mysqli_num_rows 查询到的行数
if($result&&mysqli_affected_rows($link)>0){
   echo '修改成功';
    
}else{
    echo '修改失败';
}

//7.关闭数据库
mysqli_close($link);
?>



```

