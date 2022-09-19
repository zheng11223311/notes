<!-- src\layout \AppLayout.vue -->
<template>
    <AppHeader></AppHeader>
<AppSidebar></AppSidebar>
<!-- 子路由出口 -->
<!-- <router-view/> -->
</template>
<script lang="ts">
import AppSidebar from './AppSidebar.vue'
import AppHeader from './AppHeader.vue'
import { defineComponent } from 'vue'

export default defineComponent({
  components: {
    AppSidebar, AppHeader
  }
})
alert('更多接口地址,请查看控制台')
console.log('%c接口文档:https://www.showdoc.com.cn/1729681206137961/9169791316728311', 'color:red')
</script>
