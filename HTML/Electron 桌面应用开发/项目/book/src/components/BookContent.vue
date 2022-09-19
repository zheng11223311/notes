<template>
  <div id="bookcontent">
    <div class="btn">
      <a-button
        type="primary"
        size="large"
        @click="$router.replace('/books?value=' + this.$route.query.value)"
      >
        <template #icon>
          <arrow-left-outlined></arrow-left-outlined>
        </template>
        查看所有书籍
      </a-button>
      <a-button type="primary" size="large" @click="$router.replace('/')">
        <template #icon>
          <home-outlined />
        </template>
        返回主页
      </a-button>
    </div>
    <div class="content">
      <div class="side">
        <a-button
          type="primary"
          style="margin-bottom: 16px"
          @click="toggleCollapsed"
        >
          <MenuUnfoldOutlined v-if="collapsed" />
          <MenuFoldOutlined v-else />
        </a-button>
        <a-menu
          v-model:openKeys="openKeys"
          v-model:selectedKeys="selectedKeys"
          mode="inline"
          theme="dark"
          :inline-collapsed="collapsed"
        >
          <a-menu-item
            :key="item.sort"
            v-for="item in chapterList"
            :title="item.chapterName"
            @click="showBookContent(bookid, item.sort)"
          >
            <template #icon>
              <PieChartOutlined />
            </template>
            <span>{{ item.chapterName }}</span>
          </a-menu-item>

          <a-menu-item key="more" @click="loadMore()">
            <template #icon>
              <PieChartOutlined />
            </template>
            <span>加载更多</span>
          </a-menu-item>
        </a-menu>
      </div>
      <div class="side1">
        <!-- 书本内容 -->
        <router-view v-slot="{ Component }">
          <keep-alive v-if="$route.meta.keepAlive">
            <component :is="Component">
              <p>缓存页面</p>
            </component>
          </keep-alive>
          <component :is="Component" v-if="!$route.meta.keepAlive">
            <p>没有缓存的页面</p>
          </component>
        </router-view>
      </div>
    </div>
  </div>
</template>

<script type="text/javascript">
import {
  MenuFoldOutlined,
  MenuUnfoldOutlined,
  PieChartOutlined,
  AppstoreOutlined,
  ArrowLeftOutlined,
  HomeOutlined,
} from "@ant-design/icons-vue";

import { BookContent, BookChapters } from "../untils/axiosrequest";

import { notification, message } from "ant-design-vue";

export default {
  name: "BookContent",
  data() {
    return {
      collapsed: false,
      selectedKeys: ["1"],
      openKeys: ["sub1"],
      preOpenKeys: ["sub1"],
      chapterList: [],
      currentPage: 1,
      bookid: "",
    };
  },
  components: {
    ArrowLeftOutlined,
    MenuFoldOutlined,
    MenuUnfoldOutlined,
    PieChartOutlined,
    AppstoreOutlined,
    HomeOutlined,
  },
  methods: {
    requestBookContent() {
      //   console.log(this.$route.query.bookid);
      // console.log(this.$route.query);
      this.bookid = this.$route.query.bookid;
      if (this.$route.query.bookid == "" || this.$route.query.nid == "") {
        notification.open({
          message: "请求错误!",
          description: " 小说不存在! 点击此处返回",
          onClick: () => {
            this.$router.go(-1);
            console.log("提示内容被点击111");
          },
        });
        return;
      }
      //   console.log(this.currentPage);
      //   console.log(this.$route.query.nid);
      BookChapters(
        this.$route.query.bookid,
        this.currentPage,
        20,
        this.$route.query.nid
      )
        .then((res) => {
          // console.log(res);
          // console.log(res.data.chapters);
          if (res?.data?.chapters?.length == 0 || res == false) {
            console.log("vip 章节或没有内容");
            return;
          }
          this.chapterList = res.data.chapters;
          // 请求第一章节,解决了第一次手动点击请求第一章节时发生路由改变,导致没有进行路由的缓存,导致刷新界面
          // 在这里自动调用第一章节请求,路由在请求的时候已经被改变并缓存,再次手动点击不会触发刷新
          // 缺点,父路由再次被创建
          this.showBookContent(this.$route.query.bookid, 1);
          //  console.log( this.chapterList);
          message.success("章节请求成功,点击阅读章节!");
        })
        .catch((e) => {
          console.log(e);
          notification.open({
            message: "请求数据失败!",
            description: "网络错误,请检查网络是否连通",
            onClick: () => {
              // console.log("提示内容被点击");
            },
          });
        });
    },
    toggleCollapsed() {
      this.collapsed = !this.collapsed;
      this.openKeys = this.collapsed ? [] : this.preOpenKeys;
    },
    loadMore() {
      // 如果大于章节
      // if(){}
      BookChapters(
        this.$route.query.bookid,
        this.currentPage + 1,
        20,
        this.$route.query.nid
      )
        .then((res) => {
          this.currentPage++;
          // console.log(res.data.chapters);
          this.chapterList = [...this.chapterList, ...res.data.chapters];
          message.success("更多章节加载成功,点击阅读章节!");
        })
        .catch((e) => {
          console.log(e);
          notification.open({
            message: "请求数据失败!",
            description: "网络错误,请检查网络是否连通",
            onClick: () => {
              // console.log("提示内容被点击");
            },
          });
        });
    },
    showBookContent(bookid, sortid) {
      this.$router.push(
        "/bookContent/showbookcontent?bookid=" +
          bookid +
          "&nid=" +
          this.$route.query.nid +
          "&sortid=" +
          sortid +
          "&value=" +
          this.$route.query.value
      );
    },
  },
  created() {
    console.log("创建激活");
    // this.requestBookContent();
  },
  // activated() {
  //   console.log("路由激活");
  //   // this.requestBookContent();
  // },
  // updated() {
  //   console.log("更新激活");
  //   // this.requestBookContent();
  // },
  mounted() {
    console.log("挂载激活");
    this.requestBookContent();
  },
  
};
</script>

<style scoped>
* {
  user-select: none;
}
#bookcontent {
  width: 100vw;
  height: 100vh;
  overflow: hidden;
}
.bth {
  width: 100vw;
  height: 40px !important;
}
.ant-btn {
  float: left;
  right: 0;
}
.ant-btn:nth-child(2) {
  float: right;
  right: 0;
}
.content {
  width: 100vw;
  height: calc(100vh - 40px);
  /* background-color: #ccc; */
  display: flex;
}
.side,
.side1 {
  position: relative;
  /* width: 260px; */
  height: calc(100vh - 40px);
  overflow-y: scroll;
}
.side {
  max-width: 260px;
}
.side1 {
  /* width: 260px; */
  flex: 1;
  /* background-color: aqua; */
  /* margin-left: 30px; */
  padding: 30px;
}
::-webkit-scrollbar {
  width: 0;
}
</style>
