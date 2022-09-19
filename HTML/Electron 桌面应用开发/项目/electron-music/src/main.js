import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import request from './utils/request'


let app=createApp(App)

/* 挂载全局对象 start */
app.config.globalProperties.$http = request
/* 挂载全局对象 end */


app.use(store).use(router).mount('#app')
