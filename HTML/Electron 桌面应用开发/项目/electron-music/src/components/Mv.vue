<template>
    <div id="mv">
        <my-mv-table :dataList="searchMvList" @playMv="playMv"></my-mv-table>
    </div>
</template>

<script>

import { ref, getCurrentInstance, reactive, watch, defineEmits, defineProps } from "vue";
import { useRoute, useRouter } from "vue-router";

import MyMvTable from './common/MyMvTable.vue';



export default {
    components: { MyMvTable },
    setup(props,context) {
        // mv 数据列表
        let searchMvList = reactive({
            value: {}
        })


        // 从全局变量中获取axios
        const { proxy: { $http: { searchMv } } } = getCurrentInstance()
        // 初始化路由
        const router = useRouter()
        const route = useRoute()




        //请求mv 数据
        function requestMv() {
            // console.log(route.query.keyValue);
            searchMv(route.query.keyValue).then(res => {
                // console.log(JSON.parse(res.data.replace(/'/g, '"')));
                searchMvList.value = JSON.parse(res.data.replace(/'/g, '"'));
            })
        }
        requestMv()
        //播放Mv ,传递到父组件
        function playMv(musicId){
            context.emit('playMv',musicId)
        }

        return {
            searchMvList,
            playMv
        }
    },
}
</script>
<style lang="scss" scoped>
#mv{
    width: 100%;
    height: 100%;
}
</style>
