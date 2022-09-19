<template>
    <div>
         <nav-bar>
        <template v-slot:left></template>
        <template v-slot:default>
          新用户注册
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
                    v-model="name"
                    name="用户名"
                    label="用户名"
                    placeholder="用户名"
                    :rules="[{ required: true, message: '请填写用户名' }]"
                />
                <van-field
                    v-model="password"
                    type="password"
                    name="密码"
                    label="密码"
                    placeholder="密码"
                    :rules="[{ required: true, message: '请填写密码' }]"
                />
                <van-field
                    v-model="password_confirmation"
                    type="password"
                    name="确认密码"
                    label="确认密码"
                    placeholder="确认密码"
                    :rules="[{ required: true, message: '请填写确认密码' }]"
                />
                <van-field
                    v-model="email"
                    type="email"
                    name="电子邮箱"
                    label="电子邮箱"
                    placeholder="电子邮箱"
                    :rules="[{ required: true, message: '请填写电子邮箱' }]"
                />
            </van-cell-group>
            <div style="margin: 16px;">
                <div class="link-login"
                @click="$router.push({path:'/login'})"
                >
                    已有账号,立即登入
                </div>
                <van-button round block type="primary" native-type="submit">
                注册
            </van-button>
        </div>
    </van-form>
    </div>
</template>
<script>
import NavBar from 'components/common/navbar/NavBar'
import { Notify } from 'vant';

import {ref,reactive, toRefs} from 'vue'
import { useRouter } from "vue-router";

import { register } from "network/user";

export default {
    name:'Register',
    components:{
        NavBar,
    },
    setup(props) {
        const router=useRouter()
        const userinfo=reactive({
            name:'',
            password:'',
            password_confirmation:'',
            email:''

        })


        const onSubmit=()=>{
            //先验证
            if(userinfo.password!=userinfo.password_confirmation){
                Notify('两次密码不一致!')
            }else{
                 //提交给服务器
                //  console.log(userinfo);
                register(userinfo).then(res=>{
                    // console.log(res);
    
                    if(res.status=='201'){
                        Notify({ type: 'warning', message: '注册成功!' });
                        setTimeout(() => {
                            router.push({path:'/login'})
                        }, 1000);
                    }
                })
            }
           
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