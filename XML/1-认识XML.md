**XML**

> xml : eXtensible Markup Language  可扩展标记语言
>
> xml 是一种非常灵活的语言,没有固定的标签,所有的标签都是可以自定义
>
> 通常,xml 被用于信息的记录和传递,因此,xml 经常被用于充当配置文件

**格式良好的xml 文档:遵循xml 文档的基本规则**

> 必须有xml 声明语句
>
> 必须有且仅有一个根元素
>
> 标签大小写敏感
>
> 属性值用双引号
>
> 标签成对
>
> 元素正确嵌套
>
> ```xml
> <!-- 声明信息 ,用于描述xml 的版本和编码方式-->
> <?xml version="1.0" encoding="UTF-8"?>
> <!-- 版本只有是1.0 -->
> <books>
>     <a id="abc"></a>
>     <A></A>
>     <book>
>         <name>java 高级编程</name>
>         <author>张三</author>
>         <price>50.0</price>
>         <数>爱德华<数>
>     </book>
> </books>
> ```
>
> 

**有效的xml 文档**

> 首先必须是格式良好
>
> 使用DTD 和XSD(XML Schema) 定义语句约束

