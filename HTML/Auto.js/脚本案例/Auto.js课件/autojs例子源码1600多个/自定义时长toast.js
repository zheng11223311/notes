/*
 * @Author: 大柒
 * @QQ: 531310591@qq.com
 * @Date: 2020-01-14 12:47:47
 * @Version: Auto.Js Pro
 * @Description: 
 * @LastEditors  : 大柒
 * @LastEditTime : 2020-01-14 13:07:28
 */
importClass(android.widget.Toast);
importClass(android.view.Gravity);

ToastShow("123456", 10000)

function ToastShow(str, time) {
    var mToast = Toast.makeText(context, str, Toast.LENGTH_LONG);
    mToast.show();
    var id = setInterval(() => {
        ui.run(()=>{
            mToast = Toast.makeText(context, str, Toast.LENGTH_LONG);
            mToast.show();
        });
    }, 3000);
    setTimeout(() => {
        log("toast结束")
        clearInterval(id);
        mToast.cancel();
    }, time);
};

