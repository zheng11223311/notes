/**
 * Author：叁玖
 * Explain ：本地图片链接化
 * @path ：本地图片的绝对地址
 */

let url = pictureUrl("/sdcard/脚本/index.png")
console.log("转换后的链接为：" + url)

function pictureUrl(path) {
    return qrcode = http.postMultipart("http://pic.sogou.com/pic/upload_pic.jsp", {
        "file": open(path),
    }).body.string();
}