### 1.schtasks 详解

安排命令和程序定期运行或在指定时间内运行。从计划表中添加和删除任务，按需要启动和停止任务，显示和更改计划任务。

若要查看该命令语法，请单击以下命令：

schtasks create

创建新的计划任务。

## MS-DOS命令语法

schtasks /create /tn TaskName /tr TaskRun /sc schedule [/mo modifier] [/d day] [/m month[,month...] [/i IdleTime] [/st StartTime] [/sd StartDate] [/ed EndDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]] /?

## MS-DOS命令参数



## MS-DOS命令注释

- SchTasks.exe 不验证程序文件的位置或用户帐户密码。如果没有为用户帐户输入正确的文件位置或正确的密码，任务仍然可以创建，但不会运行。另外，如果帐户的密码更改或过期，而且没有更改存储在任务中的密码，那么任务也不会运行。
- NT Authority\System 帐户没有交互式登录权限。用户看不到以系统权限运行的程序，不能与之交互。
- 每个任务只运行一个程序。但是，可以创建一个批处理文件来启动多个任务，然后计划一个任务来运行该批处理文件。
- 只要创建了任务就可对其测试。使用 run 操作来测试任务，然后从SchedLgU.txt 文件 ( Systemroot\SchedLgU.txt )中查阅错误。

## 每个计划类型的语法和范例。

若要查看该命令语法，请单击以下命令：

