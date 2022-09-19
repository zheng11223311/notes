### 1.MySQL 中文分词

**什么是中文分词**

中文分词 指的是将一个汉字序列切分成一个个单独的词,例如,我来到北京清华大学=>我 /来到/北京/清华大学

**中文分词的作用**

中文分词可以提高对大段文本的检索

**中文分词的使用**

1.安装PHP 扩展包,如安装失败,请尝试使用代理

```
composer require fukuball/jieba-php:dev-master
```

2.在index.php 代码中使用

```
ini_set('memory_limit','1024M');
use Fukuball\Jieba\Jieba;

Route::get('./fenci',function(){
	Jieba::init();
	$s=Jieba::cut('我是哈哈',false);
	var_dump($s);
})
```

