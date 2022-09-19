<template>
<el-card>
    <my-bread level1="订单管理" level2="订单列表"></my-bread>
    <el-form>
        <!-- 表格 -->
    <el-table height="450" :data="list" style="width: 100%;margin-top:20px">
    <el-table-column >
        <el-table-column type="index" label="#" width="40"></el-table-column>
        <el-table-column prop="order_number" label="订单编号" width="180"></el-table-column>
        <el-table-column prop="order_price" label="订单价格" ></el-table-column>
        <el-table-column prop="order_pay" label="是否付款" width="180">
            <template slot-scope="scope">
                <el-tag v-if="scope.row.order_pay==0">已付款</el-tag>
                <el-tag type="danger" v-if="scope.row.order_pay==1">未付款</el-tag>
            </template>
        </el-table-column>
        <el-table-column prop="is_send" label="是否发货" width="100" ></el-table-column>
        <el-table-column  label="下单时间" width="100" >
            <template slot-scope="scope">
                {{scope.row.create_time|fmdate}}
            </template>
        </el-table-column>
        <el-table-column prop="name" label="操作">
            <template slot-scope="userlist">
                <el-button @click="showEditUserMsgBox(userlist.row)" plain size="mini" type="primary" icon="el-icon-edit" circle></el-button>
            </template>
        </el-table-column>
      </el-table-column>    
    </el-table>
    <!-- 分页 -->
    <el-pagination style="width:80px"
     @size-change="handleSizeChange" 
     @current-change="handleCurrentChange" 
     :current-page="pagenum" 
     :page-sizes="[2, 4,6,8]" 
     :page-size="pagesize" 
     layout="total, sizes, prev, pager, next, jumper" 
     :total="total">
    </el-pagination>
    <!-- 修改地址对话框 -->
    <el-dialog title="修改订单地址"
        style="text-align:left" 
         :visible.sync="dialogFormVisibleAdd">
            <el-form :model="form">
                  <!-- 级联选择器 -->
               <el-form-item label="省市区" label-width="120px">
                    <el-cascader
                    v-model="value"
                    clearable=""
                    :options="options"
                    :props="{ expandTrigger: 'hover',checkStrictly: true  }"
                    @change="handleChange"></el-cascader>
               </el-form-item>
               <el-form-item label="详细地址" label-width="120px">
                   <el-input v-model="form.address" auto-complete="off"></el-input>
               </el-form-item>
            </el-form>
             <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisibleAdd = false">取 消</el-button>
                <el-button type="primary" @click="addCate()">确 定</el-button>
            </div>
    </el-dialog>
  
    </el-form>
</el-card>
</template>

<script>
export default {
    name: 'order',
    data() {
        return {
            list:[],
            dialogFormVisibleAdd:false,
            form:{
                address:''
            },
            value:[],   //级联选择器绑定的数据
            options:[],
            pagenum:1,  //当前页
            pagesize:2, //每页几条数据
            total:1,
        }
    },
     created(){
        this.getGoodsCate()
    },
    methods:{
        //级联变化
        handleChange(){},
        //修改订单-打开面板
        showEditUserMsgBox(){
            this.dialogFormVisibleAdd=true
        },
        //修改订单-发送消息
        addCate(){
            this.dialogFormVisibleAdd=false
        },
         //获取所有订单
      getGoodsCate(){
          this.$http.get(`orders?pagenum=${this.pagenum}&pagesize=${this.pagesize}`).then(res=>{
              console.log(res);
              this.list=res.data.data.goods
              this.total=res.data.data.total
            this.$message.success(res.data.meta.msg)
          })
      },
      //每页几条数据变化
    handleSizeChange(val) {
            this.pagesize = val
            this.pagenum = 1
            // console.log(this.pagesize);
            this.getGoodsCate()
        },
    handleCurrentChange(val) {
        this.pagenum = val
        console.log(val);
        this.getGoodsCate()
    },


    }
}
</script>

<style  scoped>

</style>
