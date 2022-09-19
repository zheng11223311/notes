### 1.LNMP 环境快速部署

N 代表Nginx

**Nginx 简介**

Nginx 使俄罗斯工程师开发下所出现的,2006年左右出现

**Nginx 与Apache 性能综合对比,如图**

| Web 服务器                             | Nginx(被应用更多) | Apache                                    |
| -------------------------------------- | ----------------- | ----------------------------------------- |
| 反向代理                               | 非常好            | 好                                        |
| Rewrite 规则                           | 非常好            | 好                                        |
| FastCGI(解释PHP 程序的)                | 好                | 差(因为Apache 自身带有解析PHP 程序的模块) |
| 热部署(部署服务器时可以不用关闭服务器) | 支持              | 不支持                                    |
| 系统压力比较(在于访问量大的情况下)     | 很小              | 小                                        |
| 稳定性(压力小,稳定性就大)              | 非常好            | 好                                        |
| 安全性                                 | 一般              | 好                                        |
| 技术资料(与它的出现时间长短有关)       | 很少              | 非常多                                    |
| 静态文件处理                           | 非常好            | 一般                                      |
| 虚拟主机                               | 支持              | 支持                                      |
| 内存消耗                               | 非常小            | 很大                                      |

**1.准备工作**

恢复快照,初始化安装;设置永久IP;关闭防火墙

```
setup
service network restart    //重启网络设备
```

安装包 Inmp1.2-full.tar.gz 上传至服务器

服务器需要3GB 以上硬盘剩余空间

MySQL 5.6 以及MariaDB 10 必须1GB 以上内存

确定 yum 源正常使用!

```
cd /etc/yum.repos.d/
ls
mv CentOS.Base.repo  CentOS-Base.repo.bak
vim CentOS-Media.repo 
修改bvaseurl=file:///media/
gpgcheck=0
enabled=1
选择虚拟机的CD/DVD 到已连接
mount /dev/sr0 /media/
```

**2.安装步骤**

```
ls
tar -zxvf inmp1.2-full.tar.gz
ls
cd inmp1.2-full
ls
cd src       //源码包的存放位置
ls            
cd ..
ls
./install.sh lnmp   //运行.sh 安装lnmp
(如果需要安装LNMPA(同时安装Apache 和Nginx,利用性能互补,比如处理静态页面的互补) 或LNMP,将./install.sh 后面的参数替换为inmpa 或lamp 即可)
显示设置MySQl 密码
选择Y ,安装innoDB 引擎
选择数据库的版本,选择3,即5.6版
选择PHP 的版本:选择5,即5.6 版
选择内存管理器: 学习阶段选1,不安装
```

