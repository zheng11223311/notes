> electron安装持续失败T_T，，，总结下搜到的方法，总有一个适合你~
>
> 最后用的是yarn+淘宝镜像，避开天坑后，秒速安装！美滋滋
>
> 官网：https://electronjs.org/docs/tutorial/installation
>



## 网络问题

典型报错：read ECONNRESET，一般是无法翻墙获取国外资源导致的，可选方法如下：

1、连VPN，直通外网。官方推荐npm，vue cli3默认yarn（最后用的yarn，暂时没发现问题），切换包管理器看这里。

```js
npm install electron --save-dev
yarn add electron --dev
```

2、设置淘宝镜像，淘宝旗下有非常全的NPM镜像，且更新及时，无需翻墙。淘宝镜像：https://npm.taobao.org/

查看当前镜像：

```js
npm config get registry
yarn config get registry
```

一般包的设置，以express为例：

```js
//设置临时镜像
npm --registry https://registry.npm.taobao.org install express
yarn save express --registry https://registry.npm.taobao.org

//设置永久镜像
npm config set registry https://registry.npm.taobao.org
 yarn config set registry https://registry.npm.taobao.org

```

或修改配置文件~/.npmrc也是永久设置：

```js
registry=https://registry.npm.taobao.org
```

~/.yarnrc文件：

```js
registry "https://registry.npm.taobao.org"
```

 单独设置某个包的镜像，如electron，其镜像： https://npm.taobao.org/mirrors/electron/，命令如下：

```js
npm config set electron_mirror https://npm.taobao.org/mirrors/electron/
yarn config set electron_mirror https://npm.taobao.org/mirrors/electron/
```

或修改~/.npmrc文件：

```js
registry=https://registry.npm.taobao.org
electron_mirror=https://npm.taobao.org/mirrors/electron/
```

~/.yarnrc文件：

```js
registry "https://registry.npm.taobao.org"
electron_mirror "https://npm.taobao.org/mirrors/electron/"
```

天坑（捂脸哭）： 用yarn+淘宝镜像方法时，一直卡在Building fresh package... fsevents ...electron，并没有像别人家的秒速安装，该配的都配了，百思不得其解。然后！灵光一闪！想起来.yarnrc文件里多了一句 lastUpdateCheck，没有查到这句具体作用，猜测用来标记是否检查更新的，导致安装时没有走淘宝镜像。。。送给自己一个呵呵。。。删掉这句后真的秒速Done啊！心疼浪费的一个晚上，嘤嘤嘤

```js
registry "https://registry.npm.taobao.org"
electron_mirror "https://npm.taobao.org/mirrors/electron/"

lastUpdateCheck 1549116918628 # 删掉 删掉
```


Tips：electron下载略慢，可通过--verbose参数显示下载进度：

```js
npm install --verbose electron
yarn add --verbose electron
yarn global add --verbose electron		//全局安装
```



# 权限问题

典型报错：EACCESS 或 permissions denied，一般加sudo即可，不行再设置--unsafe-perm

```js
sudo npm install electron --unsafe-perm=true
```

————————————————
版权声明：本文为CSDN博主「mocoe」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/mocoe/article/details/86751925







# 在win10上在搭建electron-vue项目时，使用npm install命令报错

**报错：**

```
Error: Electron failed to install correctly, please delete node_modules/electron and try installing again
```

 **解决方法：**

```
命令行进入项目中node_modules/electron目录，运行node install.js命令即可
```





这个错误是由于npm 在安装electron时有组件没下载下来导致的，虽然出错了但是出错的部分没有在日志里显示

在安装时采取命令 ` npm install electron -g -verbose ` 来显示完整的日志

导致下载失败的可能原因：

1.没有修改镜像而导致网络问题下载失败 

2.使用镜像时下载路径与镜像服务器上的文件路径不一致

解决方法:

1.下载失败的文件是electron需要的一部分文件，electron所有需要的文件都在 `install.js` 文件中，通过它重新安装来找到文件在镜像站上的正确位置
2.有 *可行的网络条件 可以不使用镜像直接下载，则避免使用镜像链接下载，以确保不因为第一次的下载路径错误而失败
3.使用镜像站，重新尝试下载





————————————————
版权声明：本文为CSDN博主「程序源-」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/weixin_46205984/article/details/120161129

