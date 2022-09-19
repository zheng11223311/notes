import Vue from 'vue'
import Vuex from 'vuex'
// index 和App 里面同时使用同一个常量来定义
import {INCREMENT} from "./mutations-types"

//1.安装插件
Vue.use(Vuex)

const moduleA={
    state:{
        name:'zhansan'
    },
    mutations:{
        updateName(state,payload){
            state.name=payload
        }
    },
    actions:{
        //  这个context 不在是$store,指的是自己modulesA
        // context 的commit 指向的自己的mutations
        aUpdateName(context){
            console.log(context);
           setTimeout(()=>{
                context.commit('updateName','wanwu')
           },1000)
        }
    },
    getters:{
        fullName(state){
            return state.name+'1111'
        },
        fullName2(state,getters){
            return getters.fullName+'222'
        },
        fullName3(state,getters,rootState){
            return getters.fullName2+rootState.counter
        }
    }
    //也可以在创建modules:{} 模块,不建议
 }


//2.创建对象  创建的是Vuex.Store  vuex 里面的Store
const store =new Vuex.Store({
    state:{
        counter:1000,
        students:[
            {id:110,name:'why',age:18},
            {id:111,name:'cwhy',age:28},
            {id:112,name:'0why',age:10}
        ],
        info:{
            name:'codewhy',//Dep->[watcher,watcher...]
            //响应式数据,每个数据都被加到Dep 观察
            //改变数据是会通知里面每一个有这个变化的watcher
            // state 里面数据都会被加到响应式系统里面
            // 后来加上去的信息不回被加到响应式系统里面
            age:18,//Dep->[watcher,watcher...]
            height:1.88//Dep->[watcher,watcher...]
        }
    },
    mutations:{
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
    },
    actions:{
        //异步操作通过这里操作
        // 默认参数context 上下文
        // aUpdataInfo(context,payload){
        //      setTimeout(()=>{
        //         //  context   现在相当于$store   
        //         // $store 有commit 方法
        //         context.commit('updataInfo')
        //         // console.log(payload);
        //         // 传递函数时payload,执行函数
        //         // payload()
        //         // 传递的是对象时
        //         console.log(payload.message);
        //         payload.success()
        //     },1000)
        // }


        aUpdataInfo(context,payload){
            return new Promise((resolve,reject)=>{
                 setTimeout(()=>{
                context.commit('updataInfo')
                console.log(payload);
              resolve('1111')
            },1000)
            })
        }
    },
    getters:{
        // 其他组件需要获得counter 经过一系列转换后的数据
        // 函数的参数默认是state,做多只有2个参数
        powerCounter(state){
            return state.counter*state.counter
        },
        more20stu(state){
            return state.students.filter(s=>s.age>20)
        },
        more20stuLength(state,getters){
            return getters.more20stu.length
        },
        moreAgestu(state){
            return function(age){
                return state.students.filter(s=>s.age>age)
            }
        }
    },
    modules:{
        //防止state 过多导致臃肿,进行模块管理
        a:moduleA,
        b:{
            state:{},
            mutations:{},
            actions:{},
            getters:{}
            //也可以在创建modules:{} 模块,不建议
        }
    }
})

//3.导出store 对象
export default store


