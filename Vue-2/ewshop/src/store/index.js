import { createStore } from 'vuex'
import mutations from './mutations.js'
import actions from './actions.js'
import getters from './getters.js'

const state={
    user:{
      isLogin:false
    },
    count:0
}
export default createStore({
  state,
  mutations,
  actions,
  getters
})

