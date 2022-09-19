
"ui";


// dialogs.select(title, items, callback)

var arr = ['选项A','选项B'];

dialogs.select('请选择选项',arr,function(sel){

    // toast(sel)

    if(sel < 0) {
        toast('你已经放弃了')
    }else {
        toast('你选择的答案是：'+arr[sel])
    }
})


// var arr = ['选项A','选项B'];

// dialogs.select('请选择选项',arr).then(sel => {
//     if(sel < 0) {
//         toast('你已经放弃了')
//     }else{
//         toast('你选择的答案是：'+arr[sel])
//     }
// })


