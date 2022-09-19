**安装插件：**

Redux DevTools 插件

 f12 调试工具即可查看

**安装redux-devtools-extension 库**

```
npm install redux-devtools-extension
```

**修改store.js 文件**

```js
/* 
    该文件专门用于暴露一个store 对象，整个应用只有一个store 对象
*/

//引入createStore，专门用于创建redux 中最为核心的store 对象
// combineReducers  合并reducer
import {createStore,applyMiddleware,combineReducers} from 'redux'
//引入为Count 组件服务的reducer
import countReducer from './reducers/count'
//引入为Person 组件服务的reducer
import personReducer from './reducers/person'
//引入redux-thunk，用于支持异步action
import  thunk from 'redux-thunk'
//引入redux-devtools-extension
//composeWithDevTools 编译伴随工具
import {composeWithDevTools} from 'redux-devtools-extension'
console.log(composeWithDevTools);

// 暴露store
// export default createStore(countReducer,applyMiddleware(thunk))
// {} 对象更好取出key 对应的值
const allReducer=combineReducers({
    he:countReducer,
    rens:personReducer
})
// export default createStore(allReducer,applyMiddleware(thunk))
// 浏览器插件开启使用
export default createStore(allReducer,composeWithDevTools(applyMiddleware(thunk)))
//不需要异步action 时
// export default createStore(allReducer,composeWithDevTools())
```

