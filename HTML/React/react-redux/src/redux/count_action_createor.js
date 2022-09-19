/* 
    该文件专门为Count 组件生成action 对象
*/

import {INCREMENT,DECREMENT} from './constant'

// 直接使用data=>{type:'increment',data}，会把{} 当成一个函数的函数体的{}
//同步action，就是指action 的值为Object 类型的一般对象
export const createIncrementAction=data=>({type:INCREMENT,data})
export const createDecrementAction=data=>({type:DECREMENT,data})

//异步action，就是指action 的值为函数，异步action 中一般会使用同步action
//异步action 不是必须要用的
// import store from './store'
// export const createIncrementAsyncAction=(data,time)=>{
//     return ()=>{
//         setTimeout(()=>{
//             store.dispatch(createIncrementAction(data))
//         },time)
//     }
// }

//简化，可以不导入import store from './store'
export const createIncrementAsyncAction=(data,time)=>{
    return (dispatch)=>{
        setTimeout(()=>{
            dispatch(createIncrementAction(data))
        },time)
    }
}