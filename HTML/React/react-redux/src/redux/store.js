/* 
    该文件专门用于暴露一个store 对象，整个应用只有一个store 对象
*/

//引入createStore，专门用于创建redux 中最为核心的store 对象
//applyMiddleware  处理异步的中间件
import {createStore,applyMiddleware} from 'redux'
//引入为Count 组件服务的reducer
import countReducer from './count_rducer'
//引入redux-thunk，用于支持异步action
import  thunk from 'redux-thunk'

// const store=createStore(countReducer)
// export default store

//暴露store
export default createStore(countReducer,applyMiddleware(thunk))