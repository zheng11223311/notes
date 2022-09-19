

/**
 * @AuThor 叁玖
 * ------：格式化日期
 * @param date Date 或 timestamp
 * @param formatter yyyyMMddHHmmss
 */



let nae = new Date()

let a = formatDate(nae, "YYYY年MM月DD日hh点mm分ss秒")
let c = formatDate(nae, "YYYY-MM-DD-hh-mm-ss")
let k = formatDate(nae, "YYYY-MM-DD hh-mm-ss")
let f = formatDate(nae, "hh点mm分ss秒")


log("格式化后的时间：" + a)
log("格式化后的时间：" + c)
log("格式化后的时间：" + k)
log("格式化后的时间：" + f)





function formatDate(date, formatter) {
    if (typeof date !== 'object') {
        date = new Date(date);
    }
    var transform = function (value) {
        return value < 10 ? '0' + value : value;
    };
    return formatter.replace(/^YYYY|MM|DD|hh|mm|ss/g, function (match) {
        switch (match) {
            case 'YYYY':
                return transform(date.getFullYear());
            case 'MM':
                return transform(date.getMonth() + 1);
            case 'mm':
                return transform(date.getMinutes());
            case 'DD':
                return transform(date.getDate());
            case 'hh':
                return transform(date.getHours());
            case 'ss':
                return transform(date.getSeconds());
        }
    });
}
