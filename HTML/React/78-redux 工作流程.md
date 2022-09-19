**1.redux 工作流程**

​														action -->1.type:'things type',  2.data:things data

Action Creators ------dispatch(action)-----> Store -------(previousState,action)----> Reducers

 |																		|	<----------return newState---------------|

 |												   getState()	|

 |<------------------------(do what?)-------------React components

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.meiyoubug.com%2Fcommon%2F1576046%2F202002%2F1576046-20200201111726133-1653757596.png&refer=http%3A%2F%2Fimg.meiyoubug.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627822254&t=191f2106db660f0fe8b80d63bb92d98a)

**2.redux 的3 个核心概念**

**1.action**

1.动作对象

2.包含2个属性

​	type：标识属性，值为字符串，唯一，必要属性

​	data：数据属性，值类型任意，可选属性

3.例子：{type:'ADD_STUDENT',data:{name:'tom',age:18}}

**2.reducer**

1.用于初始化状态，加工状态

2.加工时，根据旧的state 和action ，产生新的state 的纯函数

**3.store**

1.将state，action，reducer 联系在一起的对象

2.如何得到对象？

​	1.import {createStore} from 'redux'

​	2.import reducer from './reducers'

3.此对象的功能？

​	1.getState():得到state

​	2.dispatch(action):分发action，触发reducer 调用，产生新的state

​	3.subscribe(listener):注册监听，当产生了新的state 时，自动调用