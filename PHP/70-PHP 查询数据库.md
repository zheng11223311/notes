### 1.PHP 查询数据库

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
            echo '<td><a href="">删除</a>|<a href="">修改</a></td>';
        echo '</tr>';
    }
    echo '</table>';
}else{
    echo '查询数据失败';
}

//7.关闭数据库
mysqli_close($link);
?>



```

