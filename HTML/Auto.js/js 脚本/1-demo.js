toast("autojs 初体验");
sleep(1);

// shell 交互,需要root 权限,可以查看手机是否有root 权限
var result = shell("am force-stop com.tencent.mm", true);
log(result);
console.show();
if(result.code == 0){
toast("执行成功");
}else{
toast("执行失败！请到控制台查看错误信息");
}