<template>

  <div id="table">
    <div class="title">
      当前歌单 :
      <span>{{ currentData.title }}</span>
    </div>
    <h4>
      <p>序号</p>
      <p>操作</p>
      <p>歌曲</p>
      <p>歌手</p>
      <p>专辑</p>
      <p>热度</p>
    </h4>
    <ul>
      <!-- {{currentData}} -->
      <li v-for="(item, index) in currentData.musiclist" :key="item.id"
        @click="sendMusicId(item.id, item.mvpayinfo.vid, item.name, item.artist)">
        <p title="">{{ index + 1 }}</p>
        <p>操作</p>
        <p class="mv">
          <span v-html="item.name" :title="item.name"></span>
          <span class="iconfont icon-wmv" v-if="item.mvpayinfo.vid != 0" title="播放MV"
            @click="sendMvId($event, item.id)"></span>
        </p>
        <p v-html="item.artist" :title="item.artist"></p>
        <p v-html="item.ALBUM" :title="item.ALBUM"></p>
        <p>{{ item.score100 }}</p>
      </li>
    </ul>
  </div>
</template>

<script >
// import { ref } from "vue";
export default {
  props: ["currentData"],
  setup(props, context) {
    //总长度
    // console.log(props);
    // console.log(context);

    function sendMusicId(musicId, mvId, song, name) {
      // console.log(musicId,mvId);
      // 发射事件到父组件
      let playMv = false
      context.emit('sendMusicId', musicId, mvId, playMv)
      // console.log(document.title);
      document.title = '正在播放 ' + song + ' - ' + name
    }
    // 发送MVid
    function sendMvId(e, mvId) {
      // 阻止冒泡事件
      e.stopPropagation();
      // console.log('table');
      // 发射事件到父组件
      let playMv = true
      context.emit('sendMusicId', false, mvId, playMv)
    }
    // 暴露给模板
    return {
      sendMusicId,
      sendMvId,
    };
  },
};
</script>

<style lang="scss" scoped>
// 转动的边框线(两条)

#table {
  padding: 20px 0;
  width: 100%;
  height: 100%;
  overflow-y: scroll;

  &::-webkit-scrollbar {
    width: 0;
  }

  .title {
    height: 20px;
    line-height: 20px;
    text-align: left;
    padding-left: 20px;

    span {
      color: red;
    }
  }

  h4,
  ul>li {
    padding: 5px 20px;
    width: 100%;
    display: flex;

    p {
      flex: 1;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
      text-align: left;
      border: 1px solid;
    }

    p:nth-child(2),
    p:nth-child(4),
    p:nth-child(5) {
      flex: 2;
    }

    p:nth-child(3) {
      flex: 3;
    }
  }

  ul {
    margin-top: 1%;

    // background-color: yellow;
    li {
      cursor: pointer;

      &:hover {
        background-color: rgba(255, 255, 255, 0.729);

      }

      &:hover p {
        color: #000;

        span:nth-child(2) {
          color: orange;
        }
      }

      p {
        padding: 0 5px;
        color: aqua;
        // border: 1px solid;
        border: none;

        &.mv {
          width: 100%;
          display: flex;

          span {
            flex: 3;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;

            &:nth-child(2) {
              flex: 1;
              color: rgb(140, 42, 165);

              &:hover {
                color: rgb(255, 80, 89);

              }
            }
          }
        }
      }
    }
  }
}
</style>
