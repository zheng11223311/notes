### 1.什么是XML

因为XML 语言不像HTML 那样是一种固定格式的语言,所以他的名称为可扩展的标记语言(Extensible Markup Language),虽然HTML 拥有自己的一套标记,但XML 的用户可以建立自己的标记(或者如果合适你,可以使用他人建立的标记)这样他们实际上能够描述元素的内容

```xml
<?xml version="1.0" encode="gb2312"?>
<books>
    <book id="1">
        <title>Begining ASP3.0</title>
        <isbn>1-8601003-38-2</isbn>
        <author>Mr Lee</author>
        <描述>
        	这是一本书!
        </描述>
    </book>
</books>
```

### 2.使用ASP 生成XML

我们可以用前几章学过的服务器端文件存取的server 对象生成XML 文件,对于文本,空格chr(32),双引号chr(34),Tab 键chr(9)

