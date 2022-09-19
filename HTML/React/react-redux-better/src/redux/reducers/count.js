/* 
    1.该文件时用于创建一个为Count 组件服务的reducer，reducer 的本质就是一个函数
    2.reducer 函数会接受两个参数，分别为：之前的状态（preState），动作对象（action）
    reducer 只会负责加减，不负责其他的异步加载等杂乱事情，就像厨师一样，只负责做菜，
    不会去考虑是否加小料
*/
import {INCREMENT,DECREMENT} from '../constant'
const initState=0       
export default  function countReducer(preState=initState,action){
    console.log(preState,action);
  
    const {type,data}=action
    switch (type) {
        case INCREMENT:   
         return  preState+data
        case DECREMENT:   
         return  preState-data
    
        default:
            return preState
    }
}
