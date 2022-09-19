<template>
  <van-address-list
    v-if="istrue"
    v-model="chosenAddressId"
    :list="list"
    :disabled-list="disabledList"
    disabled-text="以下地址超出配送范围"
    default-tag-text="默认"
    @add="onAdd"
    @edit="onEdit"
  />

  <div style="margin-top: 50%" v-else>
    还没有地址,赶快去添加吧~
    <van-button style="top: 45px" @click="tologout" round block color="#44ba80"
      >新增地址</van-button
    >
  </div>
</template>

<script>
import { useRouter } from "vue-router";
import { ref } from "vue";
import { Toast } from "vant";

export default {
  name: "Address",
  setup() {
    const router = useRouter();
    let istrue = true;
    function tologout() {
      router.push({ path: "/addressEdit", query: {} });
    }

    const chosenAddressId = ref("1");
    const list = [
      {
        id: "1",
        name: "张三",
        tel: "13000000000",
        address: "浙江省杭州市西湖区文三路 138 号东方通信大厦 7 楼 501 室",
        isDefault: true,
      },
      {
        id: "2",
        name: "李四",
        tel: "1310000000",
        address: "浙江省杭州市拱墅区莫干山路 50 号",
      },
    ];
    const disabledList = [
      {
        id: "3",
        name: "王五",
        tel: "1320000000",
        address: "浙江省杭州市滨江区江南大道 15 号",
      },
    ];

    const onAdd = () => Toast("新增地址");
    const onEdit = (item, index) => Toast("编辑地址:" + index);
    return {
      tologout,
      list,
      onAdd,
      onEdit,
      disabledList,
      chosenAddressId,
      istrue,
    };
  },
};
</script>

<style>
</style>