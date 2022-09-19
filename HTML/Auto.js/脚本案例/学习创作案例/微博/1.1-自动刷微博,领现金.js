////手动设置兼容不同手机的比例  ////
//  1080 1920   1 0.8
// 1080 2400    1 1
function adaption(){
    let w = device.width
    let h = device.height
    // console.log(w,h);
    // 比例 ratio
    // 获取宽度比例 
    w_ratio=1080/w
    // 获取高度比例
    h_ratio=1920/h
    // 返回当前手机适配比例
    // console.log(w_ratio,h_ratio);
    return [w_ratio,h_ratio]
}

let W_H_ratio=adaption()
// console.log(W_H_ratio);
////手动设置兼容不同手机的比例  ////

app.launchApp('微博')