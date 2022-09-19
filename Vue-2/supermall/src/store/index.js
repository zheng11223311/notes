import { createStore } from 'vuex'
import {Vue} from 'vue'


const state={
  cartList:[],
  
}

export default createStore({
  state,
  mutations: {
    // mutations 唯一的目的就是修改state 中的状态
    // mutations 中的每个方法尽可能完成的事件比较单一
    // this.$store.commit("addCart", product);
    // addCart(state,payload){}

    addCounter(state,payload){
      payload.count++
    },
    addToCart(state,payload){
        state.cartList.push(payload)
    },
   
   
  },
  actions: {
    // mutations 唯一的目的就是修改state 中的状态
    // mutations 中的每个方法尽可能完成的事件比较单一
    // actions 异步+复杂
    // this.$store.dispatch("addCart", product)
    // addCart(context,payload){}  再通过methods 改变数据

    addCart(context,payload){
      
      //1.查找之前数组中是否有该商品
     let  oldProduct=context.state.cartList.find(item=>item.title===payload.title)

      //2.判断oldProduct 是否存在
      if(oldProduct){
        context.count=1
        context.commit('addCounter',oldProduct)
      }else{
        payload.count=1
        payload.id=true
        // context.state.cartList.push(payload)
        context.commit('addToCart',payload)
      }
        console.log(context.state.cartList);
        console.log(oldProduct);
    }
  },
  modules: {
  },
  getters:{
    cartLength(state){
      return state.cartList.length
    },
    cartList(state){
      return state.cartList
    }
  }
})
