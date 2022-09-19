/**
 * 功能:随机时间内，阅读抖音作品评论内容，根据概率触发是否评论改作品。
 * 流程:点击评论按钮，读取总评论数，总评论数符合要求执行下一步，获取阅读时间(随机)，遍历当前评论页并获取内容，根据概率触发决定是否评论该作品，程序结束或者处理评论内容加表情提交评论
 * 说明:这是一个单独针对抖音评论养号的函数，支持推荐页养号时操作评论养号，单独测试时请打开抖音app，处于推荐页时运行该脚本。关注页需要兼容直播或者其他情况，按需自加。
 * 
 * 测试设备:小米4，小米6X，小米8 
 * 安卓版本: 6.01, 9, 10;
 * 抖音版本:12.2.0
 * autojs版本: 4.1.1 Alpha2  ||pro 版需要打包才能有效；
 * 编写时间:2020-8-16  14:32:54
 * QQ交流群:4607221
 * 
 * 叁玖
 */


/**配置项 */
let arrTime = [15, 30]//阅读评论的时间范围，单位秒，范围内随机生成;
let probabi = 100;//触发评论作品的概率，0==不评论，10==有10%的概率会评论，100==100%会评论;
let delyTime = [1.5, 3]//阅读评论时下滑时间间隔，单位秒，范围内随机生成;手机配置越低，数值越大，当前为小米4配置适用的参数
let sizeNum = 100;//当作品评论总数小于该数时，不执行概率性评论事件
let wordNum = 8;//当触发评论时，评论的内容长度最低为该值，也就是至少有8个汉字或以上

console.show(), sleep(200);//显示控制台

/***调用函数 */
commentTask(arrTime, probabi, delyTime, sizeNum, wordNum, [])//调用函数

//commentTask([15, 30], 100, [1.5, 3], 100, 8,[]);



/**函数体 */
/**
 * @param {函数名}  commentTask  包含阅读评论内容，以及对作品进行评论的功能
 * @param {容器} comment 空数组
 */

