mapDispatchToProps 也可以是一个对象

**src/containers/Count/Count.jsx 文件**

```js
//引入count 的UI 组件
import CountUI from '../../compoments/Count/Count'
import {
    createIncrementAction,
    createDecrementAction,
    createIncrementAsyncAction
} from '../../redux/count_action_createor'

//引入connect 用于连接UI组件库与redux
import { connect } from 'react-redux'



//创建并暴露一个容器组件
export default connect(
    state => {
        console.log('容器接受到store 传来的state', state);
        return { count: state }
    },
    // mapDispatchToProps 的一般写法
    // dispatch => (
    //     {
    //         jia: (number) => {
    //             // 通知redux 执行方法
    //             dispatch(createIncrementAction(number))
    //         },
    //         jian: (number) => {
    //             // 通知redux 执行方法
    //             dispatch(createDecrementAction(number))
    //         },
    //         jianAsync: (number, time) => {
    //             // 通知redux 执行方法
    //             dispatch(createIncrementAsyncAction(number, time))
    //         }
    //     })

    //mapDispatchToProps 的简写,redux-react 自动分发

    {
        jia: createIncrementAction,
        jian: createDecrementAction,
        jianAsync: createIncrementAsyncAction
    }

)(CountUI)

```

