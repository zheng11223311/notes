/* 
    该文件用于汇总所有的reducer 为一个总的reducer ，返回给store
*/
//引入为Count 组件服务的reducer
import count from './count'
//引入为Person 组件服务的reducer
import persons from './person'
// combineReducers  合并reducer
import {combineReducers} from 'redux'

// {} 对象更好取出key 对应的值
const allReducer=combineReducers({
    count,
    persons
})
export default allReducer