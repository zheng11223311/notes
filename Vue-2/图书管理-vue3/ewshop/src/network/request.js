import axios from 'axios'
import { Notify,Toast} from 'vant';
import router from "../router";

export function request(config){
    const instance=axios.create({
        baseURL:'https://api.shop.eduwork.cn',
        timeout:5000
    })

    //请求拦截
    instance.interceptors.request.use(config=>{
        //如果有一些接口需要认证才可以访问,就在这统一设置
        const token=window.localStorage.getItem('token')
        if(token){
            config.headers.Authorization='Bearer '+token
        }

        return config;  //放行
    },err=>{})

    //响应拦截
    instance.interceptors.response.use(res=>{
        return res.data?res.data:res;      //放行
    },err=>{
        console.log(err.response);
        //如果有需要授权才可以访问的接口,统一去login 登入
        // if(err.response.status=='401'&&err.response.data.message=="Failed to authenticate because of bad credentials or an invalid authorization header."){
        //     Toast.fail('请先登入')
        //     // console.log(router);
        //     router.push({path:'/login'})
        // }

        // 如果有错误,这里面会去处理,显示错误信息
    //    console.log(err.response.data.errors[Object.keys(err.response.data.errors)[0]][0]);
    let result=err.response.data.errors[Object.keys(err.response.data.errors)[0]][0]
    // console.log(result);
       Notify(''+result)
    })


    return  instance(config);   //返回实例
}