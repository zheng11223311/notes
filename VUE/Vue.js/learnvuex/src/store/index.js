import Vue from 'vue'
import Vuex from 'vuex'
import mutations from './mutations'
import actions from './actions'
import getters from './getters'
import moduleA from './modules/moduleA'

//1.安装插件
Vue.use(Vuex)

const state={
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
    }
//2.创建对象  创建的是Vuex.Store  vuex 里面的Store
const store =new Vuex.Store({
    state,
    mutations,
    actions,
    getters,
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


