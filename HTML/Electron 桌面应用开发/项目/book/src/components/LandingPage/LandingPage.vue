<template>
  <div id="wrapper">
    <div class="top">
      <div class="search">
        <a-input-search
          placeholder="请输入书名"
          enter-button
          size="large"
          v-model:value="value"
          @search="onSearch"
        />
      </div>
      <div class="btn">
        <a-button type="primary" size="large" @click="LookAllBooks()">
          <template #icon>
            <appstore-outlined />
          </template>
          查看所有书籍
        </a-button>
      </div>
    </div>
    <a-table :columns="columns" :data-source="list" bordered>
      <template #bodyCell="{ column, text }">
        <!-- {{ text }} -->
        <template v-if="column.dataIndex === 'name'">
          <a :title="text">{{ text }}</a>
        </template>
        <template v-if="column.dataIndex === 'imgUrl'">
          <img style="width: 100%" :src="text" />
        </template>
        <template v-if="column.dataIndex === 'intro'">
          <a>{{ text }}</a>
        </template>
      </template>
      <!-- <template #title>Header</template>
        <template #footer>Footer</template> -->
    </a-table>
  </div>
</template>

<script type="text/javascript">
import { searchBookMsg } from "../../untils/axiosrequest";

import { notification } from "ant-design-vue";

import { AppstoreOutlined } from "@ant-design/icons-vue";
export default {
  name: "LandingPage",
  data() {
    return {
      list: [],
      columns: [
        {
          title: "ID",
          dataIndex: "gid", //根据data 中的bookId 属性
          key: "ID",
          width: "5%",
        },
        {
          title: "书名",
          dataIndex: "name",
          key: "bookname",
          width: "10%",
        },
        {
          title: "封面",
          dataIndex: "imgUrl",
          key: "address",
          width: "10%",
        },
        {
          title: "描述",
          key: "tags",
          dataIndex: "desc",
          width: "55%",
        },
        {
          title: "下载",
          key: "action",
          width: "20%",
        },
      ],
      bookids: [],
      value: "",
    };
  },
  components: {
    AppstoreOutlined,
  },
  methods: {
    onSearch(value, event) {
      // console.log(value);
      // console.log(event);
      searchBookMsg(value)
        .then((res) => {
          // console.log(res);
          // console.log(res.data.all_book_items);
          this.list = res.data.all_book_items;
          this.openNotification(value);
          for (const iterator of this.list) {
            this.bookids.push(iterator.gid);
          }
          this.$forceUpdate();
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
    openNotification(value) {
      // console.log(this);
      notification.open({
        message: "请求数据成功!",
        description: value + " - 相关数据返回成功!!",
        onClick: () => {
          // console.log("提示内容被点击");
        },
      });
    },
    LookAllBooks() {
      // this.$forceUpdate()
      if (this.value == "") {
        notification.open({
          message: "输入为空!",
          description: " 请输入书名",
          onClick: () => {
            console.log("提示内容被点击111");
          },
        });
        return;
      }
      this.$router.push("/books?value=" + this.value);
    },
  },
};
</script>

<style scoped>
#wrapper {
  padding: 30px;
}
.search {
  width: 60%;
  margin-bottom: 30px;
}
.top {
  position: relative;
  width: 100%;
}
.btn {
  position: absolute;
  top: 0;
  right: 0;
}
</style>
