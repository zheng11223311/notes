<template>
  <div class="addblog">
    <div class="row">
      <div class="text">博客标题:</div>
      <div class="ipBox">
        <input type="text" v-model="blogObj.title" />
      </div>
    </div>

    <div class="row">
      <div class="text">作者:</div>
      <div class="ipBox">
        <input type="text" v-model="blogObj.author" />
      </div>
    </div>

    <div class="row">
      <div class="text">分类:</div>
      <div class="ipBox">
        <select name="" id="" v-model="blogObj.classify">
          <option
            v-for="item in classArr"
            :value="item.classname"
            :key="item.id"
          >
            {{ item.classname }}
          </option>
        </select>
      </div>
    </div>

    <div class="row">
      <div class="text">博客内容:</div>
      <div class="ipBox">
        <textarea
          name=""
          id=""
          cols="50"
          rows="10"
          v-model="blogObj.content"
        ></textarea>
      </div>
    </div>

    <div class="row">
      <div class="text">时间:</div>
      <div class="ipBox">
        {{ new Date() }}
      </div>
    </div>

    <button class="show" @click="onsubmit">发布博客</button>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "AddBlog",
  data() {
    return {
      blogObj: {
        title: "",
        author: "",
        content: "",
        classify: "",
      },
      classArr: [],
    };
  },
  mounted() {
    this.getclassify();
  },
  methods: {
    //发表博客
    onsubmit() {
      axios({
        url: "https://ku.qingnian8.com/dataApi/blog/addBlog.php",

        params: this.blogObj,
      }).then((res) => {
        // console.log(res);
        if (res.data.code == 400) {
          //数据为空时不会加载进去,所以要判断一下
          alert(res.data.msg);
          return;
        }
        this.$router.push("/show");
      });
    },
    //获取分类
    getclassify() {
      axios({
        url: "https://ku.qingnian8.com/dataApi/blog/classBlog.php",
      }).then((res) => {
        // console.log(res.data);
        this.classArr = res.data;
      });
    },
  },
};
</script>

<style scoped>
.addblog {
  min-height: 830px;
  width: 1000px;
  display: flex;
  justify-content: flex-start;
  flex-wrap: wrap;
  text-align: center;
}
.text {
  font-size: 30px;
}
.row {
  margin: 20px auto 0;
  display: flex;
  font-size: 20px;
  width: 80%;
}
input,
select,
option {
  font-size: 30px;
  width: 400px;
  height: 40px;
  outline: none;
  font-weight: 100;
}
textarea {
  outline: none;
}
.show {
  width: 30%;
  margin: 40px auto;
  height: 50px;
  line-height: 50px;
  color: aqua;
  background-color: #431883;
  outline: none;
}
</style>