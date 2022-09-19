<template>
  <a-button type="primary" size="large" @click="$router.push('/')">
    <template #icon>
      <arrow-left-outlined></arrow-left-outlined>
    </template>
    返回
  </a-button>
  <div id="books">
    <a-card
      hoverable
      style="width: 18%; margin: 20px 30px; height: 55vh"
      v-for="item in list"
      :key="item.gid"
      @click="goToBookContent(item.gid,item.nid)"
    >
      <template #cover>
        <img :alt="item.name" :src="item.imgUrl" style="height: 40vh" />
      </template>
      <a-card-meta :title="item.name">
        <template #description :title="item.desc">
          {{ item.desc }}
        </template>
      </a-card-meta>
    </a-card>
  </div>
</template>

<script type="text/javascript">
import { searchBookMsg } from "../untils/axiosrequest";

import { notification } from "ant-design-vue";

import { ArrowLeftOutlined } from "@ant-design/icons-vue";

export default {
  name: "Books",
  data() {
    return {
      list: [
        {
          imgUrl: "",
          name: "",
          gid: "",
          desc: "",
          nid:'',
        },
      ],
    };
  },
  components: { ArrowLeftOutlined },
  methods: {
    getBookId() {
      //   console.log(this.$route.query.value);
      //   console.log(this.$route.query.value == "");
      if (this.$route.query.value == "") {
        notification.open({
          message: "不存在书籍!",
          description: " 请输入书名,点击此处返回",
          onClick: () => {
            this.$router.go(-1);
          },
        });
        return;
      }
      searchBookMsg(this.$route.query.value).then((res) => {
        // console.log(res);
        // console.log(res.data.all_book_items);
        this.list = res.data.all_book_items;
        notification.open({
          message: "请求数据成功!",
          description: this.$route.query.value + " - 相关书籍返回成功!!",
          onClick: () => {
            console.log("提示内容被点击");
          },
        });
      });
    },
    goToBookContent(gid,nid) {
      if (gid == undefined||nid == undefined) {
        notification.open({
          message: "请求失败!",
          description: " 小说不存在,请重新选择小书!",
          onClick: () => {
            console.log("提示内容被点击111");
          },
        });
        return;
      }
      this.$router.push("/bookContent?bookid=" + gid+'&nid='+nid+"&value="+this.$route.query.value);
    },
  },
  activated() {
    console.log("缓存组件被激活");
  },
  created() {
    this.getBookId();
  },
};
</script>

<style scoped>
#books {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
  /* overflow-y: scroll;
    white-space: nowrap;
    text-overflow: ellipsis; */
}
::v-deep .ant-card-meta-description {
  width: 100%;
  height: 5vh !important;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
</style>
