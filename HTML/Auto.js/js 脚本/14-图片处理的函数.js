var img=images.read('/storage/emulated/0/1.png')
// 宽高 
// var resize=images.resize(img,[200,200])

// resize.saveTo("/storage/emulated/0/调整1.png")

var scale=images.scale(img,0.5,0.5)
scale.saveTo("/storage/emulated/0/缩放.png")