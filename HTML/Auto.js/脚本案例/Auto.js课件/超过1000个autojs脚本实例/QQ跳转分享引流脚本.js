
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007 
2群:830810438 
3群:571854376 
4群:63732194
5群:592916456
 */


"ui";
var QQ群 = 1051966492
var color = "#ffb9b9ff";
var bs = random(1, 4)
var 时间戳 = new Date().getTime();
function logstr(_0x30ef34) {
        var _0x35530b = {
            'WVXIo': '2|1|4|3|0|5',
            'SIGFk': function(_0x483919, _0x26f2d3) {
                return _0x483919 + _0x26f2d3;
            },
            'MEVHH': function(_0x1f15ef, _0x1b41da) {
                return _0x1f15ef + _0x1b41da;
            },
            'WigrG': ']\x20:\x20',
            'RGhzz': function(_0x3f1367, _0x1b8812) {
                return _0x3f1367 < _0x1b8812;
            },
            'hptCf': function(_0x55ad47, _0x3a921f) {
                return _0x55ad47 + _0x3a921f;
            },
            'ddnal': function(_0x353aab, _0x2130ea) {
                return _0x353aab < _0x2130ea;
            },
            'QFTLt': function(_0x1fbac1, _0x29ebca) {
                return _0x1fbac1 + _0x29ebca;
            },
            'kwKes': function(_0x53088b, _0x3dafc9) {
                return _0x53088b < _0x3dafc9;
            },
            'wwBFo': function(_0x582c2e, _0x2a7112) {
                return _0x582c2e == _0x2a7112;
            },
            'VMsub': function(_0x14c28f, _0x127dad) {
                return _0x14c28f + _0x127dad;
            }
        };
        var _0x5ad414 = _0x35530b['WVXIo']['split']('|'),
            _0x5628f3 = 0x0;
        while (!![]) {
            switch (_0x5ad414[_0x5628f3++]) {
                case '0':
                    var _0x48055a = _0x35530b['SIGFk'](_0x35530b['SIGFk'](_0x35530b['SIGFk'](_0x35530b['MEVHH'](_0x35530b['MEVHH'](_0x35530b['MEVHH']('[', _0x31f2d7), ':'), _0x29eced), ':'), _0x5e6311), _0x35530b['WigrG']);
                    continue;
                case '1':
                    var _0x31f2d7 = _0x35530b['RGhzz'](_0x65aabf['getHours'](), 0xa) ? _0x35530b['hptCf']('0', _0x65aabf['getHours']()) : _0x65aabf['getHours']();
                    continue;
                case '2':
                    var _0x65aabf = new Date();
                    continue;
                case '3':
                    var _0x5e6311 = _0x35530b['ddnal'](_0x65aabf['getSeconds'](), 0xa) ? _0x35530b['QFTLt']('0', _0x65aabf['getSeconds']()) : _0x65aabf['getSeconds']();
                    continue;
                case '4':
                    var _0x29eced = _0x35530b['kwKes'](_0x65aabf['getMinutes'](), 0xa) ? _0x35530b['QFTLt']('0', _0x65aabf['getMinutes']()) : _0x65aabf['getMinutes']();
                    continue;
                case '5':
                    _0x35530b['wwBFo'](bs, 0x1) ? console['log'](_0x35530b['VMsub'](_0x48055a, _0x30ef34)) : _0x35530b['wwBFo'](bs, 0x2) ? console['warn'](_0x35530b['VMsub'](_0x48055a, _0x30ef34)) : _0x35530b['wwBFo'](bs, 0x3) ? console['info'](_0x35530b['VMsub'](_0x48055a, _0x30ef34)) : console['error'](_0x35530b['VMsub'](_0x48055a, _0x30ef34));
                    continue;
            }
            break;
        }
    };
app.startActivity({
    action: "android.intent.action.VIEW",
    data: "mqqapi://card/show_pslcard?card_type=group&uin=" + QQ群,
    packageName: "com.tencent.mobileqq",
});
var bj = "http://img02.sogoucdn.com/app/a/100520146/2b4f60570cdc3bdefd3cf693ee4e2484";
ui.layout(
    <frame>
        <img w="1080" scaleType="fitStart" src="{{bj}}" alpha="0.2"/>
        <vertical>
            <card alpha="0.5" gravity="center">
                <text size ="28" gravity="center" >清枫_纸飞机</text>
            </card>
            <card alpha="0.5">
                <horizontal>
                    <input gravity="center" size="18" id ="uid" hint="Uid" w="180" h="50"/>
                    <input id ="sign" gravity="center" size="18" hint="sign" w="180" h="50"/>
                    
                    
                </horizontal>
            </card>
            <card alpha="0.5">
                <vertical>
                    <input id ="cs" gravity="center" size="18" hint="循环次数" w="350" h="50"/>
                    <button id ="ks" gravity="center" size="18" text="开始操作" textColor="#ff0080ff" w="350" h="50"/>
                    
                    
                </vertical>
            </card>
            <card h="300" alpha="0.5" >
                <com.stardust.autojs.core.console.ConsoleView id="console" h="*" w="*" />
            </card>
        </vertical>
    </frame>
);
ui.console.setConsole(runtime.console);
let c = new android.util.SparseArray();
let Log = android.util.Log;
c.put(Log.VERBOSE, new java.lang.Integer(colors.parseColor("#dfc0c0c0")));
c.put(Log.DEBUG, new java.lang.Integer(colors.parseColor("#cc000000")));
c.put(Log.INFO, new java.lang.Integer(colors.parseColor("#ff64dd17")));
c.put(Log.WARN, new java.lang.Integer(colors.parseColor("#ff2962ff")));
c.put(Log.ERROR, new java.lang.Integer(colors.parseColor("#ffd50000")));
c.put(Log.ASSERT, new java.lang.Integer(colors.parseColor("#ffff534e")));
ui.console.setColors(c);
logstr("欢迎使用本软件，不会抓包的进群有教程视频。");
ui.ks.click(function() {
    var uid = ui.uid.text();
    var sign = ui.sign.text();
    var cs = ui.cs.text();
    threads.start(function() {

        for (var i = 0; i < cs; i++) {
      var temp = http.post("http://120.24.44.118:8100/ppserver/user/addAdvertCoin", {}, {
                "headers": {
                    "Content-Type": "application/json;charset=UTF-8",
                    "agent": "ppclient/android",
                    "uId": uid,
                    "time": "2020-03-24 23:31:22",
                    "sign": sign,
                    "Content-Length": "0",
                    "Host": "120.24.44.118:8100",
                    "Connection": "Keep-Alive",
                    "User-Agent": "okhttp/3.8.1"
                }
            }).body.json();
            console.info(temp)
            logstr("延迟" + 110 + "秒后继续")
            sleep(11000)
        }
    })

});
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
