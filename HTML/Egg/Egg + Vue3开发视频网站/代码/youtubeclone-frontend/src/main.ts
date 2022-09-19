import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
// 原生
// import store from './store'
// createApp(App).use(store).use(router).mount('#app')

// import { store,key } from './store/index';
import { store, key } from './store' // 等同./store/index
createApp(App).use(store, key).use(router).mount('#app')
