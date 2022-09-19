### 1.生成器 yield

**1.生成器的执行过程**

1. 首先调用demo1 函数,传入参数10,但是for 循环执行了一次就停止了,并且告诉foreach 第一次循环可以用(输出)的值
2. foreach 开始对$reslut1 结果变量进行循环,进来首先sleep(1),然后开始使用for 给的一个值输出
3. foreach 准备第二次循环,开始第二次循环之前,他向for 循环在请求一次
4. for 循环于是又执行了一次,将产生的结果告诉foreach
5. foreach 拿到第二个值,并且输出,由于foreeach 中的sleep(1), 所以,for 循环延迟1s 执行生成当前时间
6. 所以整个代码执行中,使用只有一个记录值参与循环,内存中也只有一条消息

**2.生成器概念**

生成器 yield 关键字不是返回值,他的专业术语叫产出值,只是生成一个值

```php
<?php
function demo(int $num)
{
    $date=array();
    for ($i=0; $i <$num; $i++) { 
       $date[]=time();
    }
    return $date;
}
$result=demo(10);
foreach ($result as $key => $value) {
    sleep(1);   //没有起到作用
   echo $value."<br/>";     //都是相同的时间
}

//使用生成器
function demo1(int $num)
{
    $date=array();
    for ($i=0; $i <$num; $i++) { 
        yield time();
    }
    
}
$result1=demo1(10);
foreach ($result1 as $value1) {
    sleep(1);
   echo $value1."<br/>";     //不同的时间
}
?>
```

