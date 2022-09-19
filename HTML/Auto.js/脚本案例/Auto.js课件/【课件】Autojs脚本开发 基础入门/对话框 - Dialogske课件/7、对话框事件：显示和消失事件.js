



// var d = dialogs.build({
//     title: '这是对话框标题'
// });

// d.show();

// d.on('show',function(dialog){

//     toast('对话框已经显示')

// })


//合起来的写法

// dialogs.build({
//     title: '这是标题'
// }).on('show',function(dialog){

//     toast('对话框已经显示');

// }).show();


var d = dialogs.build({

    title: '这是消失事件'

}).on('dismiss',(dialog) => {

    toast('对话框已消失')

}).show()


setTimeout(function(){
    d.dismiss()
},3000);








// toast('123')