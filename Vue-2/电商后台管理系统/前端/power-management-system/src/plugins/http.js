//将插件变为可以使用Vue.use(插件)的形式
//插件模块,vue2 文档开发插件
import axios from 'axios'
const myHttpServer={}
myHttpServer.install =(Vue)=>{
  // axios.defaults.baseURL='http://120.24.51.158:8881/pmanages/api/private/v1/'
  // axios.defaults.baseURL='http://127.0.0.1:8888/api/private/v1/'
  axios.defaults.baseURL='http://120.24.51.158:8889/api/private/v1/'
  
    //请求拦截
    axios.interceptors.request.use(res=>{
      
      //拦截成功
      if(res.url!="login"){
        const AUTO_TOKEN = localStorage.getItem('token')
        res.headers.Authorization = AUTO_TOKEN
      }
      // console.log(res);
      return res    //放行
    },err=>{})
    //响应拦截
    axios.interceptors.response.use(res=>{
      return res    //放行
    },err=>{})

    // 4. 添加实例方法
    Vue.prototype.$http = axios
  }

  export default myHttpServer