### 1.VBScript 是什么

VBScript  程序语言是Microsoft 公司VB（Visual Basic）程旭语言加以简化，使其较易学习，且完全以配合网页设计为发展重点，除去了有安全性顾虑的指令，诸如读写删除文件或者执行系统调用程序等，使设计者可安心的在Internet 上传送，此外，又加上合适其他操作系统可移植性，并大大提高了执行效率，是的VBScript 广受网页设计者的欢迎

```vb
<script language="vbs">	'告诉浏览器使用VBScript 脚本语言 '单引号表示单行注释
<!--		'一般script 程序代码会放在注释中间，为了防止部分浏览器无法显示VBScript 程序时，就把程序视为忽略
msgbox "欢迎光临，敬请指正！"		'弹出信息框
-->
</script>
```

### 2.变量（variable）

VBSctipt 只有一种变量类型

```vb
<script language="vbs">	
score=75	'变量score 的值为75
msgbox "您的成绩为"&score		'& 为连接符号
score=90	'变量score 的值为90
msgbox "您的成绩已改为"&score		
</script>
```

### 3.数组

```vb
<script language="vbs">	
dim box(9)  'dim 申明变量 box(9) 长度为9的数组
box(2)=100  '临数组下标为2的项等于100
cr=chr(13)&chr(10)		'chr(13)&chr(10) 代表一个换行符'
msgbox "数字1="&box(1)&cr		
msgbox "数字2="&box(2)	

redim box(5) '重新声明数组，清除原来数组的数据
redim preserve box(2)  '重新声明数组，保存原来数组的数据
</script>

```

### 4.常量

```vb
<script language="vbs">	
msgbox "HELLO"&vbcrlf&"VBScript"	

const pi=3.14	'定义圆周率'
circle=3
area=circle^2*pi
msgbox "面积为"&area
</script>
```

### 5.运算符

```vb
<script language="vbs">	
'算术运算符'
12+3	'加法运算符'
12-3	'减法运算符'
12*3	'乘法运算符'
12/3	'除法运算符'
12\3	'整除'
12^3	'指数'
12 mod 3	'余数'
"您"&"好"		'字符串连接'

'比较运算符'
1==1		'等于'
<>		'不等于'
<		'小于
>		'大于
<=		'小于等于
>=		'大于等于

'逻辑运算符'
1<2 And 2>2
1<2 Or 2>2
</script>
```

### 6.流程控制

```vb
<script language="vbs">	
'if...then	如果...就...
score=70
if score>=60 then msgbox "及格！"  '在同一行可以不用写结束语句'
if score>=60 then 
        msgbox "及格！"
end if
    
'if...then...else...end if	如果...就...
if score>=60 then 
        msgbox "及格！"
else
        msgbox "不及格！"
end if
    
    
'if...then...elseif...then...elseif...then...end if
if score>=60 then 
        msgbox "不及格！"
elseif score>70 then
        msgbox "及格！"
elseif score>80 then
        msgbox "及格！"
end if

'select case 变量...case... case....end select'
select case score
    case 70
        msgbox "及格！"
     case 80
        msgbox "及格！"
     case 90
        msgbox "及格！"
    case esle
        msgbox "查询错误"   '所有结果都不匹配时显示'
    end select
    
  
</script>
```

输入函数InputBox 用法

变量=InputBox("显示信息","窗口标题")

InputBox 函数可以提供对话框让用户输入信息，并将用户输入的信息存入等号左边的变量中

### 7.计数循环

for 变量=起始值 to 终止值[step 步长]

```vb
<script language="vbs">	
total=0
for i=1 to 10
	total=total+i
next
msgbox "1加到10的总和为"&total

total1=0
for i=1 to 10 step 2
	total1=total1+i
next
msgbox "2+4+6+8+10的总和为"&total1
document.write("2+4+6+8+10的总和为"&total1)	'在页面上直接打印出来，支持解析 html '
</script>	
```

document.write() 是浏览器中的一个方法，在浏览器中有许多对象的属性和方法可供设计者使用，浏览器将自己本身的各部分，包括窗口，属性，标记等分成各种对象，而每个对象又提供不同的属性和方法

### 8.条件式循环

do while...loop

```vb
<script language="vbs">	
total='a'
do while ucase(total)<>"A"	'ucase() 将小写的字母转化为大写字母
    msgbox"不是a"
loop

do until ucase(total)<>"A"	'当条件为假时，执行。与上面相反
    msgbox"不是a"
loop

do 
    msgbox"不是a"
loop while ucase(total)<>"A"	'先执行在判断'
    
while ucase(total)<>"A"	'与do...while 没有区别
    msgbox"不是a"
wend   
    
</script>
```

