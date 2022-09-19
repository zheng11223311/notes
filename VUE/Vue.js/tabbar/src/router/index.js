import Vue from 'vue'
import VueRouter from 'vue-router'

//1.安装插件
Vue.use(VueRouter)

const home=()=>import('../views/home/Home.vue')
const category=()=>import('../views/category/category.vue')
const cart=()=>import('../views/cart/cart.vue')
const profile=()=>import('../views/profile/profile.vue')

//2.创建路由对象
const routes=[
    {
        path:'',
        redirect:'/home'
    },
    {
        path:'/home',
        component:home
    },
    {
        path:'/category',
        component:category
    },
    {
        path:'/cart',
        component:cart
    },
    {
        path:'/profile',
        component:profile
    },
    
]
const router=new VueRouter({
    routes,
    mode:'history'
})

//3.导出router
export default router