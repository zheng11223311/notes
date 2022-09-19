<template>
<el-card>
     <!-- 面包屑 -->
    <my-bread level1="商品管理" level2="分类参数"></my-bread>
     <el-alert
     style="margin-top:20px"
     v-if="msg!=''"
        :title="msg"
        show-icon
        center
        type="error">
    </el-alert>
      <!-- 最外层是el-form -->
    <el-form
     style="height: 400px;margin-top:20px;overflow:auto;text-align:left"
     label-position="left"
      label-width="80px" 
      >
        <el-form-item label="商品分类">
            <!-- 级联选择器 -->
            <el-cascader
                v-model="value"
                clearable=""
                :show-all-levels="false"
                :options="options"
                :props="{ expandTrigger: 'hover' }"
                @change="handleChange"></el-cascader>
        </el-form-item>
    </el-form>

 <el-tabs 
 style="text-align:left"
    @tab-click="handleClick()"
    v-model="active"
    :tab-position="tabPosition" 
    >
    <el-tab-pane name="1" label="动态参数">
      <!-- 按钮 -->
      <el-button type="success">设置动态参数</el-button>
      <!-- 表格 -->
    <el-table
     :data="arrDyparams"
     style="width: 100%">
        <el-table-column type="expand" label="#">
            <template slot-scope="scope">
                <el-tag
                    :key="tag"
                    v-for="tag in scope.row.attr_vals"
                    closable
                    :disable-transitions="false"
                    @close="handleClose(scope.row,tag)">
                    {{tag}}
                    </el-tag>
                    <el-input
                    class="input-new-tag"
                    v-if="inputVisible"
                    v-model="inputValue"
                    ref="saveTagInput"
                    size="small"
                    @keyup.enter.native="handleInputConfirm(scope.row)"
                    @blur="handleInputConfirm(scope.row)"
                    >
                </el-input>
                <el-button v-else class="button-new-tag" size="small" @click="showInput">+ New Tag</el-button>
            </template>
        </el-table-column>
        <el-table-column label="属性名称" prop="attr_name"></el-table-column>
        <el-table-column  label="操作">
            <template slot-scope="scope">
                <el-button @click="showEditUserMsgBox(scope.row)" plain size="mini" type="primary" icon="el-icon-edit" circle></el-button>
                <el-button @click="showDeleUserMsgBox(scope.row.id)" plain size="mini" type="danger" icon="el-icon-delete" circle></el-button>
            </template>
        </el-table-column>
     </el-table>
    </el-tab-pane>
    <el-tab-pane  name="2" label="静态参数">
        <!-- 按钮 -->
      <el-button type="success">设置静态参数</el-button>
      <!-- 表格 -->
            <el-table
     :data="arrStaticparams"
     style="width: 100%">
        <el-table-column type="index" label="#"></el-table-column>
        <el-table-column label="属性名称" prop="attr_name"></el-table-column>
        <el-table-column label="属性值" prop="attr_vals"></el-table-column>
        <el-table-column  label="操作">
            <template slot-scope="scope">
                <el-button @click="showEditUserMsgBox(scope.row)" plain size="mini" type="primary" icon="el-icon-edit" circle></el-button>
                <el-button @click="showDeleUserMsgBox(scope.row.id)" plain size="mini" type="danger" icon="el-icon-delete" circle></el-button>
            </template>
        </el-table-column>
     </el-table>
    </el-tab-pane>

</el-tabs>
</el-card>
</template>

<script>
export default {
    name: 'cateparams',
    data() {
        return {
            msg:'',
             value:[],   //级联选择器绑定的数据
            options:[],
            arrDyparams:[],
            arrStaticparams:[],
            active:'1',
            tabPosition:'top',
            form:{},
            inputValue:'',
            inputVisible:false
        }
    },
     created(){
        this.getGoodsCate()
    },
    methods:{
      handleChange(){
          //级联选择器,改变状态
          if(this.value.length<1){
                this.msg="请先选择三级分类"
                return
        }   
        // console.log(this.value);
          this.$http.get(`categories/${this.value[this.value.length-1]}/attributes?sel=many`).then(res=>{
                // console.log(res);
                this.arrDyparams=res.data.data
                this.arrDyparams.forEach(item=>{
                    item.attr_vals=item.attr_vals.trim().split(',')
                })
                // console.log(this.arrDyparams);
                this.$message.success(res.data.meta.msg)
            })

      },
      //获取三级分类的商品
      getGoodsCate(){
          this.$http.get(`categories?type=3`).then(res=>{
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
      },
      //tab切换时触发
      handleClick(){
          //级联选择器,改变状态
          if(this.value.length<1){
                this.msg="请先选择三级分类"
                return
        }   
          this.$http.get(`categories/${this.value[this.value.length-1]}/attributes?sel=only`).then(res=>{
            console.log(res);
            this.arrStaticparams=res.data.data
            this.$message.success(res.data.meta.msg)
        })
      },
      showEditUserMsgBox(){

      },
      showDeleUserMsgBox(){

      },
      //点击x 按钮
       handleClose(scoped,tag) {
        scoped.attr_vals.splice(scoped.attr_vals.indexOf(tag), 1);
        //发送请求
        let putData={
            attr_name:scoped.attr_name,
            attr_sel:'many',
            attr_vals:scoped.attr_vals.join(','),
        }
        // console.log(putData);
        this.$http.put(`categories/${this.value[this.value.length-1]}/attributes/${scoped.attr_id}`,putData).then(res=>{
            // console.log(res);
            this.$message.success(res.data.meta.msg)
        })
      },
        //点击newtag 按钮
      showInput(scoped) {
        this.inputVisible = true;
        this.$nextTick(_ => {
          this.$refs.saveTagInput.$refs.input.focus();
        });
      },
    // 回车/失去焦点
      handleInputConfirm(scoped) {
        let inputValue = this.inputValue;
        if (inputValue) {
            scoped.attr_vals.push(inputValue);
            let putData={
            attr_name:scoped.attr_name,
            attr_sel:'many',
            attr_vals:scoped.attr_vals.join(','),
        }
        // console.log(scoped.attr_vals);
            this.$http.put(`categories/${this.value[this.value.length-1]}/attributes/${scoped.attr_id}`,putData).then(res=>{
            // console.log(res);
            this.$message.success(res.data.meta.msg)
        })
          
        }
        this.inputVisible = false;
        this.inputValue = '';
      }

    }

}
</script>

<style  scoped>

</style>
