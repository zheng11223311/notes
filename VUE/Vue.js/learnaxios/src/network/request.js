import axios from 'axios'

// export function request(config,success,failure){
//     //1.创建一个axios 的实例
//     const instance=axios.create({
//         baseURL:'https://httpbin.org',
//     timeout:5000
//     })

//     //发送正真的网络请求
//     instance(config)
//     .then(res=>{
//         // console.log(res);
//         success(res)
//     })
//     .catch(err=>{
//         // console.log(err);
//         failure(err)
//     })
// }


// 简洁写法
// export function request(config){
//     //1.创建一个axios 的实例
//     const instance=axios.create({
//         baseURL:'https://httpbin.org',
//     timeout:5000
//     })

//     //发送正真的网络请求
//     instance(config.baseConfig)
//     .then(res=>{
//         // console.log(res);
//         config.success(res)
//     })
//     .catch(err=>{
//         // console.log(err);
//         config.failure(err)
//     })
// }


// 最终方案
// export function request(config){
//     return new Promise((resolve,reject)=>{
//         //1.创建一个axios 的实例
//     const instance=axios.create({
//         baseURL:'https://httpbin.org',
//     timeout:5000
//     })

//     //发送正真的网络请求
//     instance(config)
//     .then(res=>{
//         resolve(res)
//     })
//     .catch(err=>{
//        reject(err)
//     })
//     })
// }






// 最最终方案
export function request(config){
    const instance=axios.create({
        baseURL:'https://httpbin.org',
    timeout:5000
    })
    //2.axios 拦截器    interceptors 拦截器
    //拦截请求成功/失败
instance.interceptors.request.use(config=>{
        console.log(config);
        // 请求拦截的作用
        //1.比如说config 中的一些信息不符合服务器的要求
        //2.比如每次发送网络请求时,都希望在界面中显示一个请求的图标
        // 请求时显示,响应时隐藏
        //某些网络请求(比如登入(token)),必须携带一些特殊的请求
        //拦截成功后没有将数据return 返回给内部,err 也会打印
        return config
},err=>{
        console.log(err);
})

//拦截响应成功/失败
instance.interceptors.response.use(res=>{
    console.log(res);
    //拦截成功后没有将数据return 返回给内部,内部无法处理
        return res.data
},err=>{
    console.log(err);
})


    //发送正真的网络请求
    // instance(config) 本身返回的就是promise
    //点击查看内部源码
    //也就是将promise 导出
    return instance(config)
}


// 可以写多个请求接口
export function request1(){

}