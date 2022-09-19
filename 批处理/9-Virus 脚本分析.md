### 1.Virus 脚本分析

目录重复新建代码分析

**小病毒**

无限创建目录,消耗大量电量以及内存资源.在任务管理器中可以查看,在任务管理器中关闭进程,或在执行的cmd 窗口中按 crtl+c 终止

```bat
@echo off
rem 不断 新建文件夹并切换到新文件夹
:loop
md Virus
cd Virus
goto loop

pause>nul
exit
```

