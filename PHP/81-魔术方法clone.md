### 1.魔术方法clone

1. __clone()
   1. 触发时机:对对象进行克隆操作时自动触发
   2. 功能:修改克隆之后的对象的部分成员属性
   3. 参数:无
   4. 返回值:无
2. 注意:对象的赋值默认是引用赋值,不能通过赋值操作获取一个新的对象,获取新对象的操作应使用克隆操作
   1. 格式:新对象变量=clone 对象变量

```php
<?php
    class DuoLi{
        //成员属性
        public $name='多礼';
        public $sex='母';
        public $weight='10kg';
        public $age=3;

        // 成员方法
        function jiao(){
            echo '咩咩~~~~';
        }
        // 魔术方法 克隆对象时触发
        function __clone(){
            $this->age=0;
            $this->weight='5kg';
        }
    }


      //实例化一只🐏
  $duoli=new DuoLi;
  var_dump($duoli);
  //引用赋值实际还是一只羊,共同使用一个地址
  $newDL=$duoli;
  var_dump($newDL);
// new 第二个对象
$xdl=new DuoLi;
var_dump($xdl);

// 得到一只新多礼
$newDl=clone $duoli;
var_dump($newDl);
?>
```

