<template>
  <div class="tab-control">
     <div v-for="(item,index) in titles" 
     :key='index'
      class="tab-control-item"
      @click="itemClick(index)"
      :class="{active:index==currentIndex}"
      >
         <span>{{item}}</span>
     </div>
  </div>
</template>

<script>
import {ref} from 'vue'
export default {
  name: 'TabControl',
  props:{
      titles:{
          type:Array,
          default(){
              return []
          }
      }
  },
  components:{
  },
//   props属性 context 对象{}上下文 解构
   setup(props,{emit}) {
     let  currentIndex=ref(0)

    const itemClick=(index)=>{
        currentIndex.value=index
        // 调用父组件事件,传递值index 过去
        emit('tabClick',index)
    }
    return{
        currentIndex,
        itemClick
    }

  }


}
</script>

<style lang="scss" scoped>
.tab-control{
    display: flex;
    width: 100%;
    height: 40px;
    line-height: 40px;
    text-align: center;
    font-size: 14px;
    background-color: #fff;
    position: sticky;
    top: 44px;
    z-index: 10;
    .tab-control-item{
        flex: 1;
        span{
            padding: 6px;
        }
    }
    .active{
        color:var(--color-tint);
        span{
            border-bottom: 3px solid var(--color-tint);
        }
    }
}
</style>
