import { createRouter, createWebHistory } from 'vue-router'
const Home=()=>import('views/home/Home.vue')
const Category=()=>import('views/category/Category.vue')
const Profile=()=>import('views/profile/Profile.vue')
const Shopcart=()=>import('views/shopcart/Shopcart.vue')
const Detail=()=>import('views/detail/Detail.vue')

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/home',
    name: 'defaultHome',
    component: Home
  },
  {
    path: '/category',
    name: 'Category',
    component: Category
  },
  {
    path: '/profile',
    name: 'profile',
    component: Profile
  },
  {
    path: '/shopcart',
    name: 'Shopcart',
    component: Shopcart
  },
  {
    // path: '/detail/:id',
    path: '/detail',
    name: 'Detail',
    component: Detail
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
  routes
})

export default router
