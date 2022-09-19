import { createApp } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
// import toast from 'components/comment/Toast/index'
// 安装toast 插件,一启动就运行 createApp(App).use(toast)
// 安装快速点击
import FastClick from 'fastclick'
//安装懒加载图片
import VueLazyLoad from 'vue-lazyload'


//引入 vant UI 库
import 'vant/lib/index.css'
import {Toast,RadioGroup, Radio,List ,Swipe, SwipeItem,SwipeCell,Button,Card,Checkbox, CheckboxGroup} from 'vant'


createApp(App).use(store).use(router)
//使用vant 组件中,每一个<组件名> 都需要导入一个组件才能正常使用
.use(Swipe).use(SwipeItem)      //导入轮播图组件
.use(List)          //List 列表
.use(SwipeCell).use(Button).use(Card )        //滑动单元格 //按钮 //卡片                 
.use(Checkbox ).use(CheckboxGroup )         //复选框
.use(RadioGroup ).use(Radio )         //单选框
.use(Toast)         //toast 轻提示,要在要使用的组件里导入才有用
// .use(toast)         //使用自己的toast 插件
// .use(VueLazyLoad,{      //使用懒加载  img 的scr:地址 要修改为v-lazy:地址
//     // loading: require('./assets/img/9.jpg')             //还未加载完成时的替代图片
// })       
.mount('#app')  

// 解决移动端300ms 延迟  安装 导入 attach 就可以了
FastClick.attach(document.body)