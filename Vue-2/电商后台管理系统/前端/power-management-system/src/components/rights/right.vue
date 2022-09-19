<template>
<el-card>
    <!-- 面包屑 -->
    <my-bread level1="权限管理" level2="权限列表"></my-bread>
    <!-- 表格 -->
        <el-table
      :data="rightlist"
      border
      style="width: 100%;margin-top:20px;">
      <el-table-column
        type="index"
        label="#"
        width="100">
      </el-table-column>
      <el-table-column
        prop="authName"
        label="权限名称"
        width="280">
      </el-table-column>
      <el-table-column
        prop="path"
        label="路径"
        width="280">
      </el-table-column>
      <el-table-column
        label="层级"
        >
        <template slot-scope="scope">
           <span v-if="scope.row.level=='0'">一级</span>
           <span v-if="scope.row.level=='1'">二级</span>
           <span v-if="scope.row.level=='2'">三级</span>
        </template>
      </el-table-column>
    </el-table>
</el-card>
</template>

<script>
export default {
    name: 'right',
    data() {
        return {
            rightlist:[],
        }
    },
    created(){
        this.getRightList()
    },
    methods:{
      getRightList(){
           
          this.$http.get(`rights/list`).then(res=>{
            //   console.log(res);
              this.rightlist=res.data.data
              this.$message.success(res.data.meta.msg)
          })
      }

    }

}
</script>

<style  scoped>

</style>
