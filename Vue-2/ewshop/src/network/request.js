import axios from 'axios'

export function request(config){
    const instance=axios.create({
        baseURL:'http://api.shop.eduwork.cn',
        // baseURL:'https://httpbin.org',
        timeout:5000,
    })

    //请求拦截
    instance.interceptors.request.use(config=>{
            //如果有一些接口需要认证才能访问,就在这里统一设置
            return config       //放行
    },err=>{

    })

    //响应拦截
    instance.interceptors.response.use(res=>{
        console.log(res);
        return res.data?res.data:res
    },err=>{
            //如果有需要授权才可以访问的接口,统一去logo 页面授权


        //如果有错误,这里会去处理,显示错误信息
    })

    return instance(config)
}
