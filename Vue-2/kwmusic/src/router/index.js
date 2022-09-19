import { createRouter, createWebHistory } from 'vue-router'


const routes = [
  {
    path: '/',
    name: 'BroadSide',
    component: () => import( '../views/BroadSide.vue'),
    children:[
      {
        path: '/',
        name: 'HomeIndex',
        component: () => import( '@/components/HomeIndex.vue'),
      },
      {
        path: '/seachmoreresult',
        name: 'SeachMoreResult',
        component: () => import( '../views/SeachMoreResult.vue'),
        children:[    //seachmoreresult 中的路由
          {
            path: '/seachmoreresult',   
            redirect: '/seachmoreresult/single',
          },
          {
            path: 'single',   //不需要加 /
            name: 'Single',
            component: () => import( '@/components/Single.vue'),
          },
          {
            path: 'mv',   
            name: 'mv',
            component: () => import( '@/components/MV.vue'),
          },
          {
            path: 'song',   
            name: 'song',
            component: () => import( '@/components/Song.vue'),
          },
          {
            path: 'transceiver',   
            name: 'transceiver',
            component: () => import( '@/components/Transceiver.vue'),
          },
          {
            path: 'singer',   
            name: 'singer',
            component: () => import( '@/components/Singer.vue'),
          },
          {
            path: 'album',   
            name: 'album',
            component: () => import( '@/components/Album.vue'),
          },
          {
            path: 'lrc',   
            name: 'lrc',
            component: () => import( '@/components/Lrc.vue'),
          }
        ]
      },
      {
        path: '/songlist',
        name: 'SongList',
        component: () => import( '../components/SongList.vue'),
      },
      {
        path: '/transceiverlist',
        name: 'TransceiverList',
        component: () => import( '../components/TransceiverList.vue'),
      },
    ]
  },
  {
    path: '/mp4',
    name: 'Mp4',
    component: () => import( '../views/Mp4.vue'),
  },
  
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
