import Vue from 'vue'

//配置路由相关的信息
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'

// 导入home 和about 文件
// import home from '@/components/home'
// import about from '@/components/about'
// import user from '@/components/User'

// 懒加载写法
const home=()=>import('../components/home')
// home 组件下的组件
const homeNews=()=>import('../components/homeNews')
const homeMessage=()=>import('../components/homeMessage')
const about=()=>import('../components/about')
const user=()=>import('../components/User')
const profile=()=>import('../components/Profile')
//1.通过Vue.use(插件),安装插件
Vue.use(Router)

//2.创建Router 对象
// $router 就是new Router
// $route 那个路由处于活跃状态,拿到的就是那个路由
 const router=new Router({

  //配置路由和组件之间的关系
  //3.将router 对象传入到vue 实例中,既在index.js 里面挂载
  routes: [
    // {
    //   path: '/',
    //   name: 'HelloWorld',
    //   component: HelloWorld    url 没有HelloWorld 地址指向
    // }

    
    {
      path:'',
      //redirect 域名重定向,当在文件夹下面时,调到指定路径,默认
      //显示home 文件的信息
      // url 有home 地址指向
      redirect:'/home'
    },
    {
      //当路径下出现home,就显示component 组件
      path:'/home',
      component:home,
      // meta 用于创建组件的时候,beforeEach 函数更加
      // 简便的更换title
      meta:{
        title:'首页'
      },
      // children 是home 的内部文件(下一级文件)
      children:[
        // 影响kee-alive 状态的保持,去掉
      //   {
      //     path:'',
      //     redirect:'news',
      //     meta:{
      //   title:'新闻'
      // }
      //   },
        {
          //子路由不需要加/
          path:'news',
          component:homeNews
        },
        {
          //子路由不需要加/
          path:'message',
          component:homeMessage
        },
      ]
    },
    {
      path:'/about',
      component:about,
      meta:{
        title:'关于'
      }
    },
    {
      path:'/user/:userId',
      component:user,
      meta:{
        title:'用户'
      },
      beforeEnter:(to,from,next)=>{
      next()
      console.log('用户独享的路由');
      }
    },
    {
      path:'/profile',
      component:profile,
      meta:{
        title:'档案'
      }
    }
  ],
//去掉url 路径中的# 哈希值
  mode:'history',
  linkActiveClass:'active'
})

// 前置守卫guard(在跳转之前调用)
router.beforeEach((to,from,next)=>{
  // 从from 跳转到to 
  //更换meta 里面定义的title 标签,但是这样组件里面嵌套了子组件的话
  // 就显示undefined,这样只能获取到子组件的title
  // document.title=to.meta.title
  // 这样就不会
  document.title=to.matched[0].meta.title
  // console.log(to);
  // 里面必须调用next(),不然就不能继续运行下去
  next()
  // console.log('前置钩子++++');
})

// 后置钩子hook
router.afterEach((to,from)=>{
  // 不需要主动调用next() 
  // console.log('后置钩子----');
})

//导出Router,挂载到main.js
export default router