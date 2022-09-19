
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007
//
//
requestScreenCapture();
awc = 15; //误差

function capturescreen() {
    while (true) {
        if (ajt = captureScreen()) {
            return ajt;
            break;
        }
    }
} //截图

function akzt() {
    new java.lang.Thread(function() {
        packageName("com.stardust.scriptdroid").className("android.widget.EditText").setText("点击确定->");
    }).start();
    console.rawInput("点击确定开始执行\nQQ:787067033", "");
} //控制台

function abs(a7, a8) {
    //log(colors.toString(ab6)+":"+colors.toString(ab7));
    if (Math.abs(colors.red(a7) - colors.red(a8)) < awc && Math.abs(colors.green(a7) - colors.green(a8)) < awc && Math.abs(colors.blue(a7) - colors.blue(a8)) < awc) {
        return true;
    } else {
        return false;
    }
} //比色

function aht() {
    a4 = capturescreen();
    c0=0;
    for (ai0 = 0; ai0 <= 6; ai0++) {
        for (ai1 = 0; ai1 <= 6; ai1++) {
            a2[ai0][ai1] = images.pixel(a4, a0[ai0], a1[ai1]);
        }
    }
    for (i0 = 0; i0 <= 6; i0++) {
        for (i1 = 0; i1 <= 6; i1++) {
            a3[i0][i1] = 90;
        }
    }
    for (i0 = 0; i0 <= 6; i0++) {
        for (i1 = 0; i1 <= 6; i1++) {
            if (a3[i0][i1] == 90) {
                a3[i0][i1] = c0;
                c0++;
                for (i2 = 0; i2 <= 6; i2++) {
                    for (i3 = 0; i3 <= 6; i3++) {
                        if (abs(a2[i0][i1], a2[i2][i3])) {
                            a3[i2][i3] = a3[i0][i1];
                        }
                    }
                }
            }
        }
    }
    g3 = (new Date()).getTime();
   //console.info(g3-t0);
    for (i0 = 0; i0 <= 6; i0++) {
        for (i1 = 0; i1 <= 6; i1++) {
            if (g3 - e[i0][i1] < 300) {
                a3[i0][i1] = 90;
            }
        }
    }
    t = "";
    for (i0 = 0; i0 <= 6; i0++) {
       
        for (i1 = 0; i1 <= 6; i1++) {
            t = t + a3[i1][i0] + ",  ";
        }
     t = t + "\n";
    }
    log(t);
} //绘制地图

function g0() {
    g2 = (new Date()).getTime();
     e[g1[3].x][g1[3].y] = g2;
     a3[g1[3].x][g1[3].y]=90;
    for (i1 = 0; i1 <= 2; i1++) {
    a3[g1[i1].x][g1[i1].y] = 90;
        for (i0 = 0; i0 < g1[i1].y; i0++) {
            a3[g1[i1].x][i0] = 90;
            e[g1[i1].x][i0] = g2;
        }
      e[g1[i1].x][g1[i1].y] = g2;
    }
} //0制更新地图

function ab0(ab1, ab2, ab3, ab4) {
    if (ab3 > 6 || ab3 < 0 || ab4 > 6 || ab4 < 0) {
        return false;
    }
    if (a3[ab1][ab2] == a3[ab3][ab4]) {
        return true;
    }
} //过滤范围判断一样
e = new Array();
for (e0 = 0; e0 <= 6; e0++) {
    e[e0] = new Array();
    for (e1 = 0; e1 <= 6; e1++) {
        e[e0][e1] = 0;
    }
}

function b11(aa1, aa2, aa3, aa4) {
    
    if (a3[aa1][aa2] != 90) {
        f1[a3[aa1][aa2]]++;
        log((aa1+1) + "," + (aa2+1) + "移到" + (aa3+1) + "," + (aa4+1));
        swipe(a0[aa1], a1[aa2], a0[aa3], a1[aa4], 1);
        g1[2].x = aa3;
        g1[2].y = aa4;
        g1[3].x = aa1;
        g1[3].y = aa2;
        g0();
        t1++;
        t3++;
    }
} //移动

