// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import  '@/assets/css/register.css'
import moment from 'moment'
//导入自定义axios 组件
import myHttpServer from '@/plugins/http'
import myBread from '@/components/common/myBread'
// Vue.component('my-bread',myBread);  //使用组件
Vue.component(myBread.name,myBread);  //使用组件
// axios 不是vue 插件,将其转化为vue 插件并使用use() 使用插件
Vue.use(ElementUI).use(myHttpServer);
Vue.config.productionTip = false

//全局过滤器-处理时间
Vue.filter('fmdate',(v)=>{
  v=v*1000
  return moment(v).format('YYYY-MM-DD')
})

new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
