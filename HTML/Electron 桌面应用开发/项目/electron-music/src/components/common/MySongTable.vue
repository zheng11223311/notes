<template>
    <div id="my-mv-table">
        <div class="mv-box">
            <div class="mv-content" v-for="item in dataList.value.abslist" :key="item.MP3RID">
                <div class="img">
                    <img :src="item.pic || 'https://tse1-mm.cn.bing.net/th/id/OIP-C.WvhXlHH4SK25FKGEDkafAgHaEo?pid=ImgDet&rs=1'"
                        alt="">
                </div>
                <div class="mask">
                    <div>
                        <span class="iconfont icon-24gl-playCircle" title="查看歌单"
                            @click="goSongList(item.playlistid)"></span>
                    </div>
                    <p v-html="item.name" :title="item.name"></p>
                    <p>{{ item.songnum }} 首歌曲</p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

import { ref, getCurrentInstance, reactive, watch, defineEmits, defineProps } from "vue";
import { useRoute, useRouter } from "vue-router";

export default {
    props: ['dataList'],
    setup(props, context) {
        // console.log(props.dataList);

         // 初始化路由
        const router = useRouter()
        const route = useRoute()


        // 进入歌单  根据歌单ID 请求歌单
        function goSongList(playlistid) {
            // 跳转值歌单列表
            // console.log(route.query.keyValue);
            // 带上route.query.keyValue 防止返回时其他路由没有这个值
            router.push({path:'/songlist',query:{playlistid,keyValue:route.query.keyValue}})
        }


        return {
            goSongList,
        }
    },
}
</script>
<style lang="scss" scoped>
#my-mv-table {
    width: 100%;
    height: 100%;
    padding: 10px;

    .mv-box {
        width: 100%;
        height: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        overflow: scroll;

        &::-webkit-scrollbar {
            width: 0;
        }

        .mv-content {
            width: 200px;
            height: 160px;
            background-color: aqua;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.5s;
            margin-left: 10px;
            margin-top: 20px;
            overflow: hidden;

            &:hover {
                transform: translate(10px) translateY(-10px);
                box-shadow: 10px 10px 6px rgb(134, 132, 132);
            }

            &:hover .mask {
                transform: translateY(-100%);
            }

            .img {
                // width: 100%;
                height: 100%;

                img {
                    width: 100%;
                    height: 100%;
                }
            }

            .mask {
                transition: all 0.6s;
                width: 100%;
                height: 100%;
                background-color: rgba(104, 103, 103, 0.442);
                padding-top: 10%;

                div {
                    height: 50%;
                    line-height: 500%;

                    span {
                        font-size: 30px;
                        color: #fff;

                        &:hover {
                            color: red;
                        }
                    }
                }

                p {
                    text-align: center;
                    color: aqua;
                    font-size: 14px;
                    height: 20%;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    white-space: nowrap;

                    &:nth-child(3) {
                        color: rgb(248, 101, 38);
                        height: 40%;
                    }
                }
            }
        }
    }
}
</style>
