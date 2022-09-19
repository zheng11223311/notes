### MySQL8 数据库操作之数据库工具的介绍

phpadmin web 界面 运行在服务器端,可以连接自己的数据库,免费,缺点:暴露ip 等信息,容易被不法分子攻击

navicat 运行在本地的数据库,远程连接不如phpadmin 好使,使用图形化界面管理,收费

可以在学习猿地的猿材料下载,也可以在官网下载

学习猿地地址:lmonkey.com

**XAMPP 集成环境安装,无脑下一步安装即可**

由于XAMAPP 的MySQL 的端口和自己的MySQL 端口都是3306 会起冲突,在my.ini 修改自己的MySQL 端口号为3307

![Snipaste_2021-11-03_23-13-20](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_23-13-20.png)

停止自己MySQL

```sql
net stop mysql;
```

由于注册表使用的还是自己的数据库,需要更改为XAMAPP 的数据库

实现步骤:

1. cmd 输入 regedit
2. 找到HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MySQL
3. 更改ImagePath 为:"D:\xampp\mysql\bin\mysqld MySQL"
4. 保存即可使用xampp 中的MySQL

**navicat 的安装使用**

 注册表修改值,同上.路径为navicat mysqld的路径

修改规则

```sql
CREATE USER 'root'@'localhost'IDENTIFIED WITH mysql_native_password By '1234';
```

**直接点击使用**

