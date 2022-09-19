
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

console.show()
console.log("autojs交流群,脚本代码还原,代码分享,脚本定制！\n1群:168196007 \n2群:830810438 \n3群:571854376 \n4群:637321947")
console.log("\n\n\n您可以在此源码中关闭这个广告!")
auto.waitFor()
device.keepScreenOn()
console.show()

var username = "15960969977"
console.warn("当前小龙虾账号："+username)
var password = "xxj201314"
var taskCount = 1
var money = 0.0
var _time = random(5600, 6800)
var cookie = getCookie(username, password)
var click_width = device.width / 2
var click_height = device.height / 2
//console.info("设备分辨率"+device.width+"*"+device.height)
//console.info(getMyMoney(cookie))
//oncedouyin();
console.info("今日已点赞："+getZan(cookie))
launchApp("抖音短视频")
noad
while (true) {
    try {
        if (cookie == null) {
            sleep(2000)
            continue
        }

        var tasks = getTaskList(cookie)
        if (tasks == null) {
            console.verbose("没有任务，刷新")
            sleep(2000)
            continue
        }
        // console.info(tasks)

        tasks.forEach(t => {

            if (sumitTask(t, cookie)) {
                var id = getDouyinId(t, cookie)
                if (id != null) {
                    noad()
                    doit(t, id, cookie)
                    noad()
                    log("任务%d完成", taskCount++)
                    money += parseFloat(t.price)
                    getMyMoney(cookie)
                    check_task_record(cookie)
                    
                }
            }
            sleep(1000)
        });

        sleep(1000)

    } catch (e) {
        //console.error("发生错误:\n" + e)
        sleep(2000)
        continue
    }

}


function getCookie(username, password) {
    var response = http.post("http://tg.bigyouxuan.com/tg/Login/in", {
        "username": username,
        "password": password
    })
    if (response.statusCode == 200) {
        let json = response.body.json()
        if (json.code == 0)
            return response.headers["set-cookie"].split(";")[0]
        else {
            error(json.msg)
            return null
        }
    }
}

function getZan(cookie) {
    var response = http.get("http://tg.bigyouxuan.com/tg/DouYin/tj", {
        "headers": {
            "Cookie": cookie
        }
    })
    if (response.statusCode = 200) {
        var json = response.body.json()
        if (json.code == 0) {
            return json.result.zan;
        } else {
            return null
            // console.error()
        }
    } else return null
}

function getTaskList(cookie) {
    var response = http.get("http://tg.bigyouxuan.com/tg/DouYin/taskList?tp=0", {
        "headers": {
            "Cookie": cookie
        }
    })

    if (response.statusCode == 200) {
        var json = response.body.json()
        if (json.code == 0) {
            if (json.result.dataList.length > 0)
                return json.result.dataList
            else {
                //console.verbose("没有任务")
                return null
            }
        } else {
            return null
        }
    } else return null

}

function getDouyinId(task, cookie) {
    var response = http.get("http://tg.bigyouxuan.com/tg/DouYin/getTaskData?id=" + task.id, {
        "headers": {
            "Cookie": cookie
        }
    })
    if (response.statusCode = 200) {
        var json = response.body.json()
        if (json.code == 0) {
            return json.result.id;
        } else {
            return null
            //console.error()
        }
    } else return null

}

function sumitTask(task, cookie) {
    var response = http.get("http://tg.bigyouxuan.com/tg/DouYin/copyTaskData?id=" + task.id, {
        "headers": {
            "Cookie": cookie
        }
    })

    if (response.statusCode == 200) {
        var json = response.body.json()
        if (json.code == 0) {
            return true
        } else {
            console.info(json.msg)
            return false
        }
    } else return false

}

function doit(task, douyinId, cookie) {
    device.setMusicVolume(0)
    var width = device.width
    var height = device.height
    app.startActivity({
        action: "android.intent.action.VIEW",
        data: "snssdk1128://aweme/detail/" + douyinId,
        packageName: "com.ss.android.ugc.aweme",
    });

    waitForPackage("com.ss.android.ugc.aweme")
    //className("EditText").findOne()
    
    switch (task.tps) {
        case "点赞":
            noad()
            sleep(_time)
            press(click_width, click_height, 1)
            sleep(80)
            press(click_width, click_height, 1)
            sleep(1500)
            back();
            //sleep(500);
            //press(click_width, click_height, 1)
            break;
        
        default:
            break
    }
}

function getMyMoney(cookie) {
    var html = http.get("http://tg.bigyouxuan.com/tg/Home/tx", {
        "headers": {
            "Cookie": cookie
        }
    }).body.string()
    var money = html.substring(html.indexOf("可提:<span style=\"color:#fb9511;margin-left:2px;\">"), 
        html.indexOf("<span style=\"font-size:10px\">元</span></span></div>")).split(";\">")[1]
    var left = html.substring(html.indexOf("余额:<span style=\"color:#fb9511;margin-left:2px;margin-right:8px\">"), 
        html.indexOf("<span style=\"font-size:10px\">元</span></span>可提")).split("px\">")[1]
    log("余额: " + left + " 可提现: " + money)
}

function check_task_record(cookie) {
    var unvalid_count = 0
    var ok_count = 0
    var waiting_count = 0
    var response = http.get("http://tg.bigyouxuan.com/tg/DouYin/taskRecordList?tp=0&lastId=0", {
        "headers": {
            "Cookie": cookie
        }
    })
    if (response.statusCode == 200) {
        var json = response.body.json()
        if (json.code == 0) {
            json.result.dataList.forEach(t => {
                if (t.stateDesc == "已结算")
                    ok_count++
                if (t.stateDesc == "审失败")
                    unvalid_count++
                if (t.stateDesc == "待审核")
                    waiting_count++
            })
            log("结算: " + ok_count + ", 失败: " + unvalid_count + ", 审核中: " + waiting_count)
            if (unvalid_count > 6) {
                console.error("已经连续6个任务审核失败，请注意")
                //exit()
                return false
            } else
                return true
        } else return true
    }
}

function noad() {
    if (id("xn").exists()) {
        id("xn").findOne(50).click();
    }
    if (text("跳过").exists()) {
        click("跳过");
    }
    if (text("跳过广告").exists()) {
        click("跳过广告");
    }
    if (text("取消").exists()) {
        click("取消");
    }
    if (text("以后再说").exists()) {
        click("以后再说");
    }
}

function oncedouyin() {
    launchApp("抖音短视频")
    waitForPackage("com.ss.android.ugc.aweme")
    sleep(2000)
    noad()
    sleep(500)
    className("FrameLayout").depth(10).drawingOrder(6).findOne(1000).click();
    sleep(500);
    className("TextView").depth(15).drawingOrder(1).findOne(2000).click();
    var follow = id("ai").findOnce(1).text()
    toastLog("当前" + getClip() + follow);
    sleep(1000);
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
