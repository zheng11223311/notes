<template>
    <div id="song">
        <my-song-table  @sendMusicId="sendMusicId" :dataList="searchSongList"></my-song-table>
    </div>
</template>

<script>

import { ref, getCurrentInstance, reactive, watch, defineEmits, defineProps } from "vue";
import { useRoute, useRouter } from "vue-router";

import MySongTable from './common/MySongTable.vue';

export default {
    components: { MySongTable },
    setup(props,context) {
        // 歌单 数据列表
        let searchSongList = reactive({
            value: {}
        })

        // 从全局变量中获取axios
        const { proxy: { $http: { searchSong } } } = getCurrentInstance()
        // 初始化路由
        const router = useRouter()
        const route = useRoute()

        //请求歌单 数据
        function requestSong() {
            // console.log(route.query.keyValue);
            searchSong(route.query.keyValue,0).then(res => {
                console.log(JSON.parse(res.data.replace(/'/g, '"')));
                searchSongList.value = JSON.parse(res.data.replace(/'/g, '"'));
            })
        }
        requestSong()
        // 传递请求歌曲到父组件
        function sendMusicId(musicId, mvId, playMv) {
            console.log(1);
            // console.log(musicId,mvId);
            // 发射事件到父组件
            context.emit('sendMusicId', musicId, mvId, playMv)
        }
       
        return {
            searchSongList,
            sendMusicId
        }
    },
}
</script>

<style lang="scss" scoped>
</style>