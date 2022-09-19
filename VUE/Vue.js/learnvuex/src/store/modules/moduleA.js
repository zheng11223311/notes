export default {
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