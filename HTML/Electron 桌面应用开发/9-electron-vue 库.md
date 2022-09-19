官网:[简介 · electron-vue (gitbooks.io)](https://simulatedgreg.gitbooks.io/electron-vue/content/cn/)

不建议使用此库,已过时

可替代方案:

[(54条消息) 2022年最新Vue+electron项目创建_孤城氵客栈的博客-CSDN博客_vue+electron](https://blog.csdn.net/qq_41003479/article/details/123806597)

**使用替代的方案构建book 项目**



# 一、前言

大多数文章都停留在electron-vue中，但是这个库不怎么更新了，最近的更新是九月前，看了很多文章都换其他的工具来构建了，这里推荐GITHUB一个大佬写的基于vue-cli的插件，构建项目非常简单！
插件的GITHUB源代码
话不多说，开始创建项目！



# 二、环境说明

首先确保你的Node、vue-cli、cnpm安装好，具体安装可以查看官网。
需要：

Node环境，我的是16.x版本
vue-cli3 或者4
cnpm



# 三、创建项目

找一个空白文件夹，在文件地址栏处，输入cmd，就会在当前文件夹打开cmd，当然按住shift键，然后鼠标右键也可以一样的打开powershell。

输入vue ui， 这里我使用vue自带的构建项目的工具会自动打开一个网页
按照步骤来构建项目就行，这里我选择vue2.

1.点击创建项目


2.命名项目、选择你的包管理工具


3.选择手动配置


4.勾选你需要的东西，这里我多选了路由和vuex


5.最后就是选择你的vue版本和下面那个我随便选的

6.添加electron插件
创建完项目后，进入项目然后再插件管理中选择添加插件
查询：electron-builder，安装一下就好了
当然如果你是命令行操作的，直接vue add electron-builder安装就行了

```
vue add electron-builder
```



# 四、运行项目

在项目根目录下，打开cmd或者vscode编辑器
若项目调试运行下述代码：

```
vue-cli-service electron:serve
```

若项目打包成exe运行下述代码：

```
npm run electron:build
```


然后这里可能会报错，会说你的electron安装不正确，请删除node_modules文件夹下的electron，这时候直接去删了，然后用cnpm安装electron就能解决

```
cnpm install electron --save-dev
```

**注意事项**
如果出现了报错，但是乱码的话，这个是因为你的cmd没有设置utf-8，在根目录下打开package.json，找到然后electron:build和electron:serve修改为下述代码：

    "electron:build": "chcp 65001 && vue-cli-service electron:build",
    "electron:serve": "chcp 65001 && vue-cli-service electron:serve",
65001就是utf-8的编号，到此继续运行就能启动啦！：

```
vue-cli-service electron:serve
```



# 五、使用Node.js

在项目跟目录创建一个vue.config.js文件，写入代码：

```js
module.exports = {
  pluginOptions: {
    electronBuilder: {
      nodeIntegration: true
    }
  }
}
```

然后在对应的Vuex文件中导入fs文件模块，使用即可，非常方便！

```bash
import fs from 'fs'
```

>
> 版权声明：本文为CSDN博主「孤城氵客栈」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
> 原文链接：https://blog.csdn.net/qq_41003479/article/details/123806597

