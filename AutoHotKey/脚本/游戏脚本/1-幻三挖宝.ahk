wa(){
sleep,1000
ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/1-1.png	;
sleep,1000
tooltip,查找1-1----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/1-2.png	;
sleep,1000
tooltip,查找1-2----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击



ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/1-3.png	;
sleep,1000
tooltip,查找1-3----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击



ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/2-1.png	;
sleep,1000
tooltip,查找2-1----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/2-2.png	;
sleep,1000
tooltip,查找2-2----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/2-3.png	;
sleep,1000
tooltip,查找2-3----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/3-1.png	;
sleep,1000
tooltip,查找3-1----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/3-2.png	;
sleep,1000
tooltip,查找3-2----%FoundX%

click,%FoundX%, %FoundY%		;在活动窗口的位置点击



ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/3-3.png	;
sleep,1000
tooltip,查找3-3----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击




ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/4-1.png	;
sleep,1000
tooltip,查找4-1----%FoundX%


click,%FoundX%, %FoundY%		;在活动窗口的位置点击



sleep,1000		;等待挖宝出现
ImageSearch, FoundX, FoundY, 50, 200,500, 630, ../img/幻三/5.png	;
sleep,1000
tooltip,查找继续挖宝----%FoundX%

click,%FoundX%, %FoundY%		;在活动窗口的位置点击


}

;wa()		;使用函数
return


;c(){
;sleep,1000	;也会阻止while 循环
;tooltip,111
;}

w::
tooltip,接收指令
i:=10
while i<20
{
i :=i+1
;tooltip,%i%
;c()
wa()

}






;send,w		;不能发送给自己,也不能发送给另一个指令使其调用自己w的指令,不会生效


return





Esc::ExitApp  ; 退出脚本
return

r::
tooltip,重新加载
sleep,2000
reload		;重新加载脚本
return

