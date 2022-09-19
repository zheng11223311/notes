### 1.Linux 文件操作命令

| 命令名称 | 选项 | 参数                                            |
| -------- | ---- | ----------------------------------------------- |
| more     |      | 文件名(查看文件内容)                            |
| touch    |      | 文件名(建立空文件夹)                            |
| mkdir    |      | 文件(创建文件夹,不能连续创建)                   |
|          | -p   | 递归创建文件夹,将不存在的每层文件夹都会创建出来 |

**用法**

```
more index.html		//查看index.html 文件内容,空格向下翻页,q 退出,b 向上翻页
touch index.php    //创建index.php 文件
```

### 2.文件和目录都能操作的命令

| 命令名称 | 选项 | 参数                           |
| -------- | ---- | ------------------------------ |
| cp       |      | 文件名/文件夹(复制文件/文件夹) |
| touch    |      | 文件名(建立空文件夹)           |
| mv       |      | 剪切和改名                     |
| rm       |      | 文件夹(删除文件夹)             |
|          | -r   | 文件和目录都可以删除           |
|          | -f   | 强制删除                       |

**用法**

```
cp index.html /tmp	//复制 index.html 文件到tmp 下
cp  -r bb /tmp    //-r  复制bb 文件夹到tmp 下,不包含内容 ,-a 包含bb 文件夹中的内容一起复制
mv index.php  a.php   //重命名
mv index.php  bb    //将文件移动到bb 文件夹中
mkdir -p aa/bb/cc/    //创建
rm -rf abc   //删除abc 文件夹
```

### 1.权限管理和命令

```
ls 查看
--rw-r--r--  root root index.html
权限位(10位)       属主   属组  文件名
第一位  文件类型  - 代表普通类型  d 代表目录
第二三四位 属主(u 代表user)  权限 rw-( r 代表可读,w 可写,x 可执行 -无权限)
第五六其位 属组(g 代表group) 权限 r-- (,可读权限,一组的权限)
第八九十位 其他人(o 代表其他人other) 权限 r--(可读)

使用数值表示权限
r - 4
w - 2
x - 1
无权限 - 0

rw-  6
r--  4
r--  4
所以普通文件权限(系统默认权限) 644
--rw-r--r--  root root index.html 644
drwxr-xr-x   root root aa  755   //默认文件夹权限位755

```

**权限修改**

```
chmod 修改权限
chmod u+x index.html  //u 代表属主,+ 增加,x 执行权限,为 index.html 文件增加权限
chmod u-x index.html //删除可执行权限
chmod u=rwx,g-x index.html  //对属主,属组权限进行赋值,覆盖原先权限 
chmod 644 index.html  //赋予默认权限
chmod 755 index.html  //赋予可读可写权限
chmod 777 index.html  //赋予最大权限
chmod 000 index.html  //赋予最小权限
```

**chown 修改文件的属主或者属组**

```
如果没有用户,创建用户
useradd aaa		//创建aaa 用户
pasword aaa     //为aaa 设置密码,后面会弹出
ls /home  //查看创建出来的用户的家

chown aaa index.html //修改index.html 的属主
chown :aaa index.html //修改index.html 的属组
使用ls -l //查看变化后的信息
chown aaa:aaa index.html  //同时修改属主和属组
```