### 9.子程序

sub 子程序名称

​	程序代码

end sub

```vb
<script language="vbs">	
msgbox "我在外面"

sub A		'可以传参，例如 sub A(参数)'
    msgbox "我在里面"
    exit sub	'终止子程序，像return 但是没有返回值，后面的代码不执行'
    msgbox "我不会被执行"
end sub

'调用子程序'
'A		'调用子程序A，像函数一样，但是没有返回值，有局部变量'
'A 参数1,参数2.。。
'A (参数1,参数2.。。)
'call A
'call A(参数。。。)

</script>
```

### 10.事件驱动

sub 对象_操作

​	程序代码

end sub

```vb
<script language="vbs">	
sub document_onclick	'监测页面的点击事件，触发执行函数'
    msgbox "我被点击了"
    
end sub

</script>
```

### 11.函数

function 函数名称(参数。。。)

​	程序代码

​	函数名称=程序需要返回的结果			//将结果返回出去

end function

```vb
<script language="vbs">	
function circle(n)
    circle=n*n*3.14		'将结果返回给circle'
    
end function

</script>
```

### 12.内置函数

日期与时间函数

```vb
<script language="vbs">	
msgbox now()	'显示今天的日期与现在的时间
msgbox data()	'显示今天(计算机系统)的日期
msgbox time()	'显示现在(计算机系统)的时间
msgbox year(data)	'显示本年的年份
msgbox month(data)	'显示本月的月份
msgbox day(data)	'显示今天的日期
msgbox hour(time)	'显示现在的时间几点钟
msgbox minute(time)	'显示现在的时间几分钟
msgbox second(time)	'显示现在的时间几秒钟

setTimeout "fn",1000	'定时器，fn 为回调函数在1s 后执行，1000 为毫秒=1s'
sub fn(){
        d.innerHtml=second(time)	'获取d 元素，写入时间'
        }
</script>
<div id='d'></div>
```

### 13.数学函数

```vb
<script language="vbs">	
msgbox sqr(4)	'2，返回参数的平方根
msgbox abs(-1)	'1，返回参数的绝对值
msgbox IsNumberic(11)	'True,检测是否为数字，结果为布尔值

msgbox month(data)	'显示本月的月份
msgbox day(data)	'显示今天的日期
msgbox hour(time)	'显示现在的时间几点钟
msgbox minute(time)	'显示现在的时间几分钟
msgbox second(time)	'显示现在的时间几秒钟

setTimeout "fn",1000	'定时器，fn 为回调函数在1s 后执行，1000 为毫秒=1s'
sub fn(){
        d.innerHtml=second(time)	'获取d 元素，写入时间'
        }
</script>
<div id='d'></div>
```

msgbox("显示内容"，"图标名称")	'弹出一个信息框

名称 					值								说明

vbCritical			16					显示“重要信息”图标（图标使用值或者名称都可以）

vbQuestion		32					显示“询问符号”图标

vbExclamation	48					显示“警告符号”图标

vbInformation	64					显示“信息符号”图标

msgbox("发现系统漏洞，请确定修补漏洞"，16，"金山毒霸提醒您")



vbOKOnly			0					只显示“确定”按钮

vbOKCancel		1					只显示“确定”及“取消”按钮

vbAbortRetryIngore		2					显示“终止”，“重试”及“忽略”按钮

vbYesNoCancel		3					显示“是”，“否”及“取消”按钮

vbYesNo		4					显示“是”，“否”按钮

vbRetryCancel		5					显示“重试”及“取消”按钮

msgbox("按钮示例"，1)

msgbox("按钮示例"，1+32)   使用1 和32 的图标

### 14.UBound() 函数与LBound()函数

```vb
<script language="vbs">	
dim a(3)
msgbox lbound(a)	'下标最小值为1'
msgbox ubound(a)	'下标最大值为3'
</script>
```

### 15.Int()函数

这个函数必须传入一个参数，并将这个参数的整数部分返回

```vb
<script language="vbs">	
a=123.111
msgbox Int(a)	'123
</script>
```

### 16.Fix()函数

这个函数和Int() 函数相同，也必需传入一个参数，并将这个参数的整数部分返回，他和Int() 函数的不同点是：如果传入的参数为负值时，那么Int() 函数返回的值小于负数的第一个值，而Fix() 函数会返回大于负数的第一个值

```vb
<script language="vbs">	
a=123.111
msgbox Fix(a)	'123
</script>
```

### 17.Rad()函数

这个函数可以产生介于0·1之间的随机数，使用加上Randomize（随机种子），来声明要使用随机数，由于Rad() 所产生的随机数时介于0·1之间的数，所以您必须用一些小技巧才可以使用，若要产生一个介于n~m 之间的随机数，可以使用下面的公式

