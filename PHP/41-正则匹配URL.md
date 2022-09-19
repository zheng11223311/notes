### 1.正则匹配URL

```php
<?php
// https://www.baidu.com
// ftp://www.baidu.com
// http://www.lmonkey.com
// https://www.lmonkey.com
// ftps://www.lmonkey.com
// http://www.sina.com.cn
// http://www.lmonkey.cn
// http://www.a-b.com
// http://www.12306.cn
// http://12306.cn


$pattern='/^[a-zA-Z]{3,5}:\/\/(?:[0-9a-zA-Z]+(?:-[0-9a-zA-Z]+)?\.)+[a-zA-Z]{2,}$/';
?>

```

### 2.模式修正符

1. **i 忽略大小写**

```php
$pattern='/a/i';	表示可以匹配a 或A
```

1. **x  忽略正则中的空白**

   ```php
   $pattern='/a a/ix';	表示可以匹配aa 或AA 或aA 或Aa,不能匹配到"a a"
   ```

2.  **.  点  匹配任意字符,除了\n**

   ```php
   $pattern='/./ix';	表示可以匹配除\n 的所有字符,一个中文占个字节
   ```

3. **s  表示可以匹配\n**

   ```php
   $pattern='/./ixs';	表示可以匹配所有字符
   ```

4. **m 表示视为多行处理,在该模式下^和$可以匹配\n**

   ```php
   $pattern='/a/m';	表示可以匹配cc\naa 中的a,\n 代表换行,aa 为下一行的首个字母
   ```

5. **S(大S) 表示加速匹配**

   ```php
   $pattern='/a/mS';  //加速匹配	
   ```

6. **U 模式 如果是贪婪模式,改变为非贪婪模式,如果不是贪婪模式,改变为贪婪模式,默认是贪婪模式,匹配到最多**

   ```php
   $str='<li>1</li><li>3</li><li>5</li>';
   $pattern='/<li>.+<\/li>/';  //贪婪模式结果 <li>1</li><li>3</li><li>5</li> 
   $pattern='/<li>.+<\/li>/U'; //非贪婪模式结果 <li>1</li>
   
   .*? 也是非贪婪模式
   $pattern='/<li>.*?<\/li>/'; //非贪婪模式结果 <li>1</li>
   改变成贪婪模式
   $pattern='/<li>.*?<\/li>/U'; //贪婪模式结果 <li>1</li>
   ```

   
