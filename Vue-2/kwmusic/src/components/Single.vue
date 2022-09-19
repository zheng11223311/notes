<template  ref="child">
  <div class="opertion">
    <div class="allplay">▶ 播放全部</div>
    <div class="add"><span class="iconfont icon-tianjia"></span> 添加</div>
    <div class="download"><span class="iconfont icon-xiazai2"></span> 下载</div>
  </div>
  <div class="detail">
    <div class="detailoperation">
      <span
        ><input
          v-cloak
          type="checkbox"
          @change="check($event)"
          :checked="isallsubchecked == searchResult.abslist.length"
        />
        {{ searchResult.HIT }}</span
      >
      <span>操作 </span>
      <span>歌名</span>
      <span>歌手</span>
      <span>专辑</span>
      <span>热度/100</span>
    </div>
    <div
      class="detailmsg"
      v-for="(item, index) in searchResult.abslist.slice(0, 100)"
      :key="item"
    >
      <span
        ><input
          type="checkbox"
          :checked="isallchecked"
          @change="subcheck($event)"
          ref="checkbox"
        />
        {{ index + 1 }}</span
      >
      <span>
        <span
          class="detailmsgadd iconfont icon-tianjia"
          title="添加歌曲"
        ></span>
        <span
          class="detailmsgadd iconfont icon-xiazai2"
          title="下载歌曲"
        ></span>
        <span
          class="detailmsgadd iconfont icon-gengduo1"
          title="更多操作"
        ></span>
      </span>
      <span>
        <span
          v-html="item.SONGNAME"
          @click="sendmusic(item.MP3RID.slice(4), item.MKVRID.slice(3))"
          :title="item.SONGNAME"
        ></span>
        <span
          v-if="item.MKVRID.slice(3) != 0"
          class="playmv iconfont icon-mv2"
          title="播放MV"
          @click="requestMp4(item.MP3RID.slice(4))"
        ></span
      ></span>
      <span v-html="item.ARTIST" :title="item.ARTIST"></span>
      <span v-html="item.ALBUM" :title="item.ALBUM"></span>
      <span>{{ item.SCORE100 }}</span>
    </div>
    <div class="pagechange" v-if="searchResult.abslist.length > 99">
      <span class="prepage" @click="prenum()">上一页</span>
      <span
        @click="clickcurrentpage(1)"
        :class="currentIndex + 1 == 1 ? 'currentpage' : ''"
        v-if="currentIndex + 1 != 1"
        >1</span
      >
      <span v-if="currentIndex + 1 > 4">...</span>
      <span
        v-if="currentIndex + 1 > 3"
        @click="clickcurrentpage(currentIndex - 1)"
        :class="currentpage == currentIndex ? 'currentpage' : ''"
        >{{ currentIndex - 1 }}</span
      >
      <span
        v-if="currentIndex + 1 > 2"
        @click="clickcurrentpage(currentIndex)"
        :class="currentpage == currentIndex ? 'currentpage' : ''"
        >{{ currentIndex }}</span
      >
      <span
        @click="clickcurrentpage(currentIndex + 1)"
        :class="currentpage == currentIndex + 1 ? 'currentpage' : ''"
        >{{ currentIndex + 1 }}</span
      >
      <span
        @click="clickcurrentpage(currentIndex + 2)"
        :class="currentpage == currentIndex + 2 ? 'currentpage' : ''"
        >{{ currentIndex + 2 }}</span
      >
      <span
        @click="clickcurrentpage(currentIndex + 3)"
        :class="currentpage == currentIndex + 3 ? 'currentpage' : ''"
        >{{ currentIndex + 3 }}</span
      >
      <span v-if="parseInt(searchResult.HIT / 100) + 1 - (currentIndex + 1) > 3"
        >...</span
      >
      <span
        @click="clickcurrentpage(parseInt(searchResult.HIT / 100) + 1)"
        v-if="parseInt(searchResult.HIT / 100) + 1 > 4"
        :class="currentpage == currentIndex + 4 ? 'currentpage' : ''"
        >{{ parseInt(searchResult.HIT / 100) + 1 }}</span
      >
      <span class="nextpage" @click="nextnum()">下一页</span>
    </div>
  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "Single",
  data: function () {
    return {
      searchResult: {
        abslist: [],
      },
      currentIndex: 0, //当前请求的页数
      currentpage: 1, //当前页数,高亮显示
      isallchecked: 0, //是否父复选框全选
      isallsubchecked: 0, //是否所有子复选框都全选
      musicurl: [],
    };
  },
  methods: {
    requestsong(page = 0) {
      // console.log(this.$route.path);
      if(this.$route.path!='/seachmoreresult/single') return
      // console.log(this.$route.query.key);
      // console.log(this.$store.state.isdestroy);
      axios({
        //   "http://120.24.51.158/cv/php/music/search_music.php?song=" +
        //   "http://search.kuwo.cn/r.s?all="+this.$route.query.key+"&ft=music&newsearch=1&alflac=1&itemset=web_2013&client=kt&cluster=0&pn=0&rn=100&vermerge=1&rformat=json&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0"
        url:
          "http://120.24.51.158/kwmusic/backend/detailmusic.php?song=" +
          this.$route.query.key.split("#")[0] +
          "&page=" +
          page,
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then((data) => {
          // console.log(data.data);
          this.searchResult = JSON.parse(data.data.replace(/'/g, '"'));
          console.log(JSON.parse(data.data.replace(/'/g, '"')));
        })
        .catch((e) => {
          console.log(e);
        });
    },
    sendmusic(id, mvid) {
      // this.$store.state.bottombar.musicId =id
      this.$store.state.bottombar.requestmusic(id, mvid);
    },
    requestMp4(id) {
      axios({
        // url: "http://www.kuwo.cn/mvplay/" + id,
        url: "http://120.24.51.158/kwmusic/backend/getvideo.php?id=" + id,
        headers: {},
      }).then((data) => {
        // console.log(/sources\:(.*?)\}\]/g.exec(data.data)[1]+'}]');
        // console.log(JSON.stringify((/sources\:(.*?)\}\]/g.exec(data.data)[1]+'}]').replaceAll('\\u002F','/')));
        // 匹配出当前歌曲mp4 的url地址
        // https://other-web-nf03-sycdn.kuwo.cn/1e9001102c8cf2545e0974cdbaef31bc/6252ec36/resource/m2/98/88/2337678367.mp4
        console.log(
          eval(
            (/sources\:(.*?)\}\]/g.exec(data.data)[1] + "}]").replaceAll(
              "\\u002F",
              "/"
            )
          )
        );
        let mp4Url = eval(
          (/sources\:(.*?)\}\]/g.exec(data.data)[1] + "}]").replaceAll(
            "\\u002F",
            "/"
          )
        );
        this.$router.push({ path: "/mp4", query: { url: mp4Url[0].src } });
      });
    },
    prenum() {
      console.log("当前index :" + this.currentIndex);
      console.log("当前page :" + this.currentpage);
      console.log(
        "当前总 page :" + (parseInt(this.searchResult.HIT / 100) + 1)
      );
      if (this.currentIndex + 1 < this.currentpage) {
        this.currentpage--;
        console.log("index 不变:" + this.currentIndex);
        console.log("减少后的page :" + this.currentpage);
        this.requestsong(this.currentpage - 1);
      } else if (this.currentIndex > 0) {
        this.currentIndex--;
        this.currentpage--;
        console.log(" 减少后的 index :" + this.currentIndex);
        console.log("减少后的page :" + this.currentpage);
        console.log("请求的page :" + (this.currentpage - 1));
        this.requestsong(this.currentIndex);
      } else return;
    },
    nextnum() {
      console.log("当前index :" + this.currentIndex);
      console.log("当前page :" + this.currentpage);
      console.log(
        "当前总 page :" + (parseInt(this.searchResult.HIT / 100) + 1)
      );
      // console.log(this.searchResult.abslist);
      if (
        this.currentIndex + 1 + 3 <
        parseInt(this.searchResult.HIT / 100) + 1
      ) {
        this.currentIndex++;
        this.currentpage++;
        console.log("增加后的index :" + this.currentIndex);
        this.requestsong(this.currentIndex);
      } else if (this.currentpage < parseInt(this.searchResult.HIT / 100) + 1) {
        this.currentpage++;
        console.log("index 不变:" + this.currentIndex);
        console.log("增加后的page :" + this.currentpage);
        this.requestsong(this.currentpage - 1); //page 比index 大1,减一后就等同于使用index 的页数请求
      } else return;
    },
    clickcurrentpage(page) {
      if (page == this.currentpage) {
        console.log("点击当前页码");
        return;
      }
      // 如果当前点击index 大于最后位置-3 ,则增加page 而index 只增加到最大值-3
      if (page - 1 + 1 + 3 > parseInt(this.searchResult.HIT / 100) + 1) {
        console.log(
          "如果当前点击index 大于最后位置-3 ,则增加page 而index 只增加到最大值-3"
        );
        this.currentIndex = parseInt(this.searchResult.HIT / 100) + 1 - 3 - 1;
        this.currentpage = page;
        console.log("当前请求index : " + this.currentIndex);
        console.log("点击当前page : " + this.currentpage);
      }
      // 如果点击的index 小于0+3 ,则使用page -1 为index
      else if (page - 1 < 0 + 3) {
        console.log("如果点击的index 小于0+3 ,则使用page -1 为index");

        // if (page - 1 == 2) {    //如果倒回点时,index 为2 时,需要显示前面的
        // console.log('如果倒回点时,index 为2 时,需要显示前面的');
        //   this.currentIndex = 2;
        //   this.currentpage = page;
        // } else {
        this.currentIndex = page - 1;
        this.currentpage = page;
        // }

        console.log("当前请求index : " + this.currentIndex);
        console.log("点击当前page : " + this.currentpage);
      }
      // 如果点击位置与之前相差0 或以上,则使用点击的 index位置
      else if (Math.abs(page - 1 - this.currentIndex) >= 0) {
        console.log("如果点击位置与之前相差3 以上,则使用3的 index位置");
        this.currentIndex = page - 1; // page -1 是 index 值,
        this.currentpage = page;
        console.log("当前请求index : " + this.currentIndex);
        console.log("点击当前page : " + this.currentpage);
      }

      this.requestsong(this.currentpage - 1);
    },
    check(e) {
      console.log(e.target.checked);
      if (e.target.checked) {
        console.log("选中");
        this.isallsubchecked = this.searchResult.abslist.length;
        for (const check of this.$refs.checkbox) {
          check.checked = true;
        }
      } else {
        for (const check of this.$refs.checkbox) {
          check.checked = false;
        }
        this.isallsubchecked = 0;
      }
      // console.log(this.$refs.checkbox);
      // console.log("子长度: " + this.isallsubchecked);
    },
    subcheck(e) {
      if (e.target.checked) {
        this.isallsubchecked += 1;
      } else {
        this.isallsubchecked -= 1;
      }
      console.log(this.isallsubchecked);
    },
    // http://search.kuwo.cn/r.s?all=%E5%8D%8A%E7%94%9F%E9%9B%AA&ft=music&newsearch=1&itemset=web_2013&client=kt&cluster=0&pn=0&rn=80&rformat=json&hasmkv=1&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0
    // http://search.kuwo.cn/r.s?all=%E5%8D%8A%E7%94%9F%E9%9B%AA&pn=0&rn=100&vermerge=1&rformat=json&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc
    // 其他组件调用此组件的方法
    usedfunc() {
      // this.$router.go(0)
    },
  },
  created: function () {
    this.requestsong();
  },
  updated() {
    //   this.requestsong()
  },
  watch: {
    //   监听路由的变化,执行methods 中的requestsong 函数
    $route: "requestsong",
  },
};
</script>
<style lang="scss" scoped>
.opertion {
  width: 100%;
  height: 50px;
  // background-color: rgb(87, 111, 111);
  display: flex;
  justify-content: flex-start;
  padding: 10px;
  text-align: center;
  font-size: 14px;
}
.allplay {
  width: 90px;
  height: 30px;
  line-height: 30px;
  color: #fff;
  background-color: #37bce2;
  border-radius: 5px;
  border: 1px solid rgba(153, 153, 153, 0.467);
  margin-right: 10px;
  cursor: pointer;
}
.add,
.download {
  width: 70px;
  height: 30px;
  line-height: 30px;
  color: #fff;
  background-color: #fff;
  border-radius: 5px;
  border: 1px solid rgba(153, 153, 153, 0.467);
  margin-right: 10px;
  color: rgb(86, 84, 84);
  cursor: pointer;
}
.add span,
.download span {
  color: #37bce2;
}

.detail {
  width: 100%;
  height: calc(100% - 50px);
  // background-color: wheat;
  overflow-y: scroll;
}
::-webkit-scrollbar {
  width: 0;
}

.detailoperation,
.detailmsg {
  width: 100%;
  height: 40px;
  line-height: 40px;
  border-top: 1px solid #999;
  border-bottom: 1px solid #999;
  display: flex;
  padding-left: 10px;
}
.detailmsg:hover {
  background-color: rgba(211, 205, 205, 0.714);
}
.detailoperation span,
.detailmsg span {
  flex: 1;
  // border: 1px solid red;
  text-align: left;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 14px;
  padding: 0 5px;
}
.detailoperation span {
  color: rgb(97, 97, 97);
}
.detailoperation span:nth-child(3),
.detailmsg span:nth-child(3) {
  flex: 3;
}
.detailoperation span:nth-child(4),
.detailmsg span:nth-child(4) {
  flex: 2;
}
.detailoperation span:nth-child(5),
.detailmsg span:nth-child(5) {
  flex: 2;
}
.detailmsg span {
  cursor: pointer;
}
.detailmsg > span:nth-child(3) {
  color: red;
}
.detailmsg > span:hover {
  color: #37bce2;
}
.detailmsg span.playmv {
  padding-left: 2px;
  color: #37bce2;
}
.detailmsg span.playmv:hover {
  font-weight: 800;
}
.detailmsg > span:nth-child(2) {
  padding: 0;
  font-size: 16px;
}
.pagechange {
  width: 100%;
  height: 30px;
  line-height: 30px;
  padding-top: 10px;
  text-align: center;
  // background-color: violet;
}
.pagechange span {
  width: 30px;
  display: inline-block;
  font-size: 14px;
  // border: 1px solid red;
  // background-color: #fff;
  margin-right: 5px;
  cursor: pointer;
}
.pagechange span.nextpage,
.pagechange span.prepage {
  width: 50px;
}
.pagechange span:hover {
  color: #37bce2;
}
.currentpage {
  background-color: #37bce2 !important;
  color: #fff;
}
.currentpage:hover {
  background-color: #37bce2 !important;
  color: #fff !important;
}
</style>