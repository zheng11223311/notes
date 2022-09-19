<template>
  <div class="">
     <nav-bar>
      <template v-slot:left></template>
      <template v-slot:default>
        个人中心
      </template>
      <template v-slot:right></template>
    </nav-bar>
    <div class="top" style="margin-top:45px">
      <div class="top-header">
        <div>
          <img src="~assets/images/lmonkey.png" alt="">
        </div>
        <div>
          <p>昵称：{{user.name}}</p>
          <p>登入名：{{user.email}}</p>
          <p>个性签名：成就自己的只需一套精品</p>
        </div>
      </div>
      <div class="bot" @click="mycollect"><span>我的收藏</span><van-icon class="ico" name="arrow" /></div>
      <div class="bot" @click="myorder"><span>我的订单</span><van-icon class="ico" name="arrow" /></div>
      <div class="bot" @click="myuser"><span>账号管理</span><van-icon class="ico" name="arrow" /></div>
      <div class="bot" @click="myadderss"><span>地址管理</span><van-icon class="ico" name="arrow" /></div>
      <div class="bot" @click="myabout"><span>关于我们</span><van-icon class="ico" name="arrow" /></div>
      <van-button class="logout" @click="tologout" round block color="#44ba80">退出登入</van-button>
    </div>
  </div>
</template>

<script>
import NavBar from 'components/common/navbar/NavBar'
import { Toast } from 'vant';
import { useRouter } from "vue-router";
import { useStore } from "vuex";

import { logout,getUser } from "network/user";
import { onMounted,toRefs,reactive } from 'vue';
export default {
  name: 'Profile',
  components:{
    NavBar
  },
  setup(props) {
    const router=useRouter()
    const store=useStore()

    const state=reactive({
      user:{}
    })

    onMounted(()=>{
      getUser().then(res=>{
        console.log(res);
        state.user=res 
      })
    })

    const tologout=()=>{
      logout().then(res=>{
        console.log(res);
        if(res.status=='204'){
          Toast.success('退出成功')
          //清除token   window.localStorage
          window.localStorage.setItem('token','')
          store.commit('setIsLogin','false')

          setTimeout(() => {
            router.push({path:'/login'})
          }, 500);
        }
      })
    }
    const myorder=()=>{
      router.push({path:'/order'})
    }
    const mycollect=()=>{
       router.push({path:'/mycollect'})
    }
    const myuser=()=>{
       router.push({path:'/myuser'})
    }
    const myadderss=()=>{
       router.push({path:'/myaddress'})
    }
    const myabout=()=>{
       router.push({path:'/myabout'})
    }


    
    
    return{
      tologout,
      myorder,
      mycollect,
      myuser,
      myadderss,
      myabout,
      ...toRefs(state)
    }
  }


}
</script>
<style lang="scss" scoped>
.top{
  margin-bottom: 50px;
  .top-header{
    display: flex;
    padding: 10px;
    width: 90%;
    max-height: 100px;
    margin: 60px auto 20px;
    background-color: #44ba80;
    border-radius: 10px;
    div:nth-child(1){
      flex: 1;
    }
    div:nth-child(2){
      padding: 10px;
      text-align: left;
      font-size: 14px;
      flex: 3;
    }
  }
  .bot{
    width: 100%;
    height: 40px;
    line-height: 40px;
    margin-bottom: 10px;
    padding-left: 10px;
    // background-color: rgb(117, 117, 173);
    text-align: left;
    .ico{
      float: right;
      right: 30px;
      top: 20px;
    }
  }
  .logout{
    margin-top: 20px;
  }
}
</style>
