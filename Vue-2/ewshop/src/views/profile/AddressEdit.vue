<template>
  <van-address-edit
    :area-list="areaList"
    show-postal
    show-delete
    show-set-default
    show-search-result
    :search-result="searchResult"
    :area-columns-placeholder="['请选择', '请选择', '请选择']"
    @save="onSave"
    @delete="onDelete"
    @change-detail="onChangeDetail"
  />
</template>

<script>
export default {
  name: "AddressEdit",
  setup() {
    let areaList = { 210000: ["江西省", "334600"] };

    return {
      areaList,
    };
  },
};
</script>

<style>
</style>