import { createRouter, createWebHistory } from 'vue-router'

const showBlog=()=>import('../components/ShowBlog')
const add=()=>import('../components/AddBlog')

const routes = [
  {
    path: '/',
    redirect:'/show'
  },
  {
    path: '/show',
    name: 'showBlog',
    component: showBlog
  },
  {
    path: '/add',
    name: 'add',
    component: add
  },
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
  routes,
  // linkActiveClass:'active'  //自定义活跃的路由的class 名称
})

export default router
