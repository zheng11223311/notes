var a = {};
a.b = function(v) {
    toastLog("B：神经病哦!");
    var c = require("./120.js");
    toastLog(v);
    confirm("B：继续");
        c.d();
}
module.exports = a;