schtasks create minute

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc minute [/mo {1 - 1439}] [/st StartTime] [/sd StartDate] [/ed EndDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划任务每 20 分钟运行一次。

下面的命令计划安全脚本 Sec.vbs 每 20 分钟运行一次。由于命令没有包含起始日期或时间，任务在命令完成 20 分钟后启动，此后每当系统运行它就每 20 分钟运行一次。请注意，安全脚本源文件位于远程计算机上，但任务在本地计算机上计划并执行。

schtasks /create /sc minute /mo 20 /tn "Security Script" /tr \\central\data\scripts\sec.vbs

作为响应，SchTasks.exe 显示一条消息来说明任务会以当前用户的权限运行并需要当前用户的密码。输入密码时，SchTasks.exe 不显示键入的文本。

```sql
The task will be created under current logged-in user name.



Please enter the password



************
```

然后 SchTasks.exe 显示一条消息表明已计划该任务：

```
成功：计划任务 "Security Script" 已成功创建。
```

查询显示命令计划的任务：

```diff
TaskName                  Next Run Time            Status



========================= ======================== ==============



Security Script           10:50:00 AM , 4/4/2001
```

schtasks create hourly

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc hourly [/mo {1 - 365}] [/st StartTime] [/sd StartDate] [/ed EndDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划命令在每小时过五分的时候运行。

下面的命令将计划 MyApp 程序从午夜过后五分钟起每小时运行一次。因为忽略了 /mo 参数，命令使用了小时计划的默认值，即每 (1) 小时。如果该命令在 12:05 A.M 之后生成，程序将在第二天才会运行。

schtasks /create /sc hourly /st 00:05:00 /tn "My App" /tr c:\apps\myapp.exe

#### 计划命令每五小时运行一次

下面的命令计划 MyApp 程序从2001 年 3 月的第一天起每五小时运行一次。它使用 /mo 参数来指定间隔时间，使用 /sd 参数来指定起始日期。由于命令没有指定起始时间，当前时间被用作起始时间。

schtasks /create /sc hourly /mo 5 /sd 03/01/2001 /tn "My App" /tr c:\apps\myapp.exe

schtasks create daily

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc daily [/mo {1 - 365}] [/st StartTime] [/sd StartDate] [/ed EndDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划任务每天运行一次

下面的范例计划 MyApp 程序在每天的 8:00 A.M. 运行一次，直到 2001 年 12 月 31 日结束。由于它忽略了 /mo 参数，所以使用默认间隔 1 来每天运行命令。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc daily /st 08:00:00 /ed 12/31/2001

#### 计划任务每隔一天运行一次

下面的范例计划 MyApp 程序从2001 年 12 月 31 日起每隔一天在 1:00 P.M. (13:00) 运行。命令使用 /mo 参数来指定两 (2) 天的间隔。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc daily /mo 2 /st 13:00:00 /sd 12/31/2001

schtasks create weekly

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc weekly [/d {MON - SUN | *}] [/mo {1 - 52}] [/st StartTime] [/sd StartDate] [/ed EndDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划任务每六周运行一次

下面的命令计划 MyApp 程序在远程计算机上每六周运行一次。该命令使用 /mo 参数来指定间隔。它也使用 /s 参数来指定远程计算机，使用 /ru 参数来计划任务以用户的 Administrator 帐户权限运行。因为忽略了 /rp 参数，SchTasks.exe 会提示用户输入 Administrator 帐户密码。

另外，因为命令是远程运行的，所以命令中所有的路径，包括到 MyApp.exe 的路径，都是指向远程计算机上的路径。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc weekly /mo 6 /s Server16 /ru Admin01

#### 计划任务每隔一周在周五运行

下面的命令计划任务每隔一周在周五运行。它使用 /mo 参数来指定两周的间隔，使用 /d 参数来指定是一周内的哪一天。如计划任务在每个周五运行，要忽略 /mo 参数或将其设置为 1。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc weekly /mo 2 /d FRI

schtasks create monthly

### 语法



### 范例

#### 计划任务在每月的第一天运行

下面的命令计划 MyApp 程序在每月的第一天运行。因为默认修饰符是 none（即：没有修饰符），默认天是第一天，默认的月份是每个月，所以该命令不需要任何其它的参数。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc monthly

#### 计划任务在每月的最后一天运行

下面的命令计划 MyApp 程序在每月的最后一天运行。它使用 /mo 参数指定在每月的最后一天运行程序，使用通配符 (*) 与 /m 参数表明在每月的最后一天运行程序。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc monthly /mo lastday /m *

#### 计划任务每三个月运行一次

下面的命令计划 MyApp 程序每三个月运行一次。.它使用 /mo 参数来指定间隔。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc monthly /mo 3

#### 计划任务在每月的第二个周日运行

下面的命令计划 MyApp 程序在每月的第二个周日运行。它使用 /mo 参数指定是每月的第二周，使用 /d 参数指定天。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc monthly /mo SECOND /d SUN

#### 计划任务在五月和六月的第 15 天运行。

下面的命令计划 MyApp 程序在五月 15 日和六月 15 日的 3:00 PM (15:00) 运行。它使用 /d 参数来指定日期，使用 /m 参数指定月份。它也使用 /st 参数来指定开始时间。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc monthly /d 15 /m MAY,JUN /st 15:00:00

schtasks create once

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc once /st StartTime /sd StartDate [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划任务运行一次

下面的命令计划 MyApp 程序在 2002 年 1 月 1 日午夜运行一次。它使用 /ru 参数指定以用户的 Administrator 帐户权限运行任务，使用 /rp 参数为 Administrator 帐户提供密码。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc once /st 00:00:00 /sd 01/01/2002 /ru Admin23 /rp p@ssworD1

schtasks create onstart

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc onstart [/sd StartDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划任务在每次系统启动的时候运行

下面的命令计划 MyApp 程序在每次系统启动的时候运行，起始日期是 2001 年 3 月 15 日。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc onstart /sd 03/15/2001

schtasks create onlogon

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc onlogon [/sd StartDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划任务在用户登录到远程计算机的时候运行

下面的命令计划批处理文件在用户（任何用户）每次登录到远程计算机上的时候运行。它使用 /s 参数指定远程计算机。因为命令是远程的，所以命令中所有的路径，包括批处理文件的路径，都指定为远程计算机上的路径。

schtasks /create /tn "Start Web Site" /tr c:\myiis\webstart.bat /sc onlogon /s Server23

schtasks create onidle

### 语法

schtasks /create /tn TaskName /tr TaskRun /sc onidle /iIdleTime [/sd StartDate] [/s computer [/u [domain\]user /p password]] [/ru {[Domain\]User | "System"} [/rp Password]]

### 范例

#### 计划某项任务在计算机空闲的时候运行

下面的命令计划 MyApp 程序在计算机空闲的时候运行。它使用必需的 /i 参数指定在启动任务之前计算机必需持续空闲十分钟。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc onidle /i 10

## 更多范例

若要查看范例，请单击范例名称：

创建以 System 权限运行的任务

下面的命令计划 MyApp 程序以 NT Authority\System 帐户权限运行。在这个范例中，任务计划在每月的第一天运行，但对于以系统权限运行的任务可以使用所有的计划类型。

该命令使用 /ru "System" 参数指定系统安全上下文。因为系统任务不需要密码，所以忽略了 /rp 参数。

schtasks /create /tn "My App" /tr c:\apps\myapp.exe /sc monthly /d 1 /ru "System"

作为响应，SchTasks.exe 显示一个信息性消息和一个成功消息。它不提示输入密码。

```javascript
信息：此任务将被创建于用户名下 ("NT AUTHORITY\SYSTEM")。



成功：计划任务 "My App" 已成功创建。
```

创建运行多个程序的任务

每个任务只能运行一个程序。但是可以创建一个运行多个程序的批处理文件，然后计划一个任务来运行该批处理文件。下面的过程说明了这个方法：

1. 创建一个启动要运行程序的批处理文件。

   在这个范例中创建了一个启动“事件查看器”(Eventvwr.exe) 和“系统监视器”(Perfmon.exe) 的批处理文件。

   - 启动文本编辑器，例如“记事本”。

   - 键入每个程序的名称和指向可执行文件的完全合格的路径。在这种情况下，文件包含有下列语句。

     C:\Windows\System32\Eventvwr.exe
     C:\Windows\System32\Perfmon.exe

   - 将文件存储为 MyApps.bat。

2. 使用 SchTasks.exe 创建一个运行 MyApps.bat 的任务。

   下面的命令创建了 Monitor 任务，每当有人登录它就运行。它使用 /tn 参数命名任务，使用 /tr 参数运行 MyApps.bat。它使用 /sc 参数来指明 OnLogon 计划类型，使用 /ru 参数指定 Administrator 帐户。

   schtasks /create /tn Monitor /tr C:\MyApps.bat /sc onlogon /ru Reskit\Administrator

   该命令的结果是，每当用户登录到计算机，任务就启动“事件查看器”和“系统监视器”。

更改计划任务



更改一个或多个下列任务属性。

- 任务运行的程序 (/tr)。
- 任务运行的用户帐户 (/ru)。
- 用户帐户的密码 (/rp)。

## MS-DOS命令语法

schtasks /change /tn TaskName [/s computer [/u [domain\]user /p password]] [/tr TaskRun] [/ru [Domain\]User | "System"] [/rp Password]

## MS-DOS命令参数



## MS-DOS命令注释

- /tn 和 /s 参数标识该任务。/tr、/ru 和 /rp 参数指定可以更改的任务属性。
- 使用 change 操作的命令必须至少更改一个任务属性。
- NT Authority\System 帐户没有交互式登录权限。用户看不到以系统权限运行的程序，不能与其交互。

## MS-DOS命令范例

### 更改任务运行的程序

下面的命令将 Virus Check 任务运行的程序由 VirusCheck.exe 更改为 VirusCheck2.exe。此命令使用 /tn 参数标识任务，使用 /tr 参数指定任务的新程序。（不能更改任务名称。）

schtasks /change /tn "Virus Check" /tr C:\VirusCheck2.exe

作为响应，SchTasks.exe 显示以下成功消息：

```javascript
成功：计划任务 "Virus Check" 的参数已更改。
```

此命令的结果是，Virus Check 任务现运行 VirusCheck2.exe。

### 更改远程任务的用户密码

下面的命令更改用于远程计算机 Svr01 上 RemindMe 任务的用户帐户密码。命令使用 /tn 参数标识任务，使用 /s 参数指定远程计算机。它使用 /rp 参数指定新的密码 p@ssWord3。

在用户帐户密码过期或更改的时候需要此过程。如果存储在任务中的密码无效，那么任务不会运行。

schtasks /change /tn RemindMe /s Svr01 /rp p@ssWord3

作为响应，SchTasks.exe 显示以下成功消息：

```javascript
成功：计划任务 "RemindMe" 的参数已更改。
```

这个命令的结果是，RemindMe 任务现在以其初始的用户帐户运行，但拥有一个新密码。

### 更改任务的程序和用户帐户

下面的命令更改任务运行的程序以及任务运行的用户帐户。实质上，它将旧的计划用于新的任务。这个命令将每天早上 9:00 a.m. 启动 "Notepad.exe" 的 Notepad 任务更改为启动 "Internet Explorer"。

该命令使用 /tn 参数来标识任务。它使用 /tr 参数更改任务运行的程序，使用 /ru 参数更改任务运行凭据的用户帐户。

忽略为用户帐户提供密码的 /rp 参数。必须为帐户提供密码，但可以使用 /rp 参数以及在明文中键入密码，或等待 SchTasks.exe 要求输入密码的提示，然后以不显示文本的方式输入密码。

schtasks /change /tn Notepad /tr "c:\program files\Internet Explorer\iexplore.exe" /ru DomainX\Admin01

作为响应，SchTasks.exe 索要用于用户帐户的密码。它不显示键入的文本，因此密码不可见。

```rust
Please enter the password for DomainX\Admin01: *********
```

请注意，/tn 参数标识任务，/tr 和 /ru 参数更改任务的属性。不能使用另外一个参数来标识任务，而且不能更改任务的名称。

作为响应，SchTasks.exe 显示以下成功消息：

```javascript
成功：计划任务 "Notepad" 的参数已更改。
```

这个命令的结果是：RemindMe 任务现在以其初始的用户帐户运行，但拥有一个新密码。

### 将程序更改为 System 帐户

下面的命令更改了 SecurityScript 任务以使其以 NT Authority\System 帐户权限运行。它使用 /ru "" 参数来表示 System 帐户。

schtasks /change /tn SecurityScript /ru ""

作为响应，SchTasks.exe 显示以下成功消息：

```javascript
成功：计划任务 "SecurityScript" 的参数已更改。
```

因为任务以 System 帐户权限运行不需要密码，所以 SchTasks.exe 不提示输入密码。

schtasks run



立即运行计划任务。run 操作忽略计划，但使用程序文件位置、用户帐户和存储在任务中的密码立即运行任务。

## MS-DOS命令语法

schtasks /run /tn TaskName [/s computer [/u [domain\]user /p password]] /?

## MS-DOS命令参数



## MS-DOS命令注释

- 使用这个操作来测试任务。如果任务没有运行，请检查“任务计划程序服务”事务日志 Systemroot\SchedLgU.txt 以获取错误。
- 运行任务不会影响任务计划，不会更改为任务计划好的下次运行时间。
- 要远程运行任务，必须在远程计算机上计划任务。在运行该任务时，它仅在远程计算机上运行。要验证任务正在远程计算机上运行，请使用“任务管理器”或“任务计划程序”事务日志 Systemroot\SchedLgU.txt。

## MS-DOS命令范例

### 在本地计算机上运行任务

下面的命令启动 "Security Script" 任务。

schtasks /run /tn "Security Script"

作为响应，SchTasks.exe 启动与任务相关联的脚本并显示以下消息：

```erlang
成功：计划任务 "Security Script" 正在运行 ...
```

### 在远程计算机上运行任务

下面的命令在远程计算机 Svr01 上运行 Update 任务：

schtasks /run /tn Update /s Svr01

此时，SchTasks.exe 显示以下错误消息：

```javascript
错误:无法运行计划任务 "Update"。
```

查看 Svr01 上的 “计划任务程序”事务日志 C:\Windows\SchedLgU.txt 以获取错误的原因。在这种情况下，日志中显示以下条目：

```vbnet
"Update.job" (update.exe) 3/26/2001 1:15:46 PM ** ERROR **



The attempt to log on to the account associated with the task failed, therefore, the task did not run.



  The specific error is



 0x8007052e:Logon failure:unknown user name or bad password.



 Verify that the task's Run-as name and password are valid and try again.
```

显然，任务中的用户名或密码在此系统中无效。下面的 schtasks /change 命令为 Svr01 上的 Update 任务更新用户名和密码：

schtasks /change /tn Update /s Svr01 /ru Administrator /rp PassW@rd3

在 change 命令完成之后，重新运行 run 命令。这一次，Update.exe 程序启动，SchTasks.exe 显示以下消息：

```javascript
错误：无法运行计划任务 "Update"。
```

schtasks end



终止由任务启动的程序

## MS-DOS命令语法

schtasks /end /tn TaskName [/s computer [/u [domain\]user /p password]] /?

## MS-DOS命令参数



## MS-DOS命令注释

- SchTasks.exe 只终止由计划任务启动的程序实例。要终止其它程序，请使用 TaskKill。它是一个包含在 Windows XP Professional中的工具。有关 TaskKill 的详细信息，请参阅 [TaskKill](http://www.feiesoft.com/windows/ntcmds/taskkill.htm)。

## MS-DOS命令范例

### 终止本地计算机上的任务

下面的命令终止由 My Notepad 任务启动的 Notepad 实例：

schtasks /end /tn "My Notepad"

作为响应，SchTasks.exe 终止了由任务启动的 Notepad 实例并显示以下成功消息：

```javascript
 成功：计划任务 "My Notepad" 已成功终止。
```

### 终止远程计算机上的任务

下面的命令终止远程计算机 Svr01 上由 InternetOn 任务启动的 Internet Explorer 实例：

schtasks /end /tn InternetOn /s Svr01

作为响应，SchTasks.exe 停止由任务启动的 Internet Explorer 实例并显示以下成功消息：

```erlang
成功：计划任务 "Update" 正在运行...
```



schtasks delete

删除计划任务

## MS-DOS命令语法

schtasks /delete /tn {TaskName | *} [/f] [/s computer [/u [domain\]user /p password]] [/?]

## MS-DOS命令参数



## MS-DOS命令注释

- delete 操作从计划表中删除任务。它不删除任务运行的程序或中断正在运行的程序。
- delete * 命令删除所有为计算机计划的任务，而不是仅删除由当前用户计划的任务。

## MS-DOS命令范例

### 从远程计算机上的计划表中删除任务

下面的命令从远程计算机上的计划表中删除 "Start Mail" 任务。它使用 /s 参数来标识远程计算机。

schtasks /delete /tn "Start Mail" /s Svr16

作为响应， SchTasks.exe 显示以下确认消息。要删除任务，请键入 y。要取消命令，请键入 n：

```javascript
警告您确定要删除任务 "Start Mail" 吗 (Y/N )? y



成功:已成功删除计划任务 "Start Mail"。
```

### 删除所有为本地计算机计划的任务。

下面的命令从本地计算机的计划表中删除所有的任务，包括由其它用户计划的任务。它使用 /tn * 参数代表计算机上所有的任务，使用/f 参数取消确认消息。

schtasks /delete /tn * /f

作为响应，SchTasks.exe 显示以下成功消息以表明只删除了计划任务 SecureScript。

```
成功：计划任务 "SecureScript" 已成功删除。
```

schtasks query

显示计划在计算机上运行的所有任务，包括那些由其它用户计划的任务。

## MS-DOS命令语法

schtasks [/query] [/fo {TABLE | LIST | CSV}] [/nh] [/v] [/s computer [/u [domain\]user /p password]]

## MS-DOS命令参数



## MS-DOS命令注释

- query 操作列出了为计算机计划的所有任务，而不只是由当前用户计划的任务。

## MS-DOS命令范例

### 显示本地计算机上的计划任务。

下面的命令显示为本地计算机计划的所有任务。这些命令得到的结果相同，并可以交换使用。

schtasks

schtasks /query

作为响应，SchTasks.exe 以默认的简单表格格式显示任务，如下表所示：

```sql
TaskName                  Next Run Time             Status



========================= ======================== ==============



Microsoft Outlook         At logon time



SecureScript              14:42:00 PM ， 2/4/2001
```

### 显示计划任务的高级属性

下面的命令要求详细的显示本地计算机上的任务。它使用 /v 参数来请求详细显示，使用 /fo LIST 参数来将显示格式化成易于阅读的列表。这个命令可以用来验证创建的任务有预期的循环模式。

schtasks /query /fo LIST /v

作为响应，SchTasks.exe 显示所有任务的详细属性列表。下面的显示给出了一个计划在每月最后一个周五的 4:00 A.M. 运行的任务的列表：

```sql
HostName：RESKIT01



TaskName:SecureScript



Next Run Time：4:00:00 AM ， 3/30/2001



Status:Not yet run



Last Run Time：Never



Last Result：                               0



Creator：user01



Schedule：At 4:00 AM on the last Fri of every month, starting 3/24/2001



 Task To Run:： C:\WINDOWS\system32\notepad.exe



 Start In:notepad.exe



 Comment:N/A



 Scheduled Task State:Enabled



Scheduled Type：Monthly



Modifier：Last FRIDAY



Start Time4:00:00 AM



Start Date:                                3/24/2001



End Date：N/A



Days:FRIDAY



Months:JAN、FEB、MAR、APR、MAY、JUN、JUL、AUG、SEP、OCT、NOV、DEC



Run As User:RESKIT\user01



Delete Task If Not Rescheduled:Enabled



Stop Task If Runs X Hours and X Mins:      72:0



Repeat:Until Time：Disabled



Repeat:Repeat:Disabled



Repeat:Stop If Still Running: Disabled



Idle: Start Time(For IDLE Scheduled Type): Disabled



Idle: Only Start If Idle for X Minutes: Disabled



Idle:If Not Idle Retry For X Minutes: Disabled



Idle: Stop Task If Idle State End: Disabled



Power Mgmt: No Start On Batteries: Disabled



Power Mgmt:Stop On Battery Mode: Disabled
```

### 将为远程计算机计划的任务记入日志

下面的命令请求为远程计算机计划的任务列表，并将任务添加到本地计算机中以逗号分隔的日志文件中。此命令的格式可以用来收集和跟踪为多个计算机计划的任务。

命令使用 /s 参数标识远程计算机 Reskit16，使用 /fo 参数指定格式，使用 /nh 参数取消列标题。>> 附加符号将输出重定向到本地计算机 Svr01 上的任务日志 p0102.csv。因为命令在远程计算机上运行，所以本地计算机路径必须是完全合格的。

schtasks /query /s Reskit16 /fo csv /nh >> \\svr01\data\tasklogs\p0102.csv

作为响应，SchTasks.exe 会把为计算机 Reskit16 计划的任务添加到本地计算机 Svr01 上的 p0102.csv 文件中。

## MS-DOS命令注释

- SchTasks.exe 执行的操作类似于“控制面板”中“计划任务”中的操作。可以使用两种工具中的任一种来创建、删除、配置或显示计划任务。

- 键入不带任何参数的 schtasks 执行查询。

- 用户必须是命令起作用的计算机上的 Administrators 组的成员。

- 要确认计划运行或要找出计划不运行的原因，请查看“任务计划”服务事务日志 Systemroot\SchedLgU.txt。该日志记录了由包括“计划任务”和 SchTasks.exe 在内的所有使用该服务的工具启动的尝试运行。

- 损坏任务文件的情况极少发生。已损坏文件不会运行。在已损坏任务上试图执行某项操作时，SchTasks.exe 显示以下错误消息：

  ```undefined
  错误：数据非法。
  ```

  已损坏任务无法恢复。要恢复系统的计划任务特征，请使用 SchTasks.exe 或“计划任务”从系统中删除任务并重新计划。

- SchTasks.exe 取代了包含在 Windows 早期版本中的工具 At.exe。