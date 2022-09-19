// index 和App 里面同时使用同一个常量来定义
import {INCREMENT} from "./mutations-types"

export default {
        //里面定义方法,默认参数state
        // [INCREMENT](state) 都行
        ['INCREMENT'](state){
            state.counter++
        },
        decrement(state){
            state.counter--
        },
        incrementCount(state,count){
            console.log(count);//count 成为了一个对象payload
            // 可以把 incrementCount(state,count){ 的count改为payload
            //payload 负载 表示commit 可以多带一个参数 比如count,就是参数payload
            state.counter+=count.count
        },
        addStudent(state,stu){
            state.students.push(stu)
        },
        updataInfo(state){
            // setTimeout 模拟异步操作
            setTimeout(()=>{
                //界面会修改,调试的内容没有被修改
                //devtools 追踪不到异步
                state.info.name='aaaa'
            },1000)
            // state.info.name='coood'
              // 洛杉矶 后来加上的不会被加到响应式系统里面
            //既不会被响应
            // state.info['address']='洛杉矶'
            // 和原来就有的属性state.info.name='coood' 一起
            // 改变就会响应

            // 响应式添加
            // Vue.set(state.info,'address','洛杉矶')

            //非响应式删除
            // delete info.age

            // 响应式删除
            // Vue.delete(state.info,'age')

        }
    }