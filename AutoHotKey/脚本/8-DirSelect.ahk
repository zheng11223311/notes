w::
ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/1-1.png	;
sleep,1000
tooltip,%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/1-2.png	;
sleep,1000
tooltip,查找1-2----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击



ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/1-3.png	;
sleep,1000
tooltip,查找1-3----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击



ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/2-1.png	;
sleep,1000
tooltip,查找2-1----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/2-2.png	;
sleep,1000
tooltip,查找2-2----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/2-3.png	;
sleep,1000
tooltip,查找2-3----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/3-1.png	;
sleep,1000
tooltip,查找3-1----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击


ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/3-2.png	;
sleep,1000
tooltip,查找3-2----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击



ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/3-3.png	;
sleep,1000
tooltip,查找3-3----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击




ImageSearch, FoundX, FoundY, 50, 200,500, 530, ../img/幻三/4-1.png	;
sleep,1000
tooltip,查找4-1----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击



sleep,1000		;等待挖宝出现
ImageSearch, FoundX, FoundY, 50, 200,500, 630, ../img/幻三/5.png	;
sleep,1000
tooltip,查找继续挖宝----%FoundX%

sleep,2000
click,%FoundX%, %FoundY%		;在活动窗口的位置点击

return

send,w


return


Esc::ExitApp  ; 退出脚本
return
r::reload		;重新加载脚本
return
