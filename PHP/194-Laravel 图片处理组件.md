### 1.图片处理组件

**intervention/image 组件**

**1.安装**

```
composer require intervention/image
```

**2.配置**

在`config/app.php` 文件中添加

`intervention\image\ImageServiceProvider::class`

`'image'=>intervention\image\Facades\Image::class`

**3.常用方法介绍**

$img=Image::make('public/foo.jpg');		`打开图片`

$img->resize(320,240);		`设置图片大小`

$img->save('public/bar.png')	`保存为指定的格式`

