import { User } from '@/api/user'
import { createStore, Store, useStore as baseUseStore } from 'vuex'
// 使vuex 支持ts 的类型推断
import { InjectionKey } from 'vue'

// 定义Store 的类型
export interface State{
  count:number,
  user:User | null
}

export const key:InjectionKey<Store<State>> = Symbol('sdsasdsa') // 唯一标识 sdsasdsa

export const store = createStore<State>({
  state: {
    count: 0,
    user: JSON.parse(window.localStorage.getItem('user') || 'null')
  },
  mutations: {
    setUser (state, user:User) {
      state.user = user
      window.localStorage.setItem('user', JSON.stringify(state.user))
    }
  }
})

// 重写useStore ,这样在其他地方引入就可以不用在导入key 配置了
export function useStore () {
  return baseUseStore(key) // 需要传入key 才会有类型推断,代码才会有提示
}

// 还要修改main.ts 配置

// 原生
// export default createStore({
//   state: {
//     user:null
//   },
//   mutations: {
//   },
//   actions: {
//   },
//   modules: {
//   }
// })
