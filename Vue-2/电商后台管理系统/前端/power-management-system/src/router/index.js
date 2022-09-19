import { Message } from 'element-ui'
import Vue from 'vue'
import Router from 'vue-router'
const login=()=>import('@/components/login/login.vue')
const home=()=>import('@/components/home/home.vue')
const users=()=>import('@/components/users/users.vue')
const rights=()=>import('@/components/rights/right.vue')
const roles=()=>import('@/components/rights/role.vue')
const goodsList=()=>import('@/components/goods/goodsList.vue')
const goodsAdd=()=>import('@/components/goods/goodsAdd.vue')
const cateparams=()=>import('@/components/goods/cateparams.vue')
const goodscate=()=>import('@/components/goods/goodscate.vue')
const order=()=>import('@/components/order/order.vue')
const reports=()=>import('@/components/report/report.vue')

Vue.use(Router)

const router= new Router({
  routes: [
    {
      path: '/',
      name: 'login',
      component: login
    },
    {
      path: '/home',
      name: 'home',
      component: home,
      // home 组件内的路由跳转,只在home组件内显示
      children:[{
        path: 'users',
        name: 'users',
        component: users
      },
      {
        path: 'rights',
        name: 'rights',
        component: rights
      },
      {
        path: 'roles',
        name: 'roles',
        component: roles
      },
      {
        path: 'goods',
        name: 'goodsList',
        component: goodsList
      },
      {
        path: 'goodsadd',
        name: 'goodsAdd',
        component: goodsAdd
      },
      {
        path: 'params',
        name: 'params',
        component: cateparams
      },
      {
        path: 'categories',
        name: 'categories',
        component: goodscate
      },
      {
        path: 'orders',
        name: 'orders',
        component: order
      },
      {
        path: 'reports',
        name: 'reports',
        component: reports
      },
    ]
    },
    
  ]
})
//再路由生效之前 统一判断token
//路由守卫 在路由配置之前生效之前
//路由/导航 守卫
// to ->要去的路由配置
//from ->当前的路由配置
router.beforeEach((to,from,next)=>{
  if(to.path=='/'){
    //如果要去登入
    next()
  }
  else{
    // 如果去的不是登入
    // 判断token
    const token=localStorage.getItem('token')
    if(!token){
      Message.warning('请先登入')
      next('/')
      return
    }
    next()
  }
})


export default router