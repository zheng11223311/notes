### 变量

**变量的命名规范**

> 声明PHP 变量是,必须以$开始
>
> 声明变量名时不推荐使用中文,推荐使用英文
>
> 不能以数字开头
>
> 不可以使用特殊字符,除了下划线_
>
> 严格区分大小写
>
> 变量名要有意义
>

```php
<?php

$mimi='秘密';    //声明变量
echo $mimi;  //输出变量


$mimi='咪咪';    //重新为变量赋值
echo $mimi ; //输出变量


$mimi=123 ;   //重新为变量赋值
echo $mimi;  //输出变量


$$mimi='12341231';  //将$mimi 的值作为变量
echo $$mimi;

$你好='你好';   //不推荐使用中文
echo $你好;






echo  "<hr/>";
?>

```

**变量的引用赋值**

```php
<?php
    //值赋值
    $left='哈哈哈哈';
    $right=$left;   //将$left 赋值给$right
    echo $left,$right;  //输出 哈哈哈哈 哈哈哈哈
    $left='嘻嘻嘻';
    echo $left,$right;  //嘻嘻嘻,哈哈哈哈

    //引用赋值
    $left1='哈哈哈哈';
    $right1=&$left1;   //& 为取地址符号,将$left 的引用地址给$right
    echo $left1,$right1;  //哈哈哈哈 哈哈哈哈
    $left1='嘻嘻嘻';
    echo $left1,$right1;  //嘻嘻嘻,嘻嘻嘻 两者使用同一个地址 
?>
```

