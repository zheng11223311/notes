
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";//nautojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！\n1群:168196007\n2群:830810438\n3群:571854376\n4群:63732194\n5群:592916456
uimain()
ui.h1.visibility = 8
ui.h.visibility = 0
function uimain() {
  var color = "#009688";
  ui.layout(

    <drawer id="drawer">
      <vertical>
        <appbar>
          <toolbar id="toolbar" title="奥力给-集卡帮" bg="#000000" />
          <tabs id="tabs" bg="#000000" />
        </appbar>
        <viewpager id="viewpager">
          <frame>
            <vertical id="h">
              <ScrollView paddingBottom="10">
                <vertical>
                  <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" padding="8 8 8 8" textSize="15sp" />
                  {/* <linear>
                      <text text="抖音主页链接" marginLeft="16" />
                      <input id="dyurl" w="*" marginLeft="5" textSize="12"/>
                    </linear> */}
                  <linear id="延迟观看设置">
                    <text text="延迟" marginLeft="16" />
                    <input id="延迟时间a" w="auto" marginLeft="5" textSize="12" text="3" />
                    <text text="到" marginLeft="16" />
                    <input id="延迟时间b" w="auto" marginLeft="5" textSize="12" text="5" />
                    <text text="秒" marginLeft="16" />
                  </linear>
                </vertical>
              </ScrollView>
            </vertical>
            <button id="start" bg="#000000" layout_gravity="bottom" w="*" h="auto" text="开始任务/音量减键停止脚本  " textColor="#ffffff" />
            <vertical id="h1">
              <text text="日志信息" w="*" gravity="center" textSize="20sp" />
              <com.stardust.autojs.core.console.ConsoleView id="console" h="*" />
            </vertical>
          </frame>
          <frame>
          </frame>
          <frame>
            <text text="有问题群里咨询" textColor="red" textSize="16sp" />
          </frame>
        </viewpager>
      </vertical>
    </drawer>
  );
}
activity.setSupportActionBar(ui.toolbar);
//设置滑动页面的标题
ui.viewpager.setTitles(["首页", "日志", "帮助"]);
//让滑动页面和标签栏联动
ui.tabs.setupWithViewPager(ui.viewpager);
ui.console.setConsole(runtime.console);
// 设置控制台字体颜色
let c = new android.util.SparseArray();
let Log = android.util.Log;
c.put(Log.VERBOSE, new java.lang.Integer(colors.parseColor("#dfc0c0c0")));
c.put(Log.DEBUG, new java.lang.Integer(colors.parseColor("#cc000000")));
c.put(Log.INFO, new java.lang.Integer(colors.parseColor("#ff64dd17")));
c.put(Log.WARN, new java.lang.Integer(colors.parseColor("#ff2962ff")));
c.put(Log.ERROR, new java.lang.Integer(colors.parseColor("#ffd50000")));
c.put(Log.ASSERT, new java.lang.Integer(colors.parseColor("#ffff534e")));
ui.console.setColors(c);
ui.autoService.on("check", function (checked) {
  if (checked && auto.service == null) {
    app.startActivity({
      action: "android.settings.ACCESSIBILITY_SETTINGS"
    });
  }
  if (!checked && auto.service != null) {
    auto.service.disableSelf();
  }
});
// 当用户回到本界面时，resume事件会被触发
ui.emitter.on("resume", function () {
  // 此时根据无障碍服务的开启情况，同步开关的状态
  ui.autoService.checked = auto.service != null;
});
var 安卓版本=Number(device.release.substring(0,1))
var x = device.width;
var y = device.height;
var 无效count = 0
var 抖音前id = "";
var 截图权限 = false
抖音url = ""
var 点赞状态 = false
var 模式 = false
var 延迟timeA = Number(ui.延迟时间a.text())
var 延迟timeB = Number(ui.延迟时间b.text())
ui.start.on("click", () => {
  threads.shutDownAll()
  if (ui.h.visibility == 8) {
    ui.start.setText("开始任务/音量减键停止脚本")
    ui.h1.visibility = 8
    ui.h.visibility = 0
    threads.shutDownAll()
    return
  }
  ui.h.visibility = 8
  ui.h1.visibility = 0
  ui.start.setText("返回设置页面/并停止脚本")
  toast("音量减键停止脚本")
  //程序开始运行之前判断无障碍服务
  // if (ui.dyurl.text() == "") {
  //   toast("请填写抖音链接")
  //   return
  // }
  if (auto.service == null) {
    toast("请先开启无障碍服务！");
    return;
  }
  threads.start(function () {

    console.show()
    console.log("开始")
    main()
    //监听音量上键按下
  });
  events.observeKey();
  events.onKeyDown("volume_down", function (event) {
    threads.shutDownAll()
    floaty.closeAll()
    toast("脚本停止");
    console.log("脚本停止");
  });
});
function main() {
  try {
    log("检测更新中")
    var qunhao
    var gengxin
    var r = http.get("https://www.jianshu.com/p/21fde90515b1", {
    });
    var xin = r.body.string()
    qunhao = subStringOne(xin, "群号", "群号a")
    gengxin = subStringOne(xin, "a更新", "更新a")
    if (Number(gengxin) == 1) {

    } else {
      var bo = confirm("软件已更新,加群")
      加群(qunhao)
      exit()
    }
    log("检测完毕,开始登入")
  } catch (err) {
    confirm("未知错误" + err)
    exit()
  }
  // 抖音url = ui.dyurl.text()
  // try {
  //   抖音url = 抖音url.replace("在抖音，记录美好生活！", "")
  //   抖音url = 抖音url.replace(/\s*/g, "")
  //   importClass("java.net.HttpURLConnection");
  //   importClass("java.net.URL");
  //   var conn = new URL(抖音url).openConnection();
  //   conn.setInstanceFollowRedirects(false);
  //   conn.setConnectTimeout(5000);
  //   抖音url = conn.getHeaderField("Location");
  // } catch (err) {
  //   console.error("解析抖音信息失败" + err)
  //   return 9
  // }
  var packname = getPackageName("集卡帮")
  console.log("打开抖音短视频")
  app.launchApp("抖音短视频")
  sleep(8000)
  console.log("启动集卡帮-倒计时20秒")
  app.launchApp("集卡帮")
  sleep(20000)
  console.log("开始")
  延迟timeA = Number(ui.延迟时间a.text())
  延迟timeB = Number(ui.延迟时间b.text())
  auto.setWindowFilter((info) => {
    try {
      return info.getRoot().getPackageName() == packname
    } catch (e) {
      return true
    }
  })
  var 点赞任务 = className("android.widget.Button").textContains("点赞任务").findOne(5000)
  if (点赞任务 == null) {
    var 点赞任务 = className("android.widget.Button").descContains("点赞任").findOne(5000)
    if (点赞任务 == null) {
      console.error("该设备不适配")
      return 1
    } else {
      模式 = false
    }
  } else {
    模式 = true
  }
  while (1) {
    auto.setWindowFilter((info) => {
      try {
        return info.getRoot().getPackageName() == packname
      } catch (e) {
        return true
      }
    })

    if (模式) {
      var 点赞任务 = className("android.widget.Button").textContains("点赞任务").findOne(5000)

    } else {
      var 点赞任务 = className("android.widget.Button").descStartsWith("点赞任").findOne(5000)
    }
    if (点赞任务 != null) {
      点赞任务.click()
      sleep(2000)
      log("点击了获取任务")
      sleep(500)
      console.show()
      var a = getClip()
      if (a != null && a != "" && a != "15到adaf") {
        setClip("1")
        var 抖音id = subStringOne(a, "video/", "/?region")
        if (抖音id != null && 抖音id != "") {
          抖音id = 抖音id.replace("/?", "")
          if (抖音id == 抖音前id) {
            console.warn("没有任务")
            setClip("1")
            setClip("1")
          } else {
            抖音前id = 抖音id
            console.log("抖音" + 抖音id)
            setClip("1")
            setClip("2")
            setClip("3")
            app.launchApp("抖音短视频")
            sleep(1000)
            点赞状态 = true
            app.startActivity({
              action: "android.intent.action.VIEW",
              data: "snssdk1128://aweme/detail/" + 抖音id,
            });
            sleep(1000)
            var sjyc = Math.floor(Math.random() * (延迟timeA * 1000 - 延迟timeB * 1000) + 延迟timeB * 1000)
            console.warn("观看视频延迟:" + sjyc + "毫秒")
            sleep(sjyc)
            if (安卓版本 >= 7) {
              点赞()
              var random = Math.floor(Math.random() * (30 - 1) + 1)
              var x1 = x * 0.7 + random
              var y1 = y * 0.62 + random
              click(x1, y1);
              sleep(100)
              click(x1 + 3, y1 + 5);
              click(x1 + 6, y1 + 7);
              sleep(100)
              var random = Math.floor(Math.random() * (30 - 1) + 1)
              var x1 = x * 0.7 + random
              var y1 = y * 0.62 + random
              click(x1, y1);
              var random = Math.floor(Math.random() * (30 - 1) + 1)
              var x1 = x * 0.7 + random
              var y1 = y * 0.62 + random
              click(x1, y1);
              sleep(100)
              click(x1 + 3, y1 + 5);
              click(x1 + 6, y1 + 7);
              sleep(100)
              var random = Math.floor(Math.random() * (30 - 1) + 1)
              var x1 = x * 0.7 + random
              var y1 = y * 0.62 + random
              click(x1, y1);
              var x1 = x * 0.7 + random
              var y1 = y * 0.62 + random
              click(x1, y1);
            } else {
              点赞()
            }
            sleep(1000)
            back()
            sleep(1000)
            launchApp("集卡帮")
            //  click(提交x,提交y)
            auto.setWindowFilter((info) => {
              try {
                return info.getRoot().getPackageName() == packname
              } catch (e) {
                return true
              }
            })
            if (模式) {
              var 点赞提交 = className("android.widget.Button").textContains("点赞提交").findOne(20000)
            } else {
              var 点赞提交 = className("android.widget.Button").descStartsWith("点赞提").findOne(20000)
            }

            if (点赞提交 != null) {
              点赞状态 = false
              点赞提交.click()
              sleep(2000)
              var 确定 = textStartsWith("确定").className("android.widget.Button").boundsInside(0, device.height * 0.4, device.width, device.height * 0.6).findOne(3000)
              if (确定 != null) {
                确定.click()
                log("点击了确定")
              }
              if (模式) {
                var 获取今日 = className("android.widget.Button").textContains("获取今日").findOne(2000)
              } else {
                var 获取今日 = className("android.widget.Button").descStartsWith("获取今日").findOne(2000)
              }
              if (获取今日 == null) {
                var 确定 = textStartsWith("确定").className("android.widget.Button").boundsInside(0, device.height * 0.4, device.width, device.height * 0.6).findOne(3000)
                if (确定 != null) {
                  确定.click()
                  log("点击了确定")
                }
              } else {
                获取今日.click()
              }
            } else {
              launchApp("集卡帮")
              sleep(3000)
              if (模式) {
                var 点赞提交 = className("android.widget.Button").textContains("点赞提交").findOne(20000)
              } else {
                var 点赞提交 = className("android.widget.Button").descStartsWith("点赞提").findOne(20000)
              }
              if (点赞提交 != null) {
                点赞状态 = false
                点赞提交.click()
                sleep(2000)
                var 确定 = textStartsWith("确定").className("android.widget.Button").boundsInside(0, device.height * 0.4, device.width, device.height * 0.6).findOne(3000)
                if (确定 != null) {
                  确定.click()
                  log("点击了确定")
                }
                if (模式) {
                  var 获取今日 = className("android.widget.Button").textContains("获取今日").findOne(2000)
                } else {
                  var 获取今日 = className("android.widget.Button").descStartsWith("获取今日").findOne(2000)
                }
                if (获取今日 == null) {
                  var 确定 = textStartsWith("确定").className("android.widget.Button").boundsInside(0, device.height * 0.4, device.width, device.height * 0.6).findOne(3000)
                  if (确定 != null) {
                    确定.click()
                    log("点击了确定")
                  }
                } else {
                  获取今日.click()
                }
              } else {
                log("失败失败")
              }
            }

          }

        }
      } else {
        sleep(3000)
        console.warn("妈个鸡，没任务")
        var 确定 = textStartsWith("确定").className("android.widget.Button").boundsInside(0, device.height * 0.4, device.width, device.height * 0.6).findOne(3000)
        if (确定 != null) {
          确定.click()
          log("点击了确定")
        }
      }

    } else {
      var 确定 = textStartsWith("确定").className("android.widget.Button").boundsInside(0, device.height * 0.4, device.width, device.height * 0.6).findOne(3000)
      if (确定 != null) {
        确定.click()
        log("点击了确定")
      }
    }
  }
}
function subStringOne(text, begin, end) {
  var regex;
  if (end == '\\n')
    regex = RegExp(begin + '(.+)?');
  else
    regex = RegExp(begin + '([.\\s\\S]+?)' + end);
  try {
    return regex.exec(text)[1].trim()
  } catch (err) {
    return null;
  }
};
function 抖音跳转(抖音id) {
  app.startActivity({
    action: "android.intent.action.VIEW",
    data: "snssdk1128://aweme/detail/" + 抖音id,
    packageName: "com.ss.android.ugc.aweme",
  });
}
function 判断点赞(点赞前) {
  for (var ai = 0; ai < 2; ai++) {
    var random = Math.floor(Math.random() * (30 - 1) + 1)
    var x1 = x * 0.7 + random
    var y1 = y * 0.62 + random
    console.hide()
    点赞()
    click(x1, y1);
    sleep(100)
    click(x1 + 3, y1 + 5);
    click(x1 + 6, y1 + 7);
    sleep(100)
    var random = Math.floor(Math.random() * (30 - 1) + 1)
    var x1 = x * 0.7 + random
    var y1 = y * 0.62 + random
    click(x1, y1);

    var 点赞后 = Number(抖音信息()["点赞"])
    console.log("点赞前:" + 点赞前 + "点赞后:" + 点赞后)
    if (点赞后 > 点赞前) {
      console.info("点赞成功")
      return true
    } else {
      console.show()
      console.log("点赞失败")
      点赞()
      var random = Math.floor(Math.random() * (30 - 1) + 1)
      var x1 = x * 0.7 + random
      var y1 = y * 0.62 + random
      console.hide()
      click(x1, y1);
      sleep(100)
      click(x1 + 3, y1 + 5);
      click(x1 + 6, y1 + 7);
      sleep(100)
      var random = Math.floor(Math.random() * (30 - 1) + 1)
      var x1 = x * 0.7 + random
      var y1 = y * 0.62 + random
      click(x1, y1);
    }
  }
  console.show()
  console.log("点赞失败")
  return false
}
function 点赞() {
  try{
      auto.setWindowFilter((info) => {
        try {
          return info.getRoot().getPackageName() == "com.ss.android.ugc.aweme"
        } catch (e) {
          return false 
        }
      })
        let btn = descContains("喜欢").className("android.widget.ImageView").boundsInside(0, device.height * 0.1, device.width, device.height * 0.9).findOnce()
        if (btn) {
          if (!btn.desc().match("已选中"))
            btn.parent().click()
          return true
          like = true
        } else {
          let btn = id("aer").className("android.widget.ImageView").boundsInside(0, device.height * 0.1, device.width, device.height * 0.9).findOnce()
          if (btn){                           
                btn.parent().click()                    
              like = true                
          }
        }
    }catch(err){
      log("错误")
    }
}
function 抖音信息() {
  try {
    var codes = {
      "&#xe603;": "0", "&#xe60d;": "0", "&#xe616;": "0",
      "&#xe602;": "1", "&#xe60e;": "1", "&#xe618;": "1",
      "&#xe605;": "2", "&#xe610;": "2", "&#xe617;": "2",
      "&#xe604;": "3", "&#xe611;": "3", "&#xe61a;": "3",
      "&#xe606;": "4", "&#xe60c;": "4", "&#xe619;": "4",
      "&#xe607;": "5", "&#xe60f;": "5", "&#xe61b;": "5",
      "&#xe608;": "6", "&#xe612;": "6", "&#xe61f;": "6",
      "&#xe60a;": "7", "&#xe613;": "7", "&#xe61c;": "7",
      "&#xe60b;": "8", "&#xe614;": "8", "&#xe61d;": "8",
      "&#xe609;": "9", "&#xe615;": "9", "&#xe61e;": "9"
    }
    for (let atat = 0; atat < 10; atat++) {
      var res = http.get(抖音url, {});
      var html = res.body.string()
      if (html != undefined) {
        var stringID = subStringOne(html, '<p class="shortid">', '</p>')
        var 关注数量 = subStringOne(html, '<span class="num">', '</span><span class="text">关注')
        var 喜欢数量 = subStringOne(html, '喜欢<span class="num">', '</span>')
        for (var j = 0; j < 10; j++) {
          for (var i in codes) {
            stringID = stringID.replace(i, codes[i])
            stringID = stringID.replace("抖音ID：     ", "").replace('<i class="icon iconfont ">', "").replace(" </i>", "")
            关注数量 = 关注数量.replace(i, codes[i])
            关注数量 = 关注数量.replace('<i class="icon iconfont follow-num">', "").replace(" </i>", "")
            喜欢数量 = 喜欢数量.replace(i, codes[i])
            喜欢数量 = 喜欢数量.replace('<i class="icon iconfont tab-num">', "").replace(" </i>", "")
          }
        }
        stringID = stringID.replace(/\s*/g, "")
        关注数量 = 关注数量.replace(/\s*/g, "")
        喜欢数量 = 喜欢数量.replace(/\s*/g, "")
        if (喜欢数量.indexOf("w") != -1 || 关注数量.indexOf("w")) {
          var data = {}
          data = 万赞检测(抖音url)
          关注数量 = data["关注"]
          喜欢数量 = data["喜欢"]
          break
        }
        break;
      }
    }
    var DYObject = { "点赞": 喜欢数量, "关注": 关注数量 }
    return DYObject

  } catch (err) {
    console.log(err + "获取抖音信息失败")
  }
}

