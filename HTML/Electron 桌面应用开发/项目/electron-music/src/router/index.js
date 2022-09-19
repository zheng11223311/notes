import { createRouter, createWebHashHistory } from 'vue-router'
import Single from '../components/Single.vue'
import Mv from '../components/Mv.vue'
import Song from '../components/Song.vue'
import SongList from '../components/SongList.vue'

const routes = [
  {
    path: '/',
    name: 'Single',
    component: Single,
    meta:{
      keepAlive:true
    }
  },
  {
    path: '/single',
    name: 'Single',
    component: Single,
    meta:{
      keepAlive:true
    }
  },
  {
    path: '/mv',
    name: 'Mv',
    component: Mv,
    meta:{
      keepAlive:true
    }
  },
  {
    path: '/song',
    name: 'Song',
    component: Song,
    meta:{
      keepAlive:true
    }
  },
  {
    path: '/songlist',
    name: 'SongList',
    component: SongList,
    meta:{
      keepAlive:true
    }
  },
  
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
