export default {
        //异步操作通过这里操作
        // 默认参数context 上下文
        // aUpdataInfo(context,payload){
        //      setTimeout(()=>{
        //         //  context   现在相当于$store   
        //         // $store 有commit 方法
        //         context.commit('updataInfo')
        //         // console.log(payload);
        //         // 传递函数时payload,执行函数
        //         // payload()
        //         // 传递的是对象时
        //         console.log(payload.message);
        //         payload.success()
        //     },1000)
        // }


        aUpdataInfo(context,payload){
            return new Promise((resolve,reject)=>{
                 setTimeout(()=>{
                context.commit('updataInfo')
                console.log(payload);
              resolve('1111')
            },1000)
            })
        }
    }