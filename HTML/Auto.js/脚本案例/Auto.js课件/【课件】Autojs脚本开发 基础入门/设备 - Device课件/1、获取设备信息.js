
//获取设备的唯一标识
log(device.fingerprint+device.getIMEI());

exit();

// var w = device.width

// log(w);

// var h = device.height;

// log(h)




console.show();

var str = "";
str += "屏幕宽度:" + device.width;
str += "\n屏幕高度:" + device.height;
str += "\nbuildId:" + device.buildId;
str += "\n主板:" + device.board;
str += "\n制造商:" + device.brand;
str += "\n型号:" + device.model;
str += "\n产品名称:" + device.product;
str += "\nbootloader版本:" + device.bootloader;
str += "\n硬件名称:" + device.hardware;
str += "\n唯一标识码:" + device.fingerprint;

try {
    str += "\nIMEI: " + device.getIMEI();
} catch (error) {
    log('没有获取imei的权限')
}

str += "\nAndroidId: " + device.getAndroidId();
str += "\nMac: " + device.getMacAddress();
str += "\nAPI: " + device.sdkInt;
str += "\n电量: " + device.getBattery();

// 屏幕宽度:1080
// 屏幕高度:2340
// buildId:PKQ1.190616.001
// 主板:ginkgo
// 制造商:xiaomi
// 型号:Redmi Note 8
// 产品名称:ginkgo
// bootloader版本:unknown
// 硬件名称:qcom
// 唯一标识码:xiaomi/ginkgo/ginkgo:9/PKQ1.190616.001/V11.0.7.0.PCOCNXM:user/release-keys



log(str);








toast('阿涛QQ/微信：656206105')