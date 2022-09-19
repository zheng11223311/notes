const { ADD_PERSON } = require("../constant");

//初始化人的列表
const initState=[{id:'001',name:'tom',age:18}]
export default function personReducer(preState=initState,action){
    const {type,data}=action
    switch (type) {
        case ADD_PERSON:        //若是添加一个人
            return [data,...preState]
            // react 对preState 进行了浅比较,如果地址是一样的,就不会更新页面,
            // 而且会导致preState 被改写,personReducer 就不是纯函数了
            //所以下面的方式行不通
            // preState.unshift(data)
            // console.log(preState);
            // return preState
            
        default:
            return preState
    }
}