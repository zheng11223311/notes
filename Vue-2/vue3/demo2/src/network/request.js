// 封装网络请求
import axios from 'axios'

const instance=axios.create({
    baseURL:'',
    timeout:5000,
})

// 拦截器
instance.interceptors.request.use(res=>{
    console.log(res);
    // res.headers.token='1234'
    return res
},err=>{
    console.log(err);
    return Promise.reject(err)
})
instance.interceptors.response.use(res=>{
    console.log(res);
    console.log(11111);
    // res.headers.token='1234'
    return res
},err=>{
    console.log(err);
    return Promise.reject(err)
})


 export function get(url,params){
    // return  axios.get(url,{
    return  instance.get(url,{
         params
     })
 }
 export function post(url,params){
    return instance.post(url,params,{
         transformRequest:[
             function(data){
                 let str=''
                 for(let key in data){
                     str+=encodeURLComponent(key)+'='+encodeURIComponent(data[key])+"$"
                 }
                 console.log(str);
                 return str
             }
         ],
         headers:{
             'Content-Type':'application/x-www-form-urlencoded'
         }
     })
 }

 export function del(url){
     return instance.delete(url)
 }