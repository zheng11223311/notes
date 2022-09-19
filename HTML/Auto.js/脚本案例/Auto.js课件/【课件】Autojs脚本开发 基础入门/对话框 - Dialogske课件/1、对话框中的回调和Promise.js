
"ui";
ui.layout(
    <vertical>
        <button id="btn1" text="第一个按钮"/>
        <button text="第二个按钮"/>
    </vertical>
);

// alert('你好');

ui.btn1.click(function(){

    // confirm('确定要删除吗？').then(function(bool){

    //     log(bool)

    // })

    confirm('确定要删除吗？').then(bool => {
        if(bool){
            alert('已经删除完成！');
        }else{
            alert('已经取消操作');
        }
    });

})


// var bool =confirm('确定要删除吗？');

// log(bool)

// if(bool){

//     alert('已经删除完成！');

// }else{
//     toast('你点击了取消')
// }


// true
// false


toast('123')