function commentTask(browseTime, probabilityComment, delyTime, sizeNum, wordNum, comment) {
    let 随机表情 = function () {
        表情集合 = ["[鼓掌]", "[666]", "[赞]", "[呲牙]", "[玫瑰]", "[可爱]", "[机智]", "[送心]", "[小鼓掌]", "[比心]", "[给力]", "[憨笑]", "[耶]", "[微笑]", "[笑哭]", "[捂脸]"];
        return 表情集合[random(0, (表情集合.length - 1))].repeat(random(1, 4));
    }
    probabilityComment = probabilityComment || 0;//默认不开启评论
    if (function (tiemOne) {
        //可以增加一个直播判断
        let buton = descMatches(/^评论[^,]+$/).boundsInside(0, 300, device.width, device.height - 300).findOne(6 * 1000);
        if (!buton) return console.error("未发现评论按钮控件,跳过") || false;
        clickTap([buton.bounds().centerX() + random(-10, 10), buton.bounds().centerY() + random(-40, -5)]), console.log("正在打开评论页，并检测页面特征");
        while (true) {
            let two = textMatches(/^\d+(.*|\d|w)\s条评论$/).findOne(500)
            let three = className("android.widget.TextView").text("暂无评论").findOne(500)
            if (two || three) if (boundary(two || three)) return console.info("评论页已展开") || true;
            if (thanTime() > tiemOne - 25) if (text("留下你的精彩评论吧").findOne(500)) clickTap([device.width / 2 + random(-50, 50), (device.height - device.height / 2) + random(100, 200)])
            if (thanTime() > tiemOne) return console.error("跳转评论页检测超时，跳过") || false;
        }

    }(thanTime(30)) !== true) return false;

    let getTexts = function () {
        let v = "androidx.recyclerview.widget.RecyclerView"
        let s = className(v).boundsInside(0, 0, device.width, device.height).find();
        let format = function (contorl) {
            let lace = /(?:(回复\s*[^:：]+)|(?:@[^ ]+)|(刚刚|\d+(小时|分钟|天)前|昨天([01]\d+|2[0-3]):\d+|\d+-\d+))( |：|:)?/g;
            return contorl.replace(lace, "");
        };
        let Repeat = function (contorl) {
            for (let indx = 0; indx < comment.length; indx++)if (contorl == comment[indx]) return false;
            return true;
        }
        for (let indx = 0; indx < s.length; indx++) {
            if (s[indx].bounds().left == 0) {
                let zOne = s[indx].find(className("android.widget.FrameLayout"));
                for (let inda = 0; inda < zOne.length; inda++) {
                    let zTwo = zOne[inda].find(className("android.widget.TextView"))
                    if (zTwo[1]) {
                        let textnum = format(zTwo[1].text())//格式化
                        if (Repeat(textnum)) comment.push(textnum);
                    }
                }
            }
        }
    }
    let zContorl = function (tiemOne) {//提取评论总数
        while (true) {
            let num = textMatches(/^\d+(.*|\d|w)\s条评论$/).findOne(1000);
            if (num) {
                let txt = num.text();
                if (txt.indexOf("w") != -1) return num;
                if (txt.replace(/\s条评论/g, "") > sizeNum) return num;
                return console.log("该作品评论总数不符合条件，跳过;");
            }
            if (thanTime() > tiemOne) return console.error("获取评论总数失败，疑似该作品无评论") || false;
        }
    }(thanTime(6))
    if (!zContorl) return false;//评论数不足或无评论，取消该次任务
    let topY = zContorl.parent().bounds().top;
    let buttomY = zContorl.parent().bounds().bottom;
    let time = random(browseTime[0], browseTime[1])
    let tiemOne = thanTime(time);
    console.info("将阅读" + time + "秒评论内容")
    while (thanTime() < tiemOne) getTexts(), rootSwipe([device.width / 2, buttomY - 200], [device.width / 2 + 200, topY]), sleep(random(delyTime[0], delyTime[1]));
    console.info("阅读评论结束");

    if (probablility(probabilityComment) == false) return false;

    console.info("触发对当前作品进行评论")
    let munP = function (control, arr) {
        for (let indx = 0; indx < control.length; indx++) if (control[indx].length > wordNum) arr.push(control[indx]);
        if (arr.length > 0) return arr[arr.length - 1];
        return console.error("未挑选到合适评论语句，跳过当前评论任务");
    }
    return function () {//设置评论
        let editText = text("留下你的精彩评论吧").findOne(3000);
        if (!editText) return console.error("获取输入框控件失败，跳过") || false;
        let d = editText.bounds()
        clickTap([d.centerX() + random(-50, 100), d.centerY() + random(-10, 10)]);
        let trueAndFalse = function (tiemOne) {
            let tiemOne = thanTime(30);
            while (true) {
                let t = text("留下你的精彩评论吧").findOne(1000);
                if (t) {
                    if (t.bounds().bottom < d.bottom) {
                        let textOk = munP(comment, []);
                        if (textOk === false) return false;
                        let QAQ = 随机表情()
                        while (true) {
                            setText(0, textOk + QAQ), sleep(1000);//评论语句
                            if (textContains(textOk).findOne(200)) return [t, textOk + QAQ];//返回控件以及控件文本
                            if (thanTime() > tiemOne) break;
                        }
                    } else sleep(1000);
                }
                if (thanTime() > tiemOne) return console.error("设置评论到输入框超时或检测超时，跳过") || false;
            }
        }(thanTime(30));
        log("已设置内容到输入框，正在发表评论...")
        if (!trueAndFalse) return false;
        return function (tiemOne) {//提交
            let f = trueAndFalse[0].parent().find(className("android.widget.ImageView"));
            while (true) {
                if (f.length > 0) if (f[2]) clickTap([f[2].bounds().centerX() + random(-10, 10), f[2].bounds().centerY() + random(-10, 10)]);
                if (text(trueAndFalse[1] + " 刚刚").findOne(6000)) return console.log("评论发表成功") || true;
                if (thanTime() > tiemOne) return console.error("检测发表评论有效性超时，跳过") || false;
                sleep(random(800, 1200))
            }
        }(thanTime(30))

    }()
}




function clickTap(arr) {
    if (device.sdkInt > 24 || device.sdkInt == 24) {
        return click(arr[0], arr[1]);
    } else {
        return Tap(arr[0], arr[1])
    }
}
function thanTime(time) {
    return Date.parse(new Date()) / 1000 + parseInt((time || 0))
}
function probablility(num) {//概率
    return random(1, 100) < (num + 1) ? true : false;
}
function rootSwipe(startXY, endXY) {
    x1 = startXY[0] + random(-100, 100)
    y1 = startXY[1] + random(-100, -10)
    x2 = endXY[0] + random(-30, 150)
    y2 = endXY[1] + random(10, 60)
    if (device.sdkInt > 24 || device.sdkInt == 24) {
        swipe(x1, y1, x2, y2, random(500, 1200))
    } else {
        Swipe(x1, y1, x2, y2, random(500, 1200))
    }
}

function boundary(control) {
    if (control) {
        let bound = control.bounds(), oneLeft = bound.left, twoTop = bound.top, therrWidth = bound.width(), fourHeight = bound.height();
        return oneLeft > -1 && twoTop > -1 && therrWidth > -1 && fourHeight > -1 ? true : false;
    }
}