function amain() {
    akzt();
    t1 = 0;
    t0 = (new Date()).getTime();
    while (true) {
        t3 = 0;
        aht();
        for (b4 = 0; b4 <= 6; b4++) {
            for (b3 = 0; b3 <= 6; b3++) {
                if (a3[b3][b4] != 90) {
                    g1[0].x = b3;
                    g1[0].y = b4;
                    for (b8 = 0; b8 <= 3; b8++) {
                        if (b8 == 0) {
                            b9 = b5;
                            b10 = b6;
                        }; //右
                        if (b8 == 1) {
                            b9 = b6;
                            b10 = b5;
                        }; //下
                        if (b8 == 2) {
                            b9 = b7;
                            b10 = b6;
                        }; //左
                        if (b8 == 3) {
                            b9 = b6;
                            b10 = b7;
                        }; //上
                        if (ab0(b3, b4, b3 + b9[2], b4 + b10[2])) {
                            //相邻一样
                            g1[1].x = b3 + b9[2];
                            g1[1].y = b4 + b10[2];
                            if (ab0(b3, b4, b3 + b9[1], b4 + b10[1])) {
                                //邪上一样
                                b11(b3 + b9[1], b4 + b10[1], b3 + b9[3], b4 + b10[3]);
                            }
                            if (ab0(b3, b4, b3 + b9[4], b4 + b10[4])) {
                                //相相邻一样
                                b11(b3 + b9[4], b4 + b10[4], b3 + b9[3], b4 + b10[3]);
                            }
                            if (ab0(b3, b4, b3 + b9[6], b4 + b10[6])) {
                                //邪下一样
                                b11(b3 + b9[6], b4 + b10[6], b3 + b9[3], b4 + b10[3]);
                            }
                        }
                        if (ab0(b3, b4, b3 + b9[3], b4 + b10[3])) {
                            //相隔一样
                            g1[1].x = b3 + b9[3];
                            g1[1].y = b4 + b10[3];
                            if (ab0(b3, b4, b3 + b9[0], b4 + b10[0])) {
                                //中上一样
                                b11(b3 + b9[0], b4 + b10[0], b3 + b9[2], b4 + b10[2]);
                            }
                            if (ab0(b3, b4, b3 + b9[5], b4 + b10[5])) {
                                //中下一样
                                b11(b3 + b9[5], b4 + b10[5], b3 + b9[2], b4 + b10[2]);
                            }
                        }
                    }
                }
            }
        }
        if ((new Date()).getTime() - t0 > 62000) {
            break;
        }
    }
    log("滑动" + t1 + "次");
    f2 = "";
    for (i0 = 0; i0 <= 7; i0++) {
        f2 = f2 + f0[i0] + "滑动" + f1[i0] + "次\n";
    }
    log(f2);
} //主功能
f0 = ["未知", "黄鸭", "白熊猫", "蓝熊", "棕熊", "紫猫", "绿兔", "红狐"];
a0 = [82, 234, 386, 539, 691, 843, 996];
a1 = [557, 708, 860, 1012, 1163, 1315, 1467];
b5 = [1, 2, 1, 2, 3, 1, 2];
b6 = [-1, -1, 0, 0, 0, 1, 1]; //右边是初始化坐标
b7 = [-1, -2, -1, -2, -3, -1, -2]; //3组坐标为旋转重复使用数组
a2 = new Array(); //颜色数组
a3 = new Array(); //地图数组
g1 = new Array(); //消除记录数组
for (ai0 = 0; ai0 <= 6; ai0++) {
    g1[ai0] = new Object() {
        x: 0,
        y: 0
    }
    a2[ai0] = new Array();
    a3[ai0] = new Array();
}
while (true) {
    f1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    amain();
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
