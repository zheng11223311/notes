import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import { Input,Table,Divider,Button ,Card,Menu} from 'ant-design-vue';
// import {   } from '@ant-design/icons-vue';

import 'ant-design-vue/dist/antd.css'; // or 'ant-design-vue/dist/antd.less'


const app=createApp(App)

// 全局挂载axios
// app.config.globalProperties.$axios = axios;
app.use(Input).use(Table).use(Divider).use(Button).use(Card).use(Menu)
app.use(store).use(router).mount('#app')
