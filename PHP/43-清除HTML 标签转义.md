### 1.清除HTML 中的标签转义

```php
<?php
$str='<font>法师打</font><input/>';
echo $str."<br/>";

// 自定义转义
function demo($str){
    //定义正则
    $pattern=array(
        '/</S',
        '/>/S',
    );
    $replce=array(
        '&lt;',
        '&gt;',
    );
    $reslt=preg_replace($pattern,$replce,$str);
    echo $reslt;
    var_dump($reslt); 
    return $reslt;
    
}
demo($str);
// htmlspecialchars 将特殊字符转译为普通字符
echo htmlspecialchars($str);
// htmlspecialchars 将普通字符转译为特殊字符
echo htmlspecialchars_decode(htmlspecialchars($str));
?>
```

