<template>
    <div>
         <nav-bar>
        <template v-slot:left></template>
        <template v-slot:default>
          用户登入
        </template>
        <template v-slot:right></template>
        </nav-bar>
        <div class="" style="margin-top:45px">
            <div class="" style="text-align:center;">
                    <van-image
                        width="10rem"
                        height="10rem"
                        fit="contain"
                        src="https://www.lmonkey.com/_nuxt/img/logo.ca1ae0c.png"
                        />

            </div>
        </div>
        <van-form @submit="onSubmit">
            <van-cell-group inset>
                <van-field
                    v-model="email"
                    name="邮箱"
                    label="邮箱"
                    placeholder="邮箱"
                    :rules="[{ required: true, message: '请填写邮箱' }]"
                />
                <van-field
                    v-model="password"
                    type="password"
                    name="密码"
                    label="密码"
                    placeholder="密码"
                    :rules="[{ required: true, message: '请填写密码' }]"
                />
            </van-cell-group>
            <div style="margin: 16px;">
                <div class="link-login"
                @click="$router.push({path:'/register'})"
                >
                    没有账号?立即注册
                </div>
                <van-button round block type="primary" native-type="submit">
                登入
            </van-button>
        </div>
    </van-form>
    </div>
</template>
<script>
import NavBar from 'components/common/navbar/NavBar'
import { Toast } from 'vant';

import {ref,reactive, toRefs} from 'vue'
import { useRouter } from "vue-router";
import { useStore } from "vuex";

import { login } from "network/user";

export default {
    name:'Login',
    components:{
        NavBar,
    },
    setup(props) {
        const router=useRouter()
        const store=useStore()
        const userinfo=reactive({
            email:'',
            password:'',
        })


        const onSubmit=()=>{
                login(userinfo).then(res=>{
                    console.log(res);
                    //将token 保存在本地Window.LocalStorage
                    // setItem(key,value)  getItem(key)
                    window.localStorage.setItem('token',res.access_token)
                    // 方法2:在vuex 保存islogin
                        store.commit('setIsLogin','ture')



                    Toast.success('登入成功')
                    userinfo.email=''
                    userinfo.password=''
                    setTimeout(() => {
                        router.go(-1);
                    }, 500);
                   
                }).catch(err=>{
                    console.log(err);
                })
           
        }

        return {
            ...toRefs(userinfo),
            onSubmit,
        }
    }

}
</script>
<style lang="scss" scoped>
.link-login{
    font-size: 14px;
    margin-bottom: 20px;
    color: #42b983;
    display: block;
    text-align: left;
}
</style>