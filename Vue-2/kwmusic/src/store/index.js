import { createStore } from 'vuex'

export default createStore({
  state: {
   bottombar:'',
  },
  mutations: {
    audio(state,obj){
      // console.log(state);
      // console.log(obj);
      state.audio=obj
    },
    bottombar(state,obj){
      state.bottombar=obj
    }

  },
  actions: {
  },
  modules: {
  }
})
