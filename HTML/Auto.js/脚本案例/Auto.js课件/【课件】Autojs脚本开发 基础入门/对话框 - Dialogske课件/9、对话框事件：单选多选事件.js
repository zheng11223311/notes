

// dialogs.build({
//     title: '这是选择框事件',
//     items: ['A','B','C','D'],
//     itemsSelectMode: 'select',
//     // itemsSelectedIndex: [0],
//     positive: '确定'
// }).on('item_select',function(index,item,dialog){

//     toastLog(index+"----"+item)

//     toastLog("你选择的是第"+(index+1).toString()+"个选项："+item)
//     // 你选择的是第2个选项：B
//     // 你选择的是第3个选项：C
// }).show()




// dialogs.build({
//     title: '这是选择框事件',
//     items: ['A','B','C','D'],
//     itemsSelectMode: 'single',
//     itemsSelectedIndex: 0,
//     positive: '确定'
// }).on('single_choice',function(index,item,dialog){

//     toastLog(index+"----"+item)
//     // 3----D

//     toastLog("你选择的是第"+(index+1).toString()+"个选项："+item)
// }).show()


dialogs.build({
    title: '这是选择框事件',
    items: ['A','B','C','D'],
    itemsSelectMode: 'multi',
    // itemsSelectedIndex: [0],
    positive: '确定'
}).on('multi_choice',function(indices,items,dialog){
    log(indices)
}).show()









// toast('阿涛QQ/微信:656206105')