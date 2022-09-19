### 1.trait 的声明及使用

trait 的功能和class 相似

1. trait 声明,在名称前加trait 关键字即可
   1. 格式:trait 名字{成员方法,成员属性}
2. trait 里面可以包含成员方法,成员属性(包括静态,抽象)
3. 支持封装关键字及其他修饰词(final\static\abstract)
4. trait 不能通过new 关键字来实例化
5. 可以在类中通过use 关键字后面加trait 声明的名字进行引入到当前类中
6. use 引入trait 可以同时引入多个trait ,使用英文符号进行分割
7. 如果两个triat 都插入了一个同名的方法,如果没有明确解决冲突将会产生错误,为了解决多个trait 在同一个类中的命名冲突,需要使用insteadOf 操作符来明确指定使用冲突方法中的哪一个
8. as 操作符可以为某个方法引入别名,但是as 操作符不会对方法进行重命名,也不会影响其方法,并且as 的第二个用法还可以修改访问控制
9. 单个trait 也可有多个trait 
10. trait 也支持抽象方法的使用,也支持静态方法的使用
11. trait 会覆盖调用类继承的父类方法,优先顺序是来自当前类的成员覆盖了trait 的方法,而trait 则覆盖了继承的父类方法



```php
<?php
trait DemoTrait{
    public $pro=true; //成员属性
    static $pro2=1; //静态成员

    public function say(){
        echo '我在说话';
    }
    abstract function aa();

}

trait Demo1{
    public function mm(){
        echo '我是demo1 的mm';
    }

}


trait Demo{
    use demo1;
    public function hh(){
        echo '我是demo 的hh';
    }
    public function say(){
        echo '我在说话';
    }
    // abstract function aa();

}

// 实例化
// $mysql=new DemoTrait; //报错,不能实例化trait 

class Demo_class{
    use DemoTrait,Demo{
        // demo 中的say 代替DemoTrait 中的say,即调用时使用demo 的say 函数
        // demo 的say 优先使用
        Demo::say insteadOf DemoTrait;
        DemoTrait::say as public ss;
        // 将hh 设置为私有
        // Demo::hh as private;
        //将hh 设置为public 并起别名为h
        Demo::hh as public h;
    }
    function aa(){
        echo '从写aa';
    }
}
$one= new Demo_class;
$one->say(); //我在说话
$one->hh(); //我是demo 的hh
$one->h(); //我是demo 的hh
$one->ss(); //
$one->mm(); //
$one->aa(); //


?>


```

```php
<?php
//和继承相关
class Father{
    public function say(){
        echo '哈哈,我是father';
    }
}
trait DemoTrait{
    public function say(){
        echo '哈哈,我是trait';
    }
}



// 实例化
// $mysql=new DemoTrait; //报错,不能实例化trait 

class Son extends Father{
    use DemoTrait{  //覆盖了Father 的say()
        // 使用被son 覆盖的say()
        say as s;
    }
    //覆盖了前面所有的say()
    public function say(){
        //使用父类方法
        Parent::say();
        echo '哈哈,我是子类';
    }
 
}
$one= new Son;
$one->say(); //我在说话
$one->s(); //我在说话


?>
```

