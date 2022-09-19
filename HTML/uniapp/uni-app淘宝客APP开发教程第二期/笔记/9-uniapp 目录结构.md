# uniapp 的目录结构

- `.hbuilderx`下的`launch.json`为`hbuilder `编辑器的设置

- `pages` 项目的页面,里面每个文件夹代表一个页面

- `component` 组件

- `pages.json`

  文件用来对`uni-app`进行全局配置,决定页面文件的路径,窗口样式,原生的导航栏,底部的原生`tabbar`等

  它类似微信小程序中的`app.json`的页面管理部分,注意定位权限申请等数据`app.json`的内容,在`uni-app`中是在`manifest.json`中配置的

- `static` 存放静态资源,不需要编译的,比如图片

- `unpackage` 存放编译后的历史版本

- `App.vue`  应用的入口界面

  是`uni-app`的主组件,所有的页面都是在`App.vue`下进行切换的,是页面的入口文件,但`App.vue`本身不是页面,这里不能编写视图元素

  这个文件的作用包括: 调试应用的生命周期函数,配置全局样式,配置全局的存储globalData

  应用生命周期仅可在`App.vue`中监听,在页面监听无效

- `main.js` 文件的入口文件

  主要作用是初始化`vue`实例,定义全局组件,使用时需要的插件,如`vuex`

- `manifest.json` 配置文件

  对各种平台的配置

- `uni-scss`  官方提供的基础样式

