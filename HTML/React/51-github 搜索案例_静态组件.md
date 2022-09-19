**App.jsx 文件**

```jsx
import axios from 'axios'

 import React, { Component } from 'react'
 import Search from '../src/components/Search/index'
 import List from '../src/components/List/index'
 import './App.css'

 export default class App extends Component {
   state={    //初始化状态,users 初始化为数组
     users:[],    //users 初始化状态
     isFirst:true,  //是否为第一次打开
     isLoading:false, //标识是否处于加载中
     err:'',  //储存请求相关的错误信息
  }  

  //更新App 的state
   updateAppState=(stateObj)=>{
        this.setState(stateObj)
   }
 
   render() {
    //  let ob=(async ()=>{
    //        var obj= axios.get('http://localhost:3000/ccc')
    //     obj.then(res=>{
    //       console.log(res);
    //       console.log(this);
          
    //     })
    //       return obj
    //   })()
    //     ob.then(res=>{
    //       console.log(res.data.postList);
    //     })
        // this.setState({url:})
     return (
       <div className="container">
         <Search updateAppState={this.updateAppState}/>
         <List {...this.state}/>
         
       </div>
     )
   }
 }
 



```

**App.css 文件**

```css
.album {
  min-height: 50rem;
  padding-top: 3rem;
  padding-bottom: 3rem;
  background-color: #f7f7f7;
}

.card {
  float: left;
  width: 33.33%;
  padding: .75rem;
  margin-bottom: 2rem;
  border: 1px solid #efefef;
  text-align: center;
}

.card>img {
  margin-bottom: .75rem;
  border-radius: 100px;
}

.card-text {
  font-size: 85%;
}
```

