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