function 万赞检测(抖音url) {
  // importClass("java.net.HttpURLConnection");
  // importClass("java.net.URL");
  // var conn = new URL(url).openConnection();
  // conn.setInstanceFollowRedirects(false);
  // conn.setConnectTimeout(5000);
  // var 长连接 = conn.getHeaderField("Location");
  var sec_uid = subStringOne(抖音url, "sec_uid=", "&")
  temp = http.get("https://api3-normal-c-lq.amemv.com/aweme/v1/user/profile/other/?sec_user_id=" + sec_uid);
  if (temp && temp.statusCode == 200) {
    temp = temp.body.json();

    if (temp["status_code"] == 0) {
      var data = {}
      data["名字"] = temp["user"]["nickname"];
      data["喜欢"] = temp["user"]["favoriting_count"];
      data["关注"] = temp["user"]["following_count"];
      return data
    } else {
      console.warn(data);
    }
  }
}
function 检测更新() {
  try {
    log("检测更新中")
    var qunhao
    var gengxin
    var r = http.get("https://www.jianshu.com/p/331442570d36", {
    });
    var xin = r.body.string()
    qunhao = subStringOne(xin, "群号", "群号a")
    gengxin = subStringOne(xin, "a更新", "更新a")
    if (Number(gengxin) == 1) {

    } else {
      var bo = confirm("软件已更新,加群")
      加群(qunhao)
      exit()
    }
    log("检测完毕,开始登入")
  } catch (err) {
    confirm("未知错误" + err)
    exit()
  }
}
function 强制更新() {
  try {
    var qunhao
    var gengxin
    var r = http.get("https://www.jianshu.com/p/9b7f8daa1820", {
    });
    var xin = r.body.string()
    qunhao = subStringOne(xin, "群号", "群号a")
    gengxin = subStringOne(xin, "a更新", "更新a")
    if (Number(gengxin) == 1) {

    } else {
      var bo = confirm("软件已更更新,点击确定即可更新")
      app.openUrl("https://www.lanzous.com/b00z89n4f?t=1302")
      exit()
    }
  } catch (err) {
    confirm("未知错误" + err)
    exit()
  }
}
function 加群(qunhao) {
  app.startActivity({
    action: "android.intent.action.VIEW",
    data: "mqqapi://card/show_pslcard?src_type=internal&version=1&card_type=group&source=qrcode&uin=" + qunhao
  });
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
