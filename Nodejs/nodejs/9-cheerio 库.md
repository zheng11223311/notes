> cheerio 是jquery 核心功能的一个快速而又简洁的实现,主要是为了用在服务器端需要对DOM,进行操作的地方

**简介**

> cheerio 是node.js 的抓取页面模板,为服务器特别定制的,快速,灵活,实时的jquery 核心实现.适合各种web 爬虫程序

让你在服务器上愉快的玩耍

```js
//index.js 文件
var cheerio=require('cheerio')
$=cheerio.load('<h2 class="title">hello</h2>')
$('h2.title').text('hello1111')
$('h2').addClass('welcome')
$.html()
//=><h2 class="title welcome">hello1111</h2>
```

**安装**

```js
npm install cheerio
```

**特点**

**熟悉的语法:**cheerio 实现了jquery 的一个子集,去掉了jquery 中所有与DOM 不一致或者是用来填浏览器的坑的东西,重写了jquery 最美妙的API

**快到没朋友:**cheerio 使用了极其简洁而又标准的DOM 模型,因此对文档的转换,操作,渲染都极其的高效,基本的端到端测试显示它的速度至少是JSON 的8倍

**极其灵活:**cheerio 使用了@FB55 编写的非常兼容的htmlparser2,因此他可以解析几乎所有的HTML 和XML

