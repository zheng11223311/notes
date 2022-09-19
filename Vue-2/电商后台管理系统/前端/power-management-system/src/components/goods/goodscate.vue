<template>
<el-card>
 <!-- 面包屑 -->
    <my-bread level1="商品管理" level2="商品分类"></my-bread>
         <el-col :span="24" style="text-align:left;margin-top:20px" class="search">
             <el-button type="success" @click="addGoodsCate()">添加分类</el-button>
         </el-col>
     <!-- 添加分类对话框 -->
        <el-dialog title="添加分类"
        style="text-align:left" 
         :visible.sync="dialogFormVisibleAdd">
            <el-form :model="form">
               <el-form-item label="分类名称" label-width="120px">
                   <el-input v-model="form.cat_name" auto-complete="off"></el-input>
               </el-form-item>
                <!-- 级联选择器 -->
               <el-form-item label="分类" label-width="120px">
                    <el-cascader
                    v-model="value"
                    clearable=""
                    :options="options"
                    :props="{ expandTrigger: 'hover',checkStrictly: true  }"
                    @change="handleChange"></el-cascader>
               </el-form-item>
            </el-form>
           
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisibleAdd = false">取 消</el-button>
                <el-button type="primary" @click="addCate()">确 定</el-button>
            </div>
        </el-dialog>
    <!-- 表格 -->
  
    <el-table height="450" :data="list" style="width: 100%">
               <!-- 
               treeKey -> nodekey ->节点唯一标识符
               parentKey ->父节点的id
               levelKey ->当前节点的级别
               childKey ->子节点 -->
               <el-tree-grid
               prop="cat_name"
               label="分类名称"
               treeKey="cat_id"
                parentKey="cat_pid"
                levelKey="cat_level" 
                childKey="children" 
               >

               </el-tree-grid>
        <el-table-column  label="级别" width="180">
            <template slot-scope="scope">
                <span v-if="scope.row.cat_level==0">一级</span>
                <span v-if="scope.row.cat_level==1">二级</span>
                <span v-if="scope.row.cat_level==2">三级</span>
            </template>
        </el-table-column>
        
        <el-table-column   label="是否有效" width="180">
         <template slot-scope="scope">
                <span v-if="scope.row.cat_deleted==false">有效</span>
                <span v-if="scope.row.cat_deleted==true">无效</span>
            </template>
        </el-table-column>
        <el-table-column prop="name" label="操作">
            <template slot-scope="userlist">
                <el-button @click="showEditUserMsgBox(userlist.row)" plain size="mini" type="primary" icon="el-icon-edit" circle></el-button>
                <el-button @click="showSetUserRoleDia(userlist.row)" plain size="mini" type="success" icon="el-icon-check" circle></el-button>
                <el-button @click="showDeleUserMsgBox(userlist.row.id)" plain size="mini" type="danger" icon="el-icon-delete" circle></el-button>
            </template>
        </el-table-column>
    </el-table>
    <!-- 分页 -->
    <el-pagination style="width:80px"
     @size-change="handleSizeChange" 
     @current-change="handleCurrentChange" 
     :current-page="pagenum" 
     :page-sizes="[2, 4, 6, 8]" 
     :page-size="pagesize" 
     layout="total, sizes, prev, pager, next, jumper" 
     :total="total">
    </el-pagination>
</el-card>
</template>

<script>
//引入element-tree-grid
var ElTreeGrid = require('element-tree-grid');
export default {
    name: 'goodscate',
    components:{
        ElTreeGrid
    },
    data() {
        return {
            form:{
                cat_pid:'',
                cat_name:'',
                cat_level:-1,
            },
            dialogFormVisibleAdd:false,
            value:[],
            options:[],
            list:[],
            pagenum:1,
            pagesize:2,
            total:-1,
        }
    },
    created(){
        this.getGoodsCate()
    },
    methods:{
        // 添加分类-显示对话框
      addGoodsCate(){
          //获取二级分类
          this.$http.get(`categories?type=2`).then(res=>{
            //   console.log(res);
              res.data.data.forEach(element => {
                  element.value=element.cat_id
                  element.label=element.cat_name
                  if(element.children){
                       element.children.forEach(element1 => {
                                element1.value=element1.cat_id
                                element1.label=element1.cat_name
                            // console.log(element1);
                            if(element1.children){
                                element1.children.forEach(element2 => {
                                    // console.log(element2);
                                    element2.value=element2.cat_id
                                    element2.label=element2.cat_name
                                });
                            }
                            
                        });
                  }
                   
              });
              this.options=res.data.data
            //   console.log(this.options);
              
          })
          this.dialogFormVisibleAdd=true
      },
      //获取所有分类
      getGoodsCate(){
          this.$http.get(`categories?type=3&pagenum=${this.pagenum}&pagesize=${this.pagesize}`).then(res=>{
            //   console.log(res);
              this.list=res.data.data.result
              this.total=res.data.data.total
          })
      },
      handleChange(){

      },
      //添加分类-发送请求
      addCate(){
          //三种情况
        //   1.一级分类
        // 2.二级分类
        // 3.三级分类
        if(this.value.length==0){
            this.form.cat_pid=0
            this.form.cat_level=0
        }
        else if(this.value.length==1){
            this.form.cat_pid=this.value[0]
            this.form.cat_level=1
        }
        else if(this.value.length==2){
            this.form.cat_pid=this.value[1]
            this.form.cat_level=2
        }
          this.$http.post(`categories`,this.form).then(res=>{
              console.log(res);
              this.$message.success(res.data.meta.msg)
              this.dialogFormVisibleAdd=false
                this.getGoodsCate()
          })
      },
      showEditUserMsgBox(){

      },
       showSetUserRoleDia(){

       },
      showDeleUserMsgBox(){

      },
      //分页相关的方法
      handleSizeChange(val){
          this.pagesize=val
          this.pagenum=1
          this.getGoodsCate()
      },
      handleCurrentChange(val){
           this.pagenum=val
           this.getGoodsCate()
      },
    }

}
</script>

<style  scoped>

</style>
