;===============================================
;;; autohotkey 可以事先定义一些变量
note=Notepad.exe
gw=C:\Program Files\GoldWave\GoldWave.exe
!c::
    inputBox,command,enter command                                                          
    if ErrorLevel                                                                            
        return  
    else
        if (command=="note") ;打开notepad++
            ;;;打开指定文件夹 用两个百分号%%包围说明这是一个变量        
            run %note%  
        else if (command=="baidu")
            run http://www.baidu.com  ;;; 快速打开百度
        else if (command=="bi")
            run https://www.bilibili.com/
        else if (command=="c" || command=="d" || command=="e" || command=="f"|| command=="g")
            run %command%:/   ;;快速打开这些盘
        else if (command=="gw")
            run %gw%     ;;快速打开gw
    return
