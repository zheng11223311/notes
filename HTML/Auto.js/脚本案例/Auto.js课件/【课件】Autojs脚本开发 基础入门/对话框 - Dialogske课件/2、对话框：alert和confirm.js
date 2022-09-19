"ui";

// alert('警告','没有什么警告的',function(){
//     toast('你点击了确定')
// });


// alert('警告','没有什么警告的').then(() => {
//     toast('你点击了确定')
// })


// confirm('你确定吗？','这里是要写的内容',function(bool){
//     if(bool){
//         toast('你点击了确定')
//     }else{
//         toast('你点击了取消')
//     }
// })

confirm('你确定吗？','这里是要写的内容').then(bool => {
    if(bool){
        toast('你点击了确定')
    }else{
        toast('你点击了取消')
    }
});










