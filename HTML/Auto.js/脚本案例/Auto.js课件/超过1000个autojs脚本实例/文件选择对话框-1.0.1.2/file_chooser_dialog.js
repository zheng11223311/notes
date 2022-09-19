
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
// 文件选择对话框，还没做任何调试，肯定跑不起来
// 只是给你们看看代码而已
requiresAutojsVersion(7000304);
let FileChooser = require("./file_chooser");

function FileChooserDialog(options) {
    this.options = Object.assign({}, options);
    this.fillOptions();
}

// 将options参数填充一些选项和默认选项
FileChooserDialog.prototype.fillOptions = function() {
    let options = this.options;
    let canChoose = options.canChoose || [];
    options.dir = files.path(options.dir);
    options.canChooseFile = canChoose.indexOf("file") >= 0;
    options.canChooseDir = canChoose.indexOf("dir") >= 0;
    options.wrapInScrollView = false;
    options.title = options.title || "选择文件(夹)";
    options.positive = options.positive || "确定";
}

FileChooserDialog.prototype.build = function () {
    let options = this.options;
    this.fileChooser = new FileChooser(options);
    this.fileChooser.setCurrentDir(options.dir);
    options.customView = this.fileChooser.view;
    let fileCallback = options.fileCallback;
    return dialogs.build(options)
       .on("positive", () => {
           let selectedFile = this.fileChooser.getSelectedFile();
           fileCallback && fileCallback(selectedFile);
       });
}

FileChooserDialog.build = function (options) {
    return new FileChooserDialog(options).build();
}

module.exports = FileChooserDialog;
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
