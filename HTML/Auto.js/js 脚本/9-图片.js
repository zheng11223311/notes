// 这里读取的是手机的图片,不是计算机的图片
// var img = images.read("/storage/emulated/0/1.jpeg");
// log(img)
// img.recycle();
//获取不到图片可能是
// 模拟器桥接错误,浏览器没有网络搜索,但是哔哩哔哩可以正常使用
// 桥接选择桥接有wifi 字样的选项
// 图片地址错误
// var img1 = images.load("https://images.pexels.com/photos/10023915/pexels-photo-10023915.jpeg");
// log(img1)
// 保存图片
// img1.saveTo('/storage/emulated/0/1.jpeg')  //保存在根目录下,并命名为1.jpeg
// img1.recycle();

var img = images.read("/storage/emulated/0/1.jpeg");
// var img1=images.copy(img)  copy 图片的数据流,保存时需要填写完整的路径
// img1.saveTo('/storage/emulated/0/2.jpeg')
img1.recycle();
img.recycle();