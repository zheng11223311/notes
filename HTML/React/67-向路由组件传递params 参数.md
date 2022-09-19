**1.params 参数**

路由链接（携带参数）：

```jsx
<Link to={`/home/message/detail/${msgObj.id}/${msgObj.title}`}>{msgObj.title}</Link>
```

注册路由（声明接受）：

```jsx
<Route path="/home/message/detail/:id/:title" component={Detail} />
```

接受参数：

```jsx
const { id, title } = this.props.match.params
```

**示例**

二级路由Home 下的message 路由

```jsx
import React, { Component } from 'react'
import { Link, Route } from 'react-router-dom'
import Detail from './Detail/Detail'

export default class Message extends Component {
    state = {
        messageArr: [
            { id: '01', title: '消息1' },
            { id: '02', title: '消息2' },
            { id: '03', title: '消息3' },
        ]
    }
    render() {
        const { messageArr } = this.state
        console.log(messageArr.length);
        return (
            <div>
                <ul>
                    {
                        messageArr.map((msgObj) => {
                            return (
                                <li key={msgObj.id}>
                                    {/* 向路由组件传递params 参数 
                                    模板字符串属于js 语法，需要{} 起来
                                    */}
                                    <Link to={`/home/message/detail/${msgObj.id}/${msgObj.title}`}>{msgObj.title}</Link>
                                </li>
                            )
                        })
                    }
                </ul>
                <hr />
                {/* 声明接受的params 参数 */}
                <Route path="/home/message/detail/:id/:title" component={Detail} />
                {/* <Detail /> */}
            </div>
        )
    }
}

```

三级路由message 下的detail 路由（message  的子路由detail ）

```jsx
import React, { Component } from 'react'

const DetailData = [
    { id: '01', content: '你好，中国' },
    { id: '02', content: '你好222，中国' },
    { id: '03', content: '你好3，中国' },
]
export default class Detail extends Component {

    render() {
        console.log(this.props);
        const { id, title } = this.props.match.params
        const findResult = DetailData.find((detailObj) => {
            return detailObj.id == id
        })
        return (
            <ul>
                <li>ID:{id}</li>
                <li>TITLE:{title}</li>
                <li>CONTENT:{findResult.content}</li>
            </ul>
        )
    }
}
```

