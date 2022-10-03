# WXS 脚本

### 什么是WXS

`WXS `(WeiXin Script) 是`小程序独有的一套脚本语言`,结合WXML ,可以构建处页面的结构



### WXS 的应用场景

`wxml 中无法调用在页面的 .js 中定义的函数`,但是,wxml 中可以调用wxs 中定义的函数,因此,小程序中wxs 的`典型应用场景`就是`过滤器`



### WXS 和JavaScript 的关系*

虽然,WXS 的语法类似与JavaScript ,但是WXS 和 JavaScript 是完全不用的两种语言:

- **WXS 有自己的数据类型**
  - `number` 数值类型  , `string` 字符串类型 , `boolean `  布尔类型 , `object` 对象类型
  - `function` 函数类型 , `array` 数组类型 , `date ` 日期类型 , `regexp` 正则
- **WXS 不支持类似于ES6 及以上的语法形式**
  - 不支持: let , const , 解构赋值,展开运算符 , 箭头函数 , 对象属性简写 , etc ,....
  - 支持:var 定义变量 ,普通的function 函数等 类似于ES5 的语法
- **WXS 遵循CommonJS 规范**
  - module 对象
  - require() 函数
  - module.exports 对象



# 基础语法

### 内嵌WXS 脚本

WXS 代码可以编写在WXMl 文件中的\<WXS> 标签内,就像JavaScript 代码可以编写在html 文件中的\<script> 标签内一样

WXMl 文件中的每个\<WXS>\</WXS> 标签,`必须提供module 属性`,用来指定`当前wxs 的模块名称`,方便在wxml 中访问模块中的成员:

```html
<view>{{m1.toUpper(username)}}</view>

<wxs module="m1">
// 将文本转化为大写形式 zs -> ZS
    module.exports.toUpper=function(str){
    	return str.toUpperCase()
    }
</wxs>
```





### 定义外联的WXS 脚本

wxs 代码还可以编写在`以.wxs为后缀名的文件内`,就像JavaScript 代码可以编写在以 .js 为后缀名的文件中一样,示例代码如下:

```js
//tool.wxs 文件
function tolower(str){
    return str.toLowerCaes()
}

module.exports={
    tolower:tolower
}
```





### 使用外联的WXS 脚本

在WXML 中引入外联的WXS 脚本时,`必须`为\<wxs> 标签添加`module `和`src` 属性,其中:

- `module`用来指定模块的名称
- `src`用来指定要引入的脚本的路径,且`必须是相对路径`

示例代码如下:

```html
<view>{{m1.toUpper(username)}}</view>

<wxs module="m1" src="./utils/tools.wxs"></wxs>
```





# WXS 的特点

### 与JavaScript 不同

为了降低WXS(`WeiXin Script`) 的学习成本,WXS 语言在设计时大量借鉴了JavaScript 的语法,但是本质上,WXS 和JavaScript 是完全不同的两种语言



### 不能作为组件的事件回调

WXS 典型的应用场景就是`过滤器`,`经常配合Mustache 语法进行使用`,例如:

```html
<view>{{m1.toUpper(username)}}</view>
```

但是在WXS 中定义的函数`不能作为组件的事件回调函数`,例如,下面的用法是错误的:

```html
<button bindtap="m1.toUpper">
    按钮
</button>
```





### 隔离性

`隔离性`指的是WXS 的运行环境和其他 JavaScript 代码是隔离的,体现在如下两个方面:

- WXS 不能调用js 中定义的函数
- WXS 不能调用小程序提供的APi





### 性能好

- 在`IOS 设备`上,小程序内的`WXS` 会比JavaScript 代码`快2~20倍`
- 在`android 设备`上,二者的运行效率`无差异`



