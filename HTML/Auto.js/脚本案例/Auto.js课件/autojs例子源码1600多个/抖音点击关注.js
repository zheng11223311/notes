/*
 * @Author: 叁玖
 * @Date: 2020-3-1 2:25:42
 * @LastEditors: 7513241.qq.com
 * @Explain：单纯抖音界面点击关注，相对新人来讲，理解透了对布局认识会有所提升；
 */

点击关注()
function 点击关注() {
    var cick;
    cick_gu = () => {
        //非直播的情况下
        cla = "android.widget.ImageView"
        clas = "android.widget.Button"
        Vxl = className(cla).boundsInside(0, 300, device.width, device.height - 350).find(); //返回控件集合
        for (let ter = 0; ter < Vxl.length; ter++) {//遍历控件
            let dsc = Vxl[ter].desc()//获取当前控件文本
            if (dsc) {
                if ((dsc.indexOf("喜欢") < 1) && (dsc.indexOf("视频") < 1) && (dsc.indexOf("感兴趣的人") < 1) && (dsc.indexOf("按钮") < 1) && (dsc.indexOf("广告") < 1)) {//排除不相干的控件
                    fu = Vxl[ter].parent()//取父控件
                    zi = fu.find(className(cla))//在父控件下面取button按钮控件集合
                    if (zi.length == 3 || zi.length == 2) return cick = zi[0].bounds()//当集合控件数量为2或者3时，获取第一个控件的屏幕范围值。
                }
            }
        }
        //直播的情况下
        if (!cick) {
            Vel = className(clas).boundsInside(0, 300, device.width, device.height - 350).find(); //查找控件
            for (let ter = 0; ter < Vel.length; ter++) {
                let dsc = Vel[ter].desc()
                if (dsc) {
                    if ((dsc.indexOf("喜欢") < 1) && (dsc.indexOf("视频") < 1) && (dsc.indexOf("感兴趣的人") < 1) && (dsc.indexOf("按钮") < 1)) {
                        if (dsc != "关注") {
                            fu = Vel[ter].parent()
                            zi = fu.find(className(cla))
                            if (zi.length == 3 || zi.length == 2) return cick = zi[0].bounds()
                        }
                    }

                }
            }
        }
        return false;
    }

    var Record = 0, t=10  //已关注数量|需要关注数量
    toastLog("当前关注任务数量："+t+"个")


    sleep(1000)
    while (1) {
        let kui = cick_gu()
        if (kui != false) {
            let ti = kui.left;
            let tu = kui.top;
            if (ti > 0 && tu > 0) {//判断边界不为负
                click(cick.centerX(), cick.centerY())
                Record += 1
                toastLog("已关注" + Record + "个")
                if (Record == t) {//自定义关注多少个(有效关注)
                    toastLog("关注任务执行完毕")
                    break;
                }
                swipe(800, 1500, 800, 250, 800);
                
            }else{
                toastLog("边界为负数，重新获取控件");
                
            }
        } else {
            toastLog("疑似广告或已关注");
            swipe(800, 1500, 800, 250, 800);
        }
    }
}

