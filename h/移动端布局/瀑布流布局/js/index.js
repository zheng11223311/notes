// 1.获取主容器的宽度
var content=document.getElementsByClassName('content')[0]
   var contentWidth=content.offsetWidth
//    console.log(contentWidth);

//1.1收集所有img
var img=document.querySelectorAll('img')
console.log(img);


//2.获取单个div 的宽度
var div=content.children
var divWidth=div[0].offsetWidth
var divWidth=div[0].style.width     //只能获取div 元素行内样式
console.log(divWidth);
for(let divHeight of div){
    console.log(divHeight);
    console.log(divHeight.offsetHeight);
}

//3.第一行可以排列多少张div
var nums=Math.floor(contentWidth/divWidth)
console.log(nums);

//4.收集第一排的所有div 的高度
var arrHeight=[];

//5.收集所有照片

for(var i=0;i<img.length;i++){
   //这里都是第一行的元素
        // console.log(img[0]);
        for(var j=0;j<nums;j++){
            // console.log(j);
            //  console.log(div[j]);
        }
       
}
    // else{
    //     //创建第一个元素的对象
    //     var obj={
    //         minH:arrHeight[0], //上一组最小的高度
    //         minI:0          //上一组最小的高度的下标                
    //     }
    //     for(var j=0;j<arrHeight.length;j++){
    //         if(arrHeight[j]<obj.minH){
    //             obj.minH=arrHeight[j]
    //             obj.minI=j
    //         }
    //     }
    //     console.log(imgs[i].offsetHeight);
    //        console.log( div[obj.minI]);
    //     div[obj.minI].offsetHeight=div[obj.minI]+imgs[i].offsetHeight
    //     div[obj.minI].appendChild(imgs[i])
    //     console.log(div[4].offsetHeight);
    //     console.log(arrHeight);
        
        
        


    //     // console.log(obj.minI);
    //     //谁短插谁
    //     // imgs[i].style.position='absolute'
    //     // imgs[i].style.left=imgs[obj.minI].offsetLeft+'px'
    //     // imgs[i].style.top=obj.minH+'px'
    //     // console.log(imgs[i].style.top);
    //     // // offset 与定位父级元素的偏移度有关
    //     // arrHeight[obj.minI]=arrHeight[obj.minI]+imgs[i].offsetHeight
    //     // console.log(imgs[i].offsetHeight);
    //     // console.log(arrHeight[obj.minI]);
    // }
// }
console.log(arrHeight);