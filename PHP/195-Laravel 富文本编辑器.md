### 1.百度富文本编辑器Ueditor

> ### 具有安全漏洞,已停止运行

**1下载编辑器**

http://ueditor.baidu.com/website/download.html

[GitHub - fex-team/ueditor: rich text 富文本编辑器](https://github.com/fex-team/ueditor)

**2.引入编辑器**

> 配置文件

```html
<script src='ueditor.config.js'></script>
```

> 编辑器源码文件

```html
<script scr="ueditor.all.js"></script>
```

**3.加载编辑器内容**

```html
<script id="container" name="content" type="text/plain">
	这里写你初始化内容
</script>
```

**4.实例化编辑器**

```js
var ue=UE.getEditor('container');
```

### 2.markdown 编辑器

**安装**

```
composer require graham-campbell/markdown
```

**配置**

在`config/app.php` 文件中添加

`GrahamCampbell\Markdown\MarkdownServiceProvider::class`

`'Markdown'=>GrahamCampbell\Markadown\Facades\Markdown::class`

**常用方法介绍**

`Markdown::convertToHtml('foo');`  //<p>foo</p>

