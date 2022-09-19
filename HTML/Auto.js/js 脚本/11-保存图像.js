
var img = images.load("https://i2.hdslb.com/bfs/face/38415d3e45f4b85f5ae8675687ae6751f2456b11.jpg@45w_45h_1c_100q.webp");

toast('获取图片');

// img.saveTo("/storage/emulated/0/1.png")
//100 为完整的质量
// png 与jpg  不一致时,显示的还是前面填的,但是jpg 属性会导致图片
// 背景变黑,因为jpg 不支持多色彩,以黑白填充
images.save(img,"/storage/emulated/0/2.png",'jpg',100)

img.recycle();