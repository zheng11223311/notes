//异步处理 调用状态管理的方法

import { getCart } from "network/cart";

const actions={
    //上下文 context 对象{}
    updateCart(context){
        getCart().then(res=>{
            // console.log(res);
            //提交个给addCart 方法
            context.commit('addCart',{count:res.data.length||0})
        })
    }
}


export default actions;