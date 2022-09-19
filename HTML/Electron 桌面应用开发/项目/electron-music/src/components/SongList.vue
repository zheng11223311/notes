<template>
    <div id="song-list">
        <my-song-list-table @sendMusicId="sendMusicId" :currentData="searchSongListList.value"></my-song-list-table>
    </div>
</template>

<script>

import { ref, getCurrentInstance, reactive, watch, defineEmits, defineProps } from "vue";
import { useRoute, useRouter } from "vue-router";


import MySongListTable from './common/MySongListTable.vue';

export default {
    components: { MySongListTable },
    setup(props, context) {
        // 歌单 数据列表
        let searchSongListList = reactive({
            value: {}
        })

        // 从全局变量中获取axios
        const { proxy: { $http: { searchSongList } } } = getCurrentInstance()
        // 初始化路由
        const router = useRouter()
        const route = useRoute()


        // 请求歌单对应的列表
        function requestSongList() {
            // console.log(route.query.playlistid);
            searchSongList(route.query.playlistid, 0).then(res => {
                // 返回一个js 数据
                let js = eval(res.data);
                //    console.log(res.data);
                function jsonError(e) {
                    console.log(e);
                }
                let a = {};
                // 最终结果
                function playGeDanMusic(data1) {
                    //   console.log(data1);
                    searchSongListList.value = data1;
                    // console.log(data1);
                }

            })
        }
        requestSongList()
        // 传递请求歌曲到父组件
        function sendMusicId(musicId, mvId, playMv) {
            // console.log(musicId,mvId);
            // 发射事件到父组件
            context.emit('sendMusicId', musicId, mvId, playMv)
        }

        return {
            searchSongListList,
            sendMusicId
        }
    },
}
</script>

<style lang="scss" scoped>
#song-list{
    width: 100%;
    height: 100%;
    
}
</style>
