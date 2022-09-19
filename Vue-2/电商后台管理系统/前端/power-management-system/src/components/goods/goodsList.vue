<template>
<el-card>
 <!-- 面包屑 -->
    <my-bread level1="商品管理" level2="商品列表"></my-bread>
     <!-- 添加商品 -->
    <div class="input-with-select1" style="margin-top: 20px;text-align:left">
        <el-input
         @clear="loadUserList()" 
         clearable
          placeholder="请输入内容" 
          v-model="value" 
          class="input-with-select">
            <el-button @click="searchuser()" slot="append" icon="el-icon-search"></el-button>
        </el-input>
        <el-button type="success" @click="$router.push({name:'goodsAdd'})">添加商品</el-button>
    </div>
    <!-- 表格 -->
    <el-table :data="userlist" style="width: 100%">
        <el-table-column type='index' label="#" width="60">
        </el-table-column>
        <el-table-column prop="goods_name" label="商品名称" width="280">
        </el-table-column>
        <el-table-column prop="goods_price" label="商品价格(元)">
        </el-table-column>
        <el-table-column prop="goods_weight" label="商品重量">
        </el-table-column>
        <el-table-column label="创建时间">
            <template slot-scope="userlist">
                {{userlist.row.add_time|fmdate}}
            </template>
        </el-table-column>
        <el-table-column prop="name" label="操作">
            <template slot-scope="userlist">
                <el-button @click="showEditUserMsgBox(userlist.row)" plain size="mini" type="primary" icon="el-icon-edit" circle></el-button>
                <el-button @click="showDeleUserMsgBox(userlist.row.id)" plain size="mini" type="danger" icon="el-icon-delete" circle></el-button>
            </template>
        </el-table-column>
    </el-table>
    <!-- 分页 -->
    <el-pagination style="width:80px" @size-change="handleSizeChange" @current-change="handleCurrentChange" :current-page="pagenum" :page-sizes="[2, 4, 6, 8]" :page-size="pagesize" layout="total, sizes, prev, pager, next, jumper" :total="total">
    </el-pagination>
</el-card>
</template>

<script>
export default {
    name: 'goodsList',
    data() {
        return {
            dialogFormVisible:false,
            form:{},
            userlist:[],
            value:'',
             query: '',
            pagenum: 1, //页数
            pagesize: 2, //条数
            total: 1, //总页数

        }
    },
     created() {
        this.getUserList()
    },
    methods:{
        //清除input
      loadUserList(){

      },
    //   搜索
searchuser(){

},
//添加
showAddUserDia(){},
changeMsgState(){},
showEditUserMsgBox(){},
showSetUserRoleDia(){},
showDeleUserMsgBox(){},
 handleSizeChange(val) {
            this.pagesize = val
            this.pagenum = 1
            this.getUserList()
        },
        handleCurrentChange(val) {
            this.pagenum = val
            this.getUserList()
        },
         getUserList() {
            //获取用户列表的请求
            this.$http.get(`goods?query=${this.query}&pagenum=${this.pagenum}&pagesize=${this.pagesize}`)
                .then(res => {
                    // console.log(res);
                    const {
                        meta: {
                            status,
                            msg
                        },
                        data: {
                            goods,
                            total
                        }
                    } = res.data
                    if (status == 200) {
                        //给表格数据赋值
                        this.userlist = goods
                        //给total 赋值
                        this.total = total
                        //提示
                        this.$message.success(msg)
                    } else {
                        this.$message.warning(msg)
                    }
                })
        }
    }

}
</script>

<style  scoped>
.input-with-select{
    width: 30%;
    margin-bottom: 20px;
}
</style>
