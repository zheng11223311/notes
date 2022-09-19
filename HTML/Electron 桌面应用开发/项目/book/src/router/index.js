import {
  createRouter,
  createWebHistory,
  createWebHashHistory
} from 'vue-router'
import LandingPage from '../components/LandingPage/LandingPage.vue'
import Books from '../components/Books.vue'
import BookContent from '../components/BookContent.vue'
import ShowBookContent from '../components/ShowBookContent.vue'

const routes = [{
    path: '/',
    name: 'LandingPage',
    component: LandingPage,
    meta: {
      keepAlive: true
    }
  },
  {
    path: '/books',
    name: 'Books',
    component: Books,
    meta: {
      keepAlive: false
    }
  },
  {
    path: '/bookContent',
    name: 'BookContent',
    component: BookContent,
    meta: {
      keepAlive: true
    },
    children: [{
      path: 'showbookcontent',
      name: 'ShowBookContent',
      component: ShowBookContent,
      meta: {
        keepAlive: false
      }
    }]
  }
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  // history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router