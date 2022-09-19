var article1=document.querySelector('article')
console.log(article1);

for(var i=0;i<6;i++){
    var cdiv=document.createElement('div')
    article1.append(cdiv)
    var acdiv=article1.querySelectorAll('article div');
    var cdivs=document.createElement('span')
    acdiv[i].append(cdivs)
    var adivs=article1.querySelectorAll('article div span');
    (function(i){
             console.log(adivs[i]);
       acdiv[i].onmouseenter=function(){
            for(var j=0;j<acdiv.length;j++){
        adivs[j].style.display='none';
     adivs[i].style.display='block';
            }
    }
    })(i)
    
}
// var adiv=article.querySelectorAll('div')
// // adiv[1].style.background="url(../img/2.jpg)" ;

