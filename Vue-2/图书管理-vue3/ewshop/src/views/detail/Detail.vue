<template>
  <div class="">
     <nav-bar>
      <template v-slot:left></template>
      <template v-slot:default>
        商品详情{{id}}
      </template>
      <template v-slot:right></template>
    </nav-bar>
    <van-image
    style="margin-top:45px"
      width="100%"
      height="10rem"
      fit="contain"
      :lazy-load="true"
      :src="detail.cover_url"
    />

    <van-card
    style="text-align:left"
      :num="detail.stock"
      :price="detail.price+'.00'"
      :desc="detail.description"
      :title="detail.title"
    >
      <template #tags>
        <van-tag plain type="danger">{{detail.is_recommend==1?'推荐':'新书'}}</van-tag>
        <van-tag plain type="danger">{{detail.is_on==1?'上架中':'缺货中'}}</van-tag>
      </template>
      <template #footer>
        <van-button @click="handleAddCart" type="warning">加入购物车</van-button>
        <van-button @click="goToCart" type="danger">立即购买</van-button>
      </template>
    </van-card>

    <van-tabs :active="active">
      <van-tab title="概述">
        <div class="content" v-html="detail.details"></div>
      </van-tab>
      <van-tab title="评论">
        <div class="" v-for="item in detail.comments" :key='item'>
          <!-- {{item}} -->
        </div>
      </van-tab>
      <van-tab title="相关图书">
        <goods-list :goods="like_goods"></goods-list>
      </van-tab>
    </van-tabs>
  </div>
</template>

<script>
import NavBar from 'components/common/navbar/NavBar'
import GoodsList from 'components/content/goods/GoodsList'

import { getDetail } from "network/detail.js";
import { addCart } from "network/cart.js";

import {useRoute,useRouter} from 'vue-router'
import {ref,onMounted, reactive,toRefs} from 'vue'
import { Toast } from "vant";
import { useStore } from "vuex";
export default {
  name: 'Detail',
  components:{
    NavBar,
    GoodsList,
  },
   setup(props) {
     const active=ref(1)
         //接收router 传递过来的参数
        const route=useRoute()
        const router=useRouter()
        const store=useStore()
        let id=ref(0);  
        let book=reactive({
          detail:{},
          like_goods:[],
        })

      onMounted(()=>{
        Toast.loading({message:'加载中...',duration:10000,forbidClick:true})
        id.value=route.query.id  
        // 动态路由
        // id.value=route.params.id  
        getDetail(id.value).then(res=>{
           Toast.clear()
          console.log(res);
          book.detail=res.goods
          book.like_goods=res.like_goods
        }).catch(err=>{
          console.log(err);
        })
        



      })

      //添加购物车
      const handleAddCart=()=>{
        addCart({goods_id:book.detail.id,num:1}).then(res=>{
          if(res.status=='204'||res.status=='201'){
            Toast.success('添加成功')
            //分发事件,调用actions updateCart =>调用状态管理 addCart=>改变值
            //设置数量
            store.dispatch('updateCart')
          }

        })
      }
      // 立即购买
      const goToCart=()=>{
        addCart({goods_id:book.detail.id,num:1}).then(res=>{
          if(res.status=='204'||res.status=='201'){
            Toast.success('添加成功')
            //分发事件,调用actions updateCart =>调用状态管理 addCart=>改变值
            //设置数量
            store.dispatch('updateCart')
            Toast.success('下单成功,跳转至购物车')
            router.push({path:'/shopcart'})
          }

        })
         

      }

    return{
        id,
        // 当从组合式函数返回响应式对象时， 
        //toRefs 非常有用，
        //这样消费组件就可以在不丢失响应性的情况下对返回的对象
        //进行分解/扩散：
        //. toRefs 只会为源对象中包含的 property 生成 ref。.
        // 如果要为特定的 property 创建 ref，则应当使用 toRef.
        ...toRefs(book),
        active,
        handleAddCart,
        goToCart
    }

  }


}
</script>
<style lang="scss" scoped>
.content{
  padding: 10px;
  img{
    max-width: 100%;
    height: auto;
  }
}
</style>
