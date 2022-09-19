import { createRouter, createWebHistory } from 'vue-router'
import { Toast } from 'vant';
import store from "../store";

const Home =()=>import('../views/home/Home')
const Categroy =()=>import('../views/categroy/Categroy')
const Detail =()=>import('../views/detail/Detail')
const Profile =()=>import('../views/profile/Profile')
const ShopCart =()=>import('../views/shopcart/ShopCart')
const Register =()=>import('../views/profile/Register')
const Login =()=>import('../views/profile/Login')
const Address =()=>import('../views/profile/Address')
const AddressEdit =()=>import('../views/profile/AddressEdit')
const CreateOrder =()=>import('../views/profile/CreateOrder')
const Order =()=>import('../views/profile/Order')
const OrderDetail =()=>import('../views/profile/OrderDetail')



const routes = [
  {
    path: '',
    name: 'DefaultHome',
    component: Home,
    meta:{
      title:'图书兄弟',
      isAuthRequire:false
    }
  },
  {
    path: '/home',
    name: 'Home',
    component: Home,
    meta:{
      title:'图书兄弟',
      isAuthRequire:false
    }
  },
  {
    path: '/categroy',
    name: 'Categroy',
    component: Categroy,
    meta:{
      title:'图书兄弟-商品分类',
      isAuthRequire:false
    }
  },
  {
    path: '/detail',
    name: 'Detail',
    component: Detail,
    meta:{
      title:'图书兄弟-商品详情',
      isAuthRequire:false
    }
  },
  {
    path: '/profile',
    name: 'Profile',
    component: Profile,
    meta:{
      title:'图书兄弟-个人中心',
      isAuthRequire:true
    }
  },
  {
    path: '/register',
    name: 'Register',
    component: Register,
    meta:{
      title:'图书兄弟-用户注册',
      isAuthRequire:false
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
    path: '/shopcart',
    name: 'ShopCart',
    component: ShopCart,
    meta:{
      title:'图书兄弟-购物车',
      isAuthRequire:true
    }
  },
  {
    path: '/myaddress',
    name: 'Address',
    component: Address,
    meta:{
      title:'图书兄弟-地址管理',
      isAuthRequire:true
    }
  },
  {
    path: '/addressedit',
    name: 'AddressEdit',
    component: AddressEdit,
    meta:{
      title:'图书兄弟-编辑地址',
      isAuthRequire:true
    }
  },
  {
    path: '/createOrder',
    name: 'CreateOrder',
    component: CreateOrder,
    meta:{
      title:'图书兄弟-订单详情',
      isAuthRequire:true
    }
  },
  {
    path: '/order',
    name: 'Order',
    component: Order,
    meta:{
      title:'图书兄弟-订单列表',
      isAuthRequire:true
    }
  },
  {
    path: '/orderdetail',
    name: 'OrderDetail',
    component: OrderDetail,
    meta:{
      title:'图书兄弟-订单支付详情',
      isAuthRequire:true
    }
  },

 
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

//导航守卫,跳转之前
router.beforeEach((to,from,next)=>{
  // 如果没有登入,在这里到login
  // console.log(to.meta.isAuthRequire);
  // console.log(to.name);
  if(to.meta.isAuthRequire&&store.state.user.isLogin=='false'){
    Toast.fail('登入后才能使用')
    return next('/login')
  }else{
    //登入后
    store.dispatch('updateCart')
    next();
  }
  
  //to 到哪个界面
  document.title=to.meta.title
})
export default router
