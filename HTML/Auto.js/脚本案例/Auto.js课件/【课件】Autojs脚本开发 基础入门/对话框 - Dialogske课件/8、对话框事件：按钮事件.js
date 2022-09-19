


// dialogs.build({
//     title: '按钮事件',
//     positive: '确定',
//     negative: '取消',
//     neutral: '中性按钮'
// }).on('positive',function(dialog){

//     toast('点击了确定按钮');

// }).on('negative',function(dialog){

//     toast('点击了取消按钮');

// }).on('neutral',function(dialog){

//     toast('点击了中性按钮');

// }).on('cancel',function(dialog){
    
//     toast("对话框已被取消")

// }).show()




dialogs.build({
    title: '按钮事件',
    positive: '确定',
    negative: '取消',
    neutral: '中性按钮'
}).on('any',(action,dialog) => {

    // if(action == 'positive'){
    //     toast('点击了确定按钮');
    // }else if(action == 'negative'){
    //     toast('点击了取消按钮');
    // }else if(action == 'neutral'){
    //     toast('点击了中性按钮');
    // }

    // toastLog(action)

}).show()






















// toast('123')