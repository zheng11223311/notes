**src 下index.js 文件**

```js
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
//reportWebVitals 用于记录页面的性能
import reportWebVitals from './reportWebVitals';
// React.StrictMode>  检查语法错误,比如使用ref='sss',使用字符串形式的ref
ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();

```

