# **Puppeteer**

**出现的背景**

> chrome59(linux,macos),chrome60(windows)之后,chrome 自带headless(无界面)模式很方便做自动化测试或者爬虫,但是如何和headless 模式的Chrome 交互则是一个问题,通过启动Chrome 时的命令行参数仅能实现简易的初始化操作,Selenium,Webdriver 等是一种解决方案,但是往往依赖众多,不够扁平
>
> 
>
> Puppeteer 是谷歌官方出品的一个通过DevTools 协议控制headless Chrome 的Node 库,可以通过Pupeteer 的提供的api 直接控制Chrome 模拟大部分用户操作来进行UI Test 或者作为爬虫访问页面来收集数据
>
> **中文文档:**
>
> https://zhaoqize.github.io/puppeteer-api-zh_CN/#/

**作用:**

> 生成页面PDF
>
> 抓取SPA(单页面应用)并生成预渲染内容(既'SSR' (服务器端渲染 ))
>
> 自动提交表单,进行UI 测试,键盘输入等
>
> 创建一个实时更新的自动化检测环境,使用最新的JavaScript 和浏览器功能直接在最新版本的Chrome 中执行测试
>
> 捕获网站的timeline.trace,用来帮助分析性能问题
>
> 测试浏览器扩展

**环境和安装**

> Puppeteer 本身依赖6.4 以上的Node,但是为了异步超级好用的async/await,推荐使用7.6版本以上的Node,另外headless Chrome 本身对服务器依赖的库的版本要求比较高,centos 服务器依赖偏稳定,v6 很难使用headless Chrome,提高依赖版本可能出现各种服务器问题(包括且不限于无法使用ssh),最好使用高版本服务器

**安装**

npm install puppeteer  或者 yarn add puppeteer

**使用**

```js
//index.js 文件
//Puppeteer
let puppeteer =require('puppeteer')

//因为所有的事件都需要时间等待,所以使用异步执行
async function test(){
    //pupeteer.launch 实例启动浏览器,可以传入一个option 对象,可以配置为
    //无界面浏览器,也可以配置为有界面浏览器
    //无界面浏览器性能更高更快,有界面一般用于调试
    
    let option={
        defaultViewport:{       //设置视窗的大小
            width:1200,
            height:800
        },
        headless:false      // headless:false 有界面
    }
    let browser=await puppeteer.launch(option)

    //打开新页面
    let page=await  browser.newPage()
    //访问页面
    await page.goto('https://www.dytt8.net/index.htm')
    // 截屏,截取当前打开的页面,存放为screenshot.png
    await page.screenshot({path:'screenshot.png'})
    //获取页面内容,获取所有a 标签
    page.$$eval('#menu li a',(elements)=>{
        // console.log(elements);
        elements.forEach((item,i)=>{
            console.log(item.innerHTML);
        })
    })

    // 监听事件
    page.on('console',(...args)=>{
        console.log(args);
    })
}

test()

// console.log(args); cmd 上输出
// [
//   ConsoleMessage {
//     _type: 'log',
//     _text: '最新影片',
//     _args: [ [JSHandle] ],
//     _stackTraceLocations: [ [Object], [Object] ]
//   }
// ]
// [
//   ConsoleMessage {
//     _type: 'log',
//     _text: '经典影片',
//     _args: [ [JSHandle] ],
//     _stackTraceLocations: [ [Object], [Object] ]
//   }
```

