/* 
    该文件专门用于暴露一个store 对象，整个应用只有一个store 对象
*/

//引入createStore，专门用于创建redux 中最为核心的store 对象
// combineReducers  合并reducer
import {createStore,applyMiddleware} from 'redux'
//引入汇总之后总的reducer 
import reducer from './reducers/index'

//引入redux-thunk，用于支持异步action
import  thunk from 'redux-thunk'
//引入redux-devtools-extension
//composeWithDevTools 编译伴随工具
// import {composeWithDevTools} from 'redux-devtools-extension'
// console.log(composeWithDevTools);

// 暴露store
// export default createStore(countReducer,applyMiddleware(thunk))

export default createStore(reducer,applyMiddleware(thunk))
// 浏览器插件开启使用
// export default createStore(allReducer,composeWithDevTools(applyMiddleware(thunk)))
//不需要异步action 时
// export default createStore(allReducer,composeWithDevTools())