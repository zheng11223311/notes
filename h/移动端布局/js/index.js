// 头部功能 
var kuaiJieDaoHang=document.querySelector('.kuaiJieDaoHang');
console.log(1);
kuaiJieDaoHang.addEventListener('mouseenter',function(){
var kuaiDiv=kuaiJieDaoHang.createElement('div');
kuaiJieDaoHang.insetBefore('div',kuaiJieDaoHang[1]);
	kuaiDiv.style.width='200px';
	kuaiDiv.style.height='200px';
	kuaiDiv.style.backgroundColor='pink';

});