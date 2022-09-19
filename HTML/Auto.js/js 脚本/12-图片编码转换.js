
// base64 编码成一个txt 文本,传输块
// var img = images.load("https://i2.hdslb.com/bfs/face/38415d3e45f4b85f5ae8675687ae6751f2456b11.jpg@45w_45h_1c_100q.webp");
// toast('获取图片');
// // 编码成base64
// var dtaa=images.toBase64(img)
// // log(dtaa)
// // formBase64() 参数 编码后的图片数据
// var realimg=images.fromBase64(dtaa)
// realimg.saveTo("/storage/emulated/0/3.png")

// realimg.recycle();
// img.recycle();


// var res=http.get("https://i2.hdslb.com/bfs/face/38415d3e45f4b85f5ae8675687ae6751f2456b11.jpg@45w_45h_1c_100q.webp")
// // log(res)
// // log(res.body)
// // log(res.body.bytes())
// // 只能调用一次,一次后就关闭字节流,再次调用res.body.bytes() 报错
// var b=res.body.bytes()
// var img=images.fromBytes(b)
// // images.toBytes(img)  转换成字节流
// img.saveTo("/storage/emulated/0/字节.png")

// img.recycle();

// 好像能跨域请求,因为不是在浏览器上执行,没有同源策略的限制
var res1=http.get("https://www.bilibili.com/video/BV1pQ4y1R7Us?p=32&spm_id_from=pageDriver")
log(res1.body.string())

  