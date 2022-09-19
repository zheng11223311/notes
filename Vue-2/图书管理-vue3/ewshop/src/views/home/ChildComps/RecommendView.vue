<template>
  <div class="recommend">
    <div class="recommend-item" v-for="item in recommends.slice(0,4)" :key="item.id">
        <!-- prevent 阻止默认事件 -->
        <a href="" @click.prevent='goD(item.id)'>    
            <img  v-lazy="item.cover_url" alt="" srcset="">
            <div>{{item.title}}</div>
        </a>
    </div>
   
  </div>
</template>

<script>
// useRouter 路由器传递路径 useRoute 路由接收参数
import {useRouter} from 'vue-router'
export default {
  name: 'RecommendView',
  props:{
      //接收传过来的属性
      recommends:{
          type:Array,
          default(){
              return []
          }
      }
  },
  components:{
  },
  setup(props) {
      const router=useRouter()

    const goD=(id)=>{
        router.push({path:'/detail',query:{id}})
    }
    return{
        goD
    }

  }



}
</script>
<style lang="scss" scoped>
.recommend{
    display: flex;
    width: 100%;
    text-align: center;
    padding: 15px 0 30px;
    border-bottom: 8px solid #eee;
    font-size: 12px;
    .recommend-item{
        flex: 1;
        img{
            width: 70px;
            height: 70px;
            margin-bottom: 10px;
        }
    }

}
</style>
