react-redux 不用在index.js 文件里面写检测组件状态的改变，会自动检测并更新页面

**index.js**

```js
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import store from './redux/store'
import {Provider} from 'react-redux'

ReactDOM.render(
  <React.StrictMode>
    {/* 将store 分配到每个App 里面每个需要store 的组件，不用自己一个个写 */}
   <Provider store={store}>
      <App />
   </Provider>
  </React.StrictMode>,
  document.getElementById('root')
);

reportWebVitals();

// store.subscribe(()=>{
//   ReactDOM.render(
//   <React.StrictMode>
//     <App />
//   </React.StrictMode>,
//   document.getElementById('root')
// );
// })
// diffing 使得不会所有的组件都进行更新
```

**App.js**

```js
//引入容器组件
import Count from './containers/Count/Count'
//‘引入redux 的store
// import store from './redux/store'
function App() {
  return (
    <div className="App">
      {/* <Count store={store}/> */}
      <Count />
    </div> 
  );
}

export default App;
```

**其他组件没有变化**

