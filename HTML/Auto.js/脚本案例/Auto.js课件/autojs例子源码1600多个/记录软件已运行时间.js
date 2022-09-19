/*
 * @Author: 叁玖
 * @Date: 2020-04-2 8:05:42
 * @ContactInformation: 7513241.qq.com
 * @Explain: 记录软件运行时间，支持记录当天的运行时长，北京时间超过23小时59分59秒后，记录呈负；
 * @-------：首次运行的第一分钟计秒有误差，误差秒数为 60-初始记录秒数=误差秒，从第二分钟开始正常；
 */

let Data = new Date() //js原生构造函数(对象)
let time = [Data.getHours(), Data.getMinutes(), Data.getSeconds()] //记录初始时，分，秒。

for (let i = 0; i < 100; i++) {
    sleep(1000) //循环暂停1秒
    diffTime(time[0], time[1], time[2])//传入初始记录的时、分、秒
}
toastLog("测试结束")


function diffTime(t, m, s) {
    let timeData = new Date()
    let time = [timeData.getHours(), timeData.getMinutes(), timeData.getSeconds()]
    let time_s1 = t * 60 * 60 + m * 60
    let time_s2 = time[0] * 60 * 60 + time[1] * 60
    let timeOer = [((time_s2 - time_s1) / 60) % 60, Math.floor((time_s2 - time_s1) / 60 / 60)]
    let tieme_min = timeOer[0] > 0 || timeOer[1] > 0 ? time[2] : time[2] - s;
    return console.log(">> 软件已运行" + timeOer[1] + "小时" + timeOer[0] + "分" + tieme_min + "秒")
};