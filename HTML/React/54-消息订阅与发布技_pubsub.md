**消息订阅-发布机制**

**1.工具库:**

```
PubSubJS
```

**2.下载:**

```
npm i pubsub-js --save
```

**3.使用:**

​	1. import PubSub from 'pubsub-js' //接收方和发布方都要引入

 	2. const a=PubSub.subscribe('delete',function(data){})	//订阅
      	1. 例子PubSub.subscribe('消息名a',function(消息名a,接收数据参数){})

 	3. PubSub.publish('delete',data)	//发布消息
      	1. 例子PubSub.publish('消息名a',发送的数据)
 	4. PubSub.unsubscrible(a)       //接收消息方取消订阅a

**通俗解释(订阅报纸):**

​	1.交钱,说好地址,订阅哪一种报纸(订阅消息:消息名)

​	2.邮递员送报纸(发布消息)

**4.实例:**

**App.jsx 文件**

```jsx
import axios from 'axios'

 import React, { Component } from 'react'
 import Search from '../src/components/Search/index'
 import List from '../src/components/List/index'
 import './App.css'

 export default class App extends Component {


  
 
   render() {
     return (
       <div className="container">
         <Search/>
         <List/>
         
       </div>
     )
   }
 }
 
```

**发布方:**

**Search 文件夹下的index.jsx 文件**

```jsx
import axios from 'axios';
import PubSub from 'pubsub-js'
import React, { Component } from 'react'

export default class Search extends Component {
    search = () => {

        console.log('search 发布消息了');
        //获取用户的输入
        const { keyWordElement: { value } } = this

        //发送请求前通知List 更新状态
        PubSub.publish('messageName', { isFirst: false, isLoading: true })
        console.log(value);

        //发送网络请求
        axios.get(`https://api.github.com/search/users?q=${value}`).then(
            res => {
                PubSub.publish('messageName', { isLoading: false, users: res.data.items })
            },
            error => {
                PubSub.publish('messageName', { isLoading: false, err: error })
            }

        )
    }
    render() {
        return (
            <section className="jumbotron">
                <h3 className="jumbotron-heading">搜索 Github 用户</h3>
                <div>
                    <input ref={c => this.keyWordElement = c} type="text" placeholder="搜索关键词点击搜索" />&nbsp;
                    <button onClick={this.search}>搜索</button>
                </div>
            </section>
        )
    }
}

```

**接收方:**

**List 文件夹下的index.jsx 文件**

```jsx
import React, { Component } from 'react'
import PubSub from 'pubsub-js'

export default class List extends Component {
    state = {    //初始化状态,users 初始化为数组
        users: [],    //users 初始化状态
        isFirst: true,  //是否为第一次打开
        isLoading: false, //标识是否处于加载中
        err: '',  //储存请求相关的错误信息
    }
    componentDidMount() {

        this.token = PubSub.subscribe('messageName', (msg, data) => {
            console.log('list 组件收到数据了', data)
            this.setState(data)
        })
    }
    // 组件卸载前
    componentWillUnmount() {
        // 取消订阅
        PubSub.unsubscribe(this.token)
    }
    render() {
        const { users, isFirst, isLoading, err } = this.state
        // err.message
        //请求错误时,传入的是err.message,而不是一个err 对象,不然整个屏幕都是报错信息
        return (
            <div className="row">
                {
                    isFirst ? <h2>欢迎使用,输入关键字,随后点击搜索</h2 > :
                        isLoading ? <h2>Loading.....</h2 > :
                            err ? <h2 style={{ color: 'red' }}>{err.message}</h2 > :
                                this.state.users.map((userObj) => {
                                    return (
                                        <div key={userObj.id} className="card">
                                            <a rel="noreferrer" href={userObj.html_url} target="_blank" className="">
                                                <img src={userObj.avatar_url} style={{ width: "100px" }} alt="" />
                                            </a>
                                            <p className="card-text">{userObj.login}</p>
                                        </div>
                                    )
                                })
                }

            </div>
        )
    }
}

```

**全局样式: App.css**

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

