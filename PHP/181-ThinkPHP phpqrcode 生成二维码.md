### **ThinkPHP phpqrcode 生成二维码**

**引入phpqrcode**

```
composer require aferrandini/phpqrcode
```

**phpqrcode 参数讲解**

- 第一个参数$text

  就是上面代码里的URL 网址参数

- 第二个参数$outfile

  默认为否false,不生成文件;只将二维码图片返回;否则需要给出存放生成二维码图片的路径

- 第三个参数$level

  默认为L,这个参数可传递的值分别是

  L (QR_ECLEVEL_L,7%)

  M (QR_ECLEVEL_M ,15%)

  Q (QR_ECLEVEL_Q ,25%)

  H (QR_ECLEVEL_H ,30%)

  这个参数控制二维码容错率;

  不同的参数表示二维码可被覆盖的区域百分比

  利用二维码的容错率.我们可以将头像放置在生成的二维码图片任何区域

- 第四个参数$size

  控制生成图片的大小,默认为4

- 第五个参数$margin

  控制生成二维码的空白区域大小,值为数值,例如4

- 第六个参数$saveandprint

   值 true,保存二维码图片并显示出来;$outfile 必须传递图片路径,

**示例**

```php
\PHPQRCode\QRcode::png('test',false,'L',4,3,true)
```

