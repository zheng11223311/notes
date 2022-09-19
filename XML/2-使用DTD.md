**DTD 简介**

DTD: Document Type Definition  文档类型定义

DTD 用于约束xml 的文档格式,保证xml 是一个有效的xml 

DTD 可以分为两种,内部DTD,外部DTD

**使用DTD**

**内部DTD,语法如下:**

```dtd
<!DOCTYPE 根元素[元素声明]>
```

**元素声明语法:**

```dtd
<!ELEMENT 元素名 (子元素1[,子元素2,...])>
<!--元素名下允许出现一次子元素1,子元素2...-->
```

**数量词**

> +: 表示出现一次或多次
>
> ?: 表示出现0次或1次
>
> *: 表示出现任意次

属性声明语法:CDATA,表示字符数据(character data)

默认值:

#REQUIRED 表示必须出现

#IMPLIED	表示不是必须的

#FIXED...

```dtd
<!ATTLIST 元素名称 属性名称 属性类型 默认值>
```

**示例:**

```dtd
<!-- 声明信息 ,用于描述xml 的版本和编码方式-->
<!-- 版本只有是1.0 -->
<?xml version="1.0" encoding="UTF-8"?>
<!-- 声明内部DTD -->
<!-- <!DOCTYPE 根元素[元素声明]> -->
<!DOCTYPE books [
    <!ELEMENT books (book*)>
    <!-- books 下有任意个book 标签 -->
    <!ELEMENT book (name*,price,source,author)>
    <!-- book 下有一个price,source,author,任意个name -->
    <!ATTLIST book id CDATA #REQUIRED>
    <!-- book id设置为CDATA 类型,#REQUIRED 必须有-->
    <!ELEMENT name (#PCDATA)>
    <!-- 表示name 标签下只允许写文本,不允许出现标签 -->
]>

<books>
    <book id="aaa">
        <name>java 高级编程</name>
        <author>张三</author>
        <price>50.0</price>
    </book>
</books>
```

**外部DTD:**

创建一个独立的DTD 文件

```dtd
<!--book.dtd 文件-->
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE books [
<!ELEMENT books (book*)>
<!-- books 下有任意个book 标签 -->
<!ELEMENT book (name*,price,source,author)>
<!-- book 下有一个price,source,author,任意个name -->
<!ATTLIST book id CDATA #REQUIRED>
<!-- book id设置为CDATA 类型,#REQUIRED 必须有-->
<!ELEMENT name (#PCDATA)>
<!-- 表示name 标签下只允许写文本,不允许出现标签 -->
]>
```

在xml 中引入外部dtd 文件

```xml
<!--index.xml 文件-->
<?xml version="1.0" encoding="UTF-8"?>

<!ELEMENT books (book*)>
<!-- books 下有任意个book 标签 -->
<!ELEMENT book (name*,price,source,author)>
<!-- book 下有一个price,source,author,任意个name -->
<!ATTLIST book id CDATA #REQUIRED>
<!-- book id设置为CDATA 类型,#REQUIRED 必须有-->
<!ELEMENT name (#PCDATA)>
<!-- 表示name 标签下只允许写文本,不允许出现标签 -->

```

