import { store } from './../store/index'
import { createRouter, createWebHashHistory, RouteRecordRaw } from 'vue-router'
import Layout from '@/layout/AppLayout.vue'

const routes: Array<RouteRecordRaw> = [
  {
    path: '/',
    // name: 'Layout',
    component: Layout,
    children: [
      {
        path: '/', // 默认子路由
        name: 'home', // webpackChunkName 指定打包后的文件名称
        component: () => import(/* webpackChunkName: "home" */ '@/views/home/index.vue')
      },
      {
        path: 'profile',
        name: 'profile',
        component: () => import(/* webpackChunkName: "profile" */ '@/views/profile/index.vue'),
        meta: { requiresAuth: true }
      },
      {
        path: 'watch',
        name: 'watch',
        component: () => import(/* webpackChunkName: "watch" */ '@/views/watch/index.vue')
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: () => import(/* webpackChunkName: "login" */ '@/views/login/index.vue')
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
  history: createWebHashHistory(),
  routes
})

// 路由导航守卫
router.beforeEach((to, from, next) => {
  const { user } = store.state
  console.log(to.matched)
  if (to.matched.some(record => record.meta.requiresAuth)) {
    if (!user) {
      next({
        path: '/login',
        query: { redirect: to.fullPath }
      })
    } else {
      next()
    }
  } else {
    next()
  }
})

export default router
