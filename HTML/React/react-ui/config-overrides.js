//配置具体的修改规则
const {override,fixBabelImports}=require('customize-cra')

//module.export=function override(config，env){
//	return config	
//}
module.exports=override(
	fixBabelImports('import',{      //按需引入import
        libraryName:'antd',     //需要按需引入的库
        libraryDirectory:'es',  //使用es 模块化规范
        style:'css',        //按需引入是css 文件
    })
)