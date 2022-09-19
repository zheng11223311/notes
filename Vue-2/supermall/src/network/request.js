import axios from 'axios'
//npm i axios -S 安装axios 库,脚手架不自带axios 
export function request(config){
    //1.创建axios 的实例
    const instance=axios.create({
        // baseURL:'http://www.baidu.com',
        baseURL:'https://httpbin.org',
        // baseURL:'http://123.207.32.32:8000',
        timeout:5000,
    })

    // 2.axios 的拦截器
//2.1请求拦截的作用
instance.interceptors.request.use(config1=>{
    // console.log(config1);
    return config1
},err=>{
    console.log(err);
})

//2.2响应拦截
instance.interceptors.response.use(res=>{
    return res.data?res.data:res
},err=>{
    console.log(err);
})
// console.log(instance());
return instance(config)     //axios去请求，最终保存起来。就有了响应拦截与请求拦截
}

