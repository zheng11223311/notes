<template>
<div id="app">
  <!-- <router-view/> -->
  <!-- 切换路由时保持当前页面的活性 -->
  <router-view v-slot="{Component}">
    <transition>
      <keep-alive :exclude="['Order','CreateOrder','Address','Detail','ShopCart','AddressEdit']">  
      <component :is="Component"></component>
      </keep-alive>
    </transition>
  </router-view>
  <div id="nav">
      <router-link class="tab-bar-item" to="/">
        <div class="icon"><i class="iconfont icon-shouye"></i></div>
        <div>首页</div>
      </router-link> 
      <router-link class="tab-bar-item" to="/categroy">
        <div class="icon"><i class="iconfont icon-fenlei"></i></div>
        <div>分类</div>
      </router-link> 
      <router-link class="tab-bar-item" to="/shopcart">
        <div class="icon">
          <van-badge :content="$store.state.cartCount" max="9">
            <i class="iconfont icon-gouwuche"></i>
          </van-badge>
          </div>
        <div>购物车</div>
      </router-link> 
      <router-link class="tab-bar-item" to="/profile">
        <div class="icon"><i class="iconfont icon-yonghu"></i></div>
        <div>我的</div>
      </router-link> 
    </div>
</div>

 
  
</template>

<script>
import { onMounted } from "vue";
export default {
  setup() {
    onMounted(()=>{
      
    })

    return{

    }
  },
}
</script>

<style lang="scss">
// 全局样式
@import "assets/css/base.css";
@import "assets/css/iconfont.css";
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50; 
}

#nav {
  background: #f6f6ff;
  display: flex;
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  box-shadow: 0 -3px 1px rgba(100,100,100,0.1);
  a {
    color: var(--color-text);

    &.router-link-exact-active {
      color: var(--color-heigh-text);
      // color: #42b983;
    }
  }

  .tab-bar-item{
    flex: 1;
    text-align: center;
    height: 50px;
    font-size: var(--font-size);
  }
.tab-bar-item .icon{
  width: 24px;
  height: 24px;
  margin-top: 5px;
  vertical-align: middle;
  display: inline-block;
}


}
</style>
