
function a() {
    var sum = 0;
    while (true) {
        setTimeout(click(505, 505), 2500)
        sum++
        toastLog("共点击" + sum + "次")
        if (sum == 10) {
            exit()
        }
    }
}
try {
    a()
} catch (err) {
    //后续执行的代码
    toastLog("闪亮登场")
}