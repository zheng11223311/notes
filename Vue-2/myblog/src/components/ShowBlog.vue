<template>
  <div class="showblog">
    <div class="list">
      <div class="item" v-for="item in blogArr" :key="item.id">
        <div class="top">
          <div class="title">{{ item.title }}</div>
          <div class="time">{{ medate(item.posttime) }}</div>
        </div>
        <div class="center">
          {{ item.content }}
          <!-- API接口地址:https://ku.qingnian8.com/dataApi/blog/showBlog.php -->
          <!-- API分类接口地址:https://ku.qingnian8.com/dataApi/blog/classBlog.php -->
          <!-- API添加博客接口地址:https://ku.qingnian8.com/dataApi/blog/addBlog.php -->
        </div>
        <div class="bottom">
          <div class="classify">
            分类: <span>{{ item.classify }}</span>
          </div>
          <div class="author">
            作者: <span>{{ item.author }}</span>
          </div>
        </div>
      </div>
    </div>

    <div class="page">
      <div class="prev" @click="prevClick">上一页</div>
      <span>当前第 {{ p }} 页</span>
      <div class="next" @click="nextClick">下一页</div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import common from "../assets/js/common";
// console.log(new Date().getTime());
// console.log(common.myDate(1591841249, 3));

export default {
  name: "ShowBlog",
  data() {
    return {
      blogArr: [],
      p: 1,
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    //修改时间格式
    medate(val) {
      return common.myDate(val, 3);
    },

    //获取数据请求
    getData(page = 1) {
      axios({
        url: "https://ku.qingnian8.com/dataApi/blog/showBlog.php",
        params: {
          page: page,
          num: 9,
        },
      }).then((res) => {
        // console.log(res);
        // console.log(res.data);
        this.blogArr = res.data;
      });
    },
    prevClick() {
      this.p--;
      if (this.p < 1) {
        alert("已经是最前面了~");
        this.p = 1;
        return;
      }
      this.getData(this.p);
      document.documentElement.scrollTop = 0; //回到顶部
    },
    nextClick() {
      if (this.blogArr.length < 9 || this.blogArr.length == 0) {
        alert("木有更多的消息了~");
        return;
      }
      this.p++;
      this.getData(this.p);
      document.documentElement.scrollTop = 0; //回到顶部
      //   document.body.scrollTop = 0; //回到顶部
    },
  },
};
</script>

<style scoped>
.showblog {
  min-height: 500px;
  border: 2px solid #418883;
}
.page {
  display: flex;
  justify-content: center;
  padding-top: 60px;
  padding-bottom: 40px;
}
.page span {
  line-height: 50px;
}
.page div {
  padding: 10px 20px;
  border: 1px solid #418883;
  margin: 0 10px;
  color: #418883;
  cursor: pointer;
  transition: 0.3s;
}
.page div:hover {
  background-color: #418883;
  color: #f6f6f6;
}
.list {
  padding: 40px;
}
.item {
  margin-bottom: 40px;
}
.item .top {
  display: flex;
  justify-content: space-between;
}
.item .top .title {
  font-size: 26px;
  color: #333;
}
.item .top .time {
  font-size: 18px;
  color: #666;
}
.item .center {
  margin: 15px 0 30px;
  background-color: #f6f6f6;
  padding: 20px;
  border-radius: 3px;
}
.item .bottom {
  font-size: 14px;
  color: #999;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.item .bottom span {
  font-size: 16px;
  color: #666;
}
</style>