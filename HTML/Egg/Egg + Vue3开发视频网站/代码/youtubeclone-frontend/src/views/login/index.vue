<template>
<div class='gspRov' >
    <h2>Login to your account</h2>
    <form @submit.prevent='handleSubmit'>
    <ul v-if="errors" class="errors">
        <li>{{errors}}</li>
    </ul>
        <input type='email' v-model='user.email' placeholder= 'email'/><br/>
        <input type='password' v-model='user.password' placeholder='password'/>
        <div class='action input-group' >
            <span class='pointer'>signup instead</span>
            <button :class="{'disabled': isLoading}" :disabled="isLoading">LOGIN</button>
        </div>
    </form>
</div>
</template>

<script lang='ts'>
import { defineComponent, reactive, ref } from '@vue/runtime-core'
// import {key} from '@/store'
// import { useStore } from 'vuex'
import { useStore } from '@/store'
import { useRoute, useRouter } from 'vue-router'
import { login } from '../../api/user'

export default defineComponent({
  name: 'LoginIndex',
  setup () {
    const router = useRouter()
    const route = useRoute()
    const user = reactive({
      email: '1@qq.com',
      password: '1'
    })
    const store = useStore()
    console.log(store.state.count)
    const errors = ref('')
    const isLoading = ref(false)
    const handleSubmit = async () => {
      errors.value = ''
      isLoading.value = true
      try {
        const { data } = await login(user)
        store.commit('setUser', data.user)
        // console.log(data)
        // 记录访问没有登入时访问的页面,登入后跳转回去
        const redirect = (route.query.redirect || '/') as string
        router.push(redirect)
      } catch (error) {
        // console.log(error.response.status === '422')
        // console.log(error.response.status === 422)
        if (error.response.status === 422) {
          console.log(error.response)
          errors.value = error.response.data.err
        }
        // console.log(errors.value)
      }
      isLoading.value = false
    }
    return {
      user,
      handleSubmit,
      errors,
      isLoading
    }
  }
})
</script>

<style scoped>

.gspRov{
    margin: 150px auto;
    width: 480px;
    height: 430px;
    background-color: rgb(33, 33, 33);
    padding-left: 40px;
}
h2{
    padding-top: 80px;
    color: #fff;
    font-size: 30px;
    margin-bottom: 30px;
}
input{
    width: 90%;
    height: 50px;
    background-color: black;
    border: none;
    font-size: 20px;
    padding-left: 10px;
    color: #fff;
    margin-top: 20px;
}
.action{
    padding-top: 40px;
    width: 100%;
    color: #fff;
    font-size: 20px;
    cursor: pointer;
}
button{
    width: 100px;
    height: 50px;
    margin-left: 150px;
    font-size: 25px;
    color: #fff;
    background-color: red;
    border-radius: 5px;
    cursor: pointer;
}
.disabled{
    background-color: gray;
}
.errors{
    width: 100%;
    color: red;
    display: flex;
}
</style>
