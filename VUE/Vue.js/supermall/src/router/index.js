import Vue from 'vue'
import VueRouter from 'vue-router'

//1.安装插件
Vue.use(VueRouter)

//2.创建router
const router=new VueRouter({
        routers:[
            {
            path:'/',
            redirect:'/home'
            }
        ]
})


//3.导出router
export default router