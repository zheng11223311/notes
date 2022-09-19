/**
 * 判断是否翻页到底；
 * 三刀 (autojsQQ群：4607221)
 * 思路：提取当前页面文字，存数组，判断是否有新增，连续翻页两次无新增时为翻页到底，下面的代码在支付宝通讯录页面开发，其他页面自行适配；
 */

function 翻页到底判断() {
    AllText = [];
    count = 0;
    coter = 0;
    getBottm = () => {
        v = "android.widget.TextView";
        x = "android.view.View";
        t = [];//存放文字的数组

        /**是否新增 */
        Repert = function (getText) {
            for (let indx = 0; indx < AllText.length; indx++)if (getText == AllText[indx]) return true;
            if (AllText.length == 0) return false;
            return false;
        }
        /**提取文字 */
        getAllText = function (allText) {
            if (allText.length > 0) {
                for (let indx = 0; indx < allText.length; indx++) {
                    let txt = allText[indx].desc() || allText[indx].text()
                    if (txt != "" && txt != null && txt != undefined && /[一-龥]+/.test(txt)) {
                        if (Repert(txt) == false) {
                            AllText.push(txt), coter = 0;//有新增存存数组，并初始化无新增时的值；
                        } else {
                            coter = 1;//无新增时的值
                        }
                    }
                }
            }
        }
        let wt = className(v).boundsInside(0, 220, device.width, device.height - 220).find()
        getAllText(wt);
        log(wt.length)
        let vv = className(x).boundsInside(0, 220, device.width, device.height - 220).find()
        getAllText(vv);
        return coter == 0 ? true : false;
    }

    while (1) {
        主功能函数()//这里放遍历时要处理的功能函数

        swp = () => swipe(device.width / 2 + random(-200, 200), device.height - 450 + random(-50, 100), device.width / 2 + random(-200, 200), random(350, 450), random(500, 700));//翻页
        let botm = getBottm()
        if (botm) count = 0, swp();//页面文字有新增时，初始化无新增记录，并执行翻页；
        if (!botm) count += 1, swp();//页面文字无新增时，记录次数并执行翻页；
        if (count > 1) return toastLog("该页面已滑动到底");//连续3次未检测到页面新增文字时判断滑动到底
    }

}

function 主功能函数() {
    //这里放主功能代码；
    console.log("执行了主功能代码");

}

翻页到底判断()