Int((m-n+1)*Rad()+n)

```vb
<script language="vbs">	
Randomize	'VB 不区分大小写 randomize 也是正确的'
msgbox Rad()	'产生随机数
</script>
```

### 18.Instr()函数

这个函数可以用来搜索字符串

格式：Instr("被搜索字符串"，"欲搜索的字符串")

第一个参数时被搜索的字符串，第二个是想要在第一个参数中找到的字符串，如果搜索到想要的字符串，就会返回字符串在被搜索的字符串中从左边起的第几个字符

```vb
<script language="vbs">	
a='qqqq'
letter='asdsfghjklkjhgfd'
b=Instr(letter,a)	'下标从1开始
msgbox a & "是英文字母的第" & b & "个字母"
</script>
```

有时候搜索并不想从第一个字符开始搜索

Instr("开始搜索的文字",”被搜索的字符串“，”欲搜索的字符串“)

```vb
<script language="vbs">	
a='qqqq'
letter='asdsfghjklkjhgfd'	
b=Instr(5,letter,a)			'下标从1开始'
msgbox b
</script>
```

### 19.Len()函数

获取字符串的长度

格式：Len(”字符串“)

```vb
<script language="vbs">	
a='qqqq'
b=Len(a)	
msgbox b 	'4
</script>
```

### 20.InstrRev()函数

格式：Instr("被搜索字符串"，"欲搜索的字符串"，开始位置)

它和Instr 的区别是一个是从头开始搜索，一个是从后开始搜索

```vb
<script language="vbs">	
a='qqqq'
letter='asdsfghjklkjhgfd'
b=Instr(letter,a)	'得到倒数的字符串的从左到右的下标序号
b=Instr(letter,a，5)	'从后倒数下标5开始，得到倒数的字符串的从左到右的下标序号
msgbox a & "是英文字母的第" & b & "个字母"
</script>
```

### 21.Hex()函数，Oct()函数

十进制转换成十六进制和八进制

```vb
<script language="vbs">	
a=10000

b=hex(a)	
c=oct(a)
msgbox a & "的十六进制是" & b 
msgbox a & "的八进制是" & c
</script>
```

### 22.TRIM()函数

去掉字符串两边的空格

```vb
<script language="vbs">	
a="   10000   "

msgbox trim(a)  '10000
</script>
```

### 23.Mid(),left(),right()函数

left(”字符串“，取几个字)

right(”字符串“，取几个字)

mid(”字符串“，第几个字开始，取几个字)

```vb
<script language="vbs">	
a="adyafidsobdv"
b=left(a,5)		'adyaf
c=right(a,5)	'sobdv'
d=mid(a,1,3)	'ady，从第一个取3个字符'	
msgbox b&c&d
</script>
```

### 24.Replace()函数

Replace(”字符串“，要被替代的字，替代后的字)

```vb
<script language="vbs">	
a="ady"
b=replace(a,"a","bbc")
msgbox b	'bbcdy'
</script>
```

### 25.ASC()函数,CHR()函数

一个是将文字转换为ASCII

一个是将ASCII 转换为文字

```vb
<script language="vbs">	
a="a"
b=ASC(a)	'97'
c=chr(97)	'a'
msgbox b
</script>
```

### 26.String()函数

重复字符串函数，这个函数要传入两个参数，第一个参数必须是数值，代表所要重复的次数，第二个参数只能是文字，代表所要重复的字

格式：String(重复几次，要重复的字)

```vb
<script language="vbs">	
a="ad"
b=string(5,a)
msgbox b	'adadadadad'
</script>
```

### 27.Filter()函数

这个数组搜索函数可以搜索数组的数据，将搜索到数据的数组组成一个新数组返回，

格式：Filter(要搜索的数组，要搜索的字)

格式：String(重复几次，要重复的字)

```vb
<script language="vbs">	
dim a(5)
a(0)="happy1"
a(1)="happy2"
a(2)="ppy"
a(3)="hy"
a(4)="2happy"
b=filter(a,"happy")
for i=0 to ubound(b)
msg=msg&"b("&i&")="&b(i)&vbcrlf		'vbcrlf 代表换行'
'结果为b(1)=happy1 b(2)=happy2 b(3)=2happy'
msgbox msg
</script>
```

### 28.datapart(“w”，data())函数

一个星期几的返回值

日期							返回值

星期日							1

星期一							2

星期二							3

星期三							4

星期四							5

星期五							6

星期六							7

```vb
<script language="vbs">	

msg=datapart(“w”，data())
msgbox msg		'返回当前星期对应的返回值'
</script>
```

