
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//联众验证码识别
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
function captcha_lianzhong(oI, oJ) {
    oJ = oJ || {};
    oJ['username'] = oJ['username'] || '';
    oJ['password'] = oJ['password'] || '';
    oJ['retType'] = oJ['retType'];
    oJ['captchaType'] = oJ['captchaType'] || '1001';
    oJ['captchaMinLength'] = oJ['captchaMinLength'] || 0x4;
    oJ['captchaMaxLength'] = oJ['captchaMaxLength'] || 0x4;
    let oK = 'https://v2-api.jsdama.com/upload';
    let oL = {
        'Host': 'v2-api.jsdama.com',
        'Connection': 'keep-alive',
        'Accept': 'application/json,\x20text/javascript,\x20*/*;\x20q=0.01',
        'Content-Type': 'text/json'
    };
    let oM = {
        'softwareSecret': '8dQshPmIOSPV4xc6eyrC1VATidvNjHX8c2FirzVe',
        'softwareId': '17356',
        'username': oJ['username'],
        'password': oJ['password'],
        'captchaData': oI['toBase64']()['_imgData'],
        'captchaType': oJ['captchaType'],
        'captchaMinLength': oJ['captchaMinLength'],
        'captchaMaxLength': oJ['captchaMaxLength']
    };
    try {
        http['__okhttp__']['setTimeout'](1000 * 0x14);
        let oN = http['postJson'](oK, oM, {
            'headers': oL
        });
        ctx['sys']['log']('提交打码请求');
        let oO = oN['body']['json']();
        if (oO && !oO['code']) {
            let Q = !retType ? oO['data'] : retType == 0x1 ? oO : {
                'res': oN,
                'ret': oO
            };
            ctx['sys']['logJ'](Q);
            return Q
        }
    } catch (oQ) {
        ctx['sys']['log'](oQ)
    }
}
ctx['sys']['captcha_lianzhong'] = (oR, oS) => {
    return captcha_lianzhong(oR, oS)
};

function captcha_lianzhong_remain(oU) {
    oU = oU || {};
    oU['username'] = oU['username'] || '';
    oU['password'] = oU['password'] || '';
    let oV = 'https://v2-api.jsdama.com/check-points';
    let oW = {
        'Host': 'v2-api.jsdama.com',
        'Connection': 'keep-alive',
        'Accept': 'application/json,\x20text/javascript,\x20*/*;\x20q=0.01',
        'Content-Type': 'text/json'
    };
    let oX = {
        'softwareSecret': '8dQshPmIOSPV4xc6eyrC1VATidvNjHX8c2FirzVe',
        'softwareId': '17356',
        'username': oU['username'],
        'password': oU['password']
    };
    try {
        http['__okhttp__']['setTimeout'](1000 * 0x14);
        let oY = http['postJson'](oV, oX, {
            'headers': oW
        });
        ctx['sys']['log']('提交查询剩余点数请求');
        let oZ = oY['body']['json']();
        if (oZ && oZ['code'] == 0) {
            ctx['sys']['log']('联众识别结果:' + oZ['data']['availablePoints']);
            return oZ['data']['availablePoints']
        }
    } catch (p0) {
        ctx['sys']['log'](p0)
    }
}
ctx['sys']['captcha_lianzhong_remain'] = p1 => {
    return captcha_lianzhong_remain(p1)
};
//autojs 脚本分享，还原，QQ 545337705  更多牛逼脚本代码已分享到QQ群:1033080138 24小时后删除

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
