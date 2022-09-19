// alert("您好");
// var clear = confirm("要清除所有缓存吗?");
// if(clear){
//     alert("清除成功!");
// }


"ui";
//回调形式
//  confirm("要清除所有缓存吗?", function(clear){
//      if(clear){
//           alert("清除成功!");
//      }
//  });
//Promise形式
// confirm("要清除所有缓存吗?")
//     .then(clear => {
//         if(clear){
//           alert("清除成功!");
//         }
//     });


// "ui";
// alert("嘿嘿嘿").then(()=>{
//     //当点击确定后会执行这里
// });


// "ui";
// confirm("确定吗").then(value=>{
//     //当点击确定后会执行这里, value为true或false, 表示点击"确定"或"取消"
// });

// var name = rawInput("请输入您的名字", "小明");
// name.then((name)=>{
//     alert("您的名字是" + name);
6
// })

// "ui";
// rawInput("请输入您的名字", "小明").then(name => {
//     alert("您的名字是" + name);
// });

// rawInput("请输入您的名字", "小明", name => {
//     alert("您的名字是" + name);
// });


// var city = "广州";
// var res = http.get("http://www.sojson.com/open/api/weather/json.shtml?city=" + city);
// if(res.statusCode != 200){
//     toast("请求失败: " + res.statusCode + " " + res.statusMessage);
// }else{
//     var weather = res.body.json();
//     log(weather);
//     toast(util.format("温度: %s 湿度: %s 空气质量: %s", weather.data.wendu,
//         weather.data.shidu, weather.quality));
// }

