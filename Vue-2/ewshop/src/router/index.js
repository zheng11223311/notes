import { createRouter, createWebHistory } from 'vue-router'
const Home=() => import('../views/home/Home.vue')
const Category=() => import('../views/category/Category')
const Detail=() => import('../views/detail/Detail')
const Profile=() => import('../views/profile/Profile')
const Shopcart=() => import('../views/shopcart/Shopcart')
const Register=() => import('../views/profile/Register')
const Login=() => import('../views/profile/Login')
const Address=() => import('../views/profile/Address')
const AddressEdit=() => import('../views/profile/AddressEdit')

const routes = [
  {
    path: '/',
    name: 'defaultHome',
    component: Home,
    meta:{
      title:'图书兄弟'
    }
  },
  {
    path: '/home',
    name: 'Home',
    component: Home,
    meta:{
      title:'图书兄弟'
    }
  },
  {
    path: '/category',
    name: 'Category',
    component: Category,
    meta:{
      title:'图书兄弟-商品分类'
    }
  },
  {
    path: '/detail',
    name: 'Detail',
    component: Detail,
    meta:{
      title:'图书兄弟-商品详情'
    }
  },
  {
    path: '/shopcart',
    name: 'Shopcart',
    component: Shopcart,
    meta:{
      title:'图书兄弟-购物车'
    }
  },
  {
    path: '/profile',
    name: 'Profile',
    component: Profile,
    meta:{
      title:'图书兄弟-个人中心'
    },
  },
  {
    path: '/register',
    name: 'Register',
    component: Register,
    meta:{
      title:'图书兄弟-用户注册'
    }
  },
  {
    path: '/login',
    name: 'Login',
    component: Login,
    meta:{
      title:'图书兄弟-用户登入'
    }
  },
  {
    path: '/address',
    name: 'Address',
    component: Address,
    meta:{
      title:'图书兄弟-我的地址'
    }
  },
  {
    path: '/addressEdit',
    name: 'AddressEdit',
    component: AddressEdit,
    meta:{
      title:'图书兄弟-增加地址'
    }
  }
  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})
router.beforeEach((to,from,next)=>{
  //如果没有登入,在这里到login
    next()
    document.title=to.meta.title
})
export default router
