

//遍历点击微信通讯录，翻页后跳过已点击的。
//开发版本：7.0.7
//开发设备：小米8
//安卓版本：10


function 遍历通讯录(testing, i, m) {
    nameRepert = (name) => {//判断重复函数
        for (let indx = 0; indx < testing.length; indx++)if (name == testing[indx]) return true;
        return false;
    }
    索检名称遍历 = (nameArry) => {
        let namea = id("p_").className("android.view.View").boundsInside(0, 220, device.width, device.height - 300).find()
        let nameb = id("p9").className("android.widget.lmageView").boundsInside(0, 220, device.width, device.height - 300).find()

        if (namea.length > 0) {//直接获取名称控件
            for (let indx = 0; indx < namea.length; indx++) {
                let nameText = namea[indx].text();
                if (nameText) nameArry.push(nameText)//去到的名称存入数组
            }
        } else if (nameb.length > 0) {//名称控件没有的情况下，从头像定位名称控件
            for (let indx = 0; indx < nameb.length; indx++) {
                fu = nameb[indx].parent()
                zi = fu.findOne(className("android.view.View"))
                if (zi) nameArry.push(zi.text() || zi.desc())//取到的名称存入数组
            }
        } else i = 1;

        if (nameArry) {//遍历点击名单
            for (let indx = 0; indx < nameArry.length; indx++) {
                if (nameRepert(nameArry[indx]) == false) {//重复判断
                    pes = text(nameArry[indx]).findOne(3000)
                    if (pes) {
                        console.log("当前点击好友：" + nameArry[indx]);
                        let bound = pes.bounds()
                        click(bound.centerX(), bound.centerY())

                        //在这里写点击好友的的代码

                        sleep(500), back(), sleep(500);//点击后的返回
                    }
                    testing.push(nameArry[indx]);//点击过的存数组
                    i = 0;
                } else i = 1;
            }
        } else i = 1;
    }

    while (1) {
        索检名称遍历([])
        log("当前i的值：" + i)
        if (i == 1) m += 1, swipe(800, 1500, 800, 250, 400);
        if (m > 3) return toastLog("当前页面好友已点击完毕");
        if (i == 0) swipe(800, 1500, 800, 250, 400);
    }
}



遍历通讯录([], 0, 0)
