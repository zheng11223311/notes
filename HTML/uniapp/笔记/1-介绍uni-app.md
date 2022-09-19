### 1.uni-app 介绍

官网:[uni-app官网 (dcloud.io)](https://uniapp.dcloud.io/)

**uni-app** 是一个使用Vue.js 开发所有前端应用的框架,开发者编写一套代码,可发布到IOS,Android,H5,以及各种小程序(微信/支付宝/百度/头条/QQ/钉钉) 等多个平台

即使不跨端,**uni-app** 同时也是更好的小程序开发框架

具有VUE 和微信小程序的开发经验,可快速上手uni-app

为什么要学习uni-app?

相对开发者来说,减少了学习成本,因为只要学会uni-app 之后,即可开发出IOS,Android,H5,以及各种小程序的应用,不需要再去学习开发其他应用的框架,相对公司而言,也大大减少了开成本

**环境搭建**

安装编辑器HBuilderX [HBuilderX-高效极客技巧 (dcloud.io)](https://dcloud.io/hbuilderx.html)

(也可以使用VScode 编辑器)

HBuilderX 是通用的前端开发工具,但为 **uni-app** 做了特别强化

下载App 开发版,可开箱即用

安装微信开发者工具[稳定版 Stable Build 更新日志 | 微信开放文档 (qq.com)](https://developers.weixin.qq.com/miniprogram/dev/devtools/stable.html)

**利用HBuilderX 初始化项目**

- 点击HBuilderX 菜单栏文件>项目>新建
- 选择uni-app,填写项目名称,项目创建的目录
- 第一次运行再微信小程序中需要配置微信小程序开发环境的路径,即  **微信开发者工具.exe**  的所在目录下
- 打开微信小程序>设置>安全设置>服务端口打开,才能uniapp 正常运行

**介绍项目目录和文件作用**

**pages.json** 文件用来对uni-app 进行全局配置,决定页面文件的路径,窗口样式,原生的导航栏,底部的原生tabber 等

**manifest.json** 文件是应用打包的配置文件,用于指定应用的名称,图标,权限等

**App.vue** 是我们的根组件,所有的页面都是再App.vue 下进行切换的,是页面的入口文件,可以调用应用的生命周期函数

**main.js** 是我们的项目入口文件,主要的作用是初始化 **vue** 实例并使用需要的插件

**uni.scss** 文件的用途是为了方便整体控制应用的风格,比如按钮颜色,边框风格,**uni.scss** 文件里预置了一批scss 变量预置

**unpackage**  就是打包目录,在这里有各个平台的打包文件

**pages** 所有的页面存放目录

**static ** 静态资源目录,例如图片等

**components** 组件存放目录

为了实现多端兼容,综合考虑编译速度,运行性能等因数,**uni-app** 约定了如下的开发规范:

- 页面文件遵循 Vue 单文件组件(SFC) 规范(自行百度)
- 组件标签靠近小程序规范,详见 uni-app 组件规范
- 接口能力(JS API) 靠近微信小程序规范,但需要将前缀 **wx** 替换为 **uni**,详见 uni-app 接口规范
- 数据绑定以及事件处理同 **Vue.js** 规范,同时补充了App 及页面的生命周期
- 为了兼容多端运行,建议使用flex 布局进行开发

