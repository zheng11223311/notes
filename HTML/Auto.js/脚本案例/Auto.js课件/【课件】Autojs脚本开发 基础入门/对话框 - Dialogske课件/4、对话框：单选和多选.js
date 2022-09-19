



// dialogs.singleChoice(title, items[, index, callback])

// var arr = ['这是选项a','这是选项b','这是选项c']

// dialogs.singleChoice('这是标题',arr,1,function(index){
    
//     toast(arr[index])

// });

var arr = ['这是选项a','这是选项b','这是选项c']

dialogs.multiChoice('这是多选',arr,[0,1],function(indices){

    indices.forEach(element => {
        log(arr[element])
    });

})

// [ 0, 1, 2 ]


// toast('阿涛QQ/微信:656206105')