<template>
    <div id="MP4">111
        <div class="mask">
            <div class="operation-mask">
                <div class="operation">
                    <button @click="back()"> 返回 </button>
                </div>
            </div>
        </div>
        <video controls
            :src="mvURL || 'https://mvdown.kuwo.cn/930c50adf26fa4aa845c756c7fe3c54a/6270cf50/resource/m3/40/80/2578302778.mp4'"></video>
    </div>
</template>

<script>
import { ref, getCurrentInstance, reactive, watch, defineEmits, defineProps } from "vue";

export default {
    props: ['mvid'],
    setup(props, context) {
        // mv url
        let mvURL=ref('')

        console.log(props.mvid);
        // 向父组件发送返回事件
        function back() {
            context.emit('back')
        }

        const {
            proxy: {
                $http: { searchMP4 },
            },
        } = getCurrentInstance();

        // 请求mp4
        function requestMp4() {
            searchMP4(props.mvid).then(res => {
                // console.log(res.data);
                let mp4Url = eval(
                    (/sources\:(.*?)\}\]/g.exec(res.data)[1] + "}]").replaceAll(
                        "\\u002F",
                        "/"
                    )
                );
                // console.log(mp4Url[0].src);
                mvURL.value=mp4Url[0].src
            })
        }
        requestMp4()


        return {
            back,
            mvURL,
        }
    },
}
</script>

<style lang="scss" scoped>
#MP4 {
    position: relative;
    width: 100%;
    height: 100%;
    background-color: #000;

    .mask {
        // display: none;
        position: absolute;
        top: 0;
        width: 100%;
        // height: 100%;
        z-index: 1;

        //   background-color: aqua;
        .operation-mask {
            width: 100%;
            height: 60px;
            // background-color: #fff;

            &:hover .operation {
                transform: translate(0%);
            }

            .operation {
                transition: all 0.5s;
                transform: translate(-100%);
                width: 100%;
                height: 60px;
                // background-color: bisque;
            }
        }
    }

    video {
        width: 100%;
        cursor: pointer;
    }
}
</style>