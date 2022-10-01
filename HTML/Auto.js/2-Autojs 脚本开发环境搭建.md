### Autojs 脚本开发环境搭建

**1.Autojs 软件安装及简单使用**

- 4.1.1 版本的安装
- 8.0 pro 版本的安装
- 简单熟悉一下autojs 软件

**2.VSCode 编辑器的安装**

- 再扩展插件里面输入autojs 
- 找到并安装Auto.js-VSCodeExt,Auto.js-Pro-Ext  两个扩展插件
- 在文件>自动保存,可以自动保存文件
- 按crtl+shift+p  输入autojs,可以查看到autojs 的命令,带有中文提示的命令是pro版本的,这里我们只用英文的(4.版本的命令)
- 开启服务器端口:在命令中找到有autojs start 字样的就是
- 在cmd 中使用ipconfig /all 查看ip 地址,有 标有首选的IPv4 地址的 就是ip 地址
- 手机和电脑必须在同一个局域网下
- autojs 软件必须获取无障碍权限(因为自动操作需要无障碍权限),和悬浮权限(都在软件左侧处设置)
- 在手机上左侧栏>连接电脑>输入ip 即可
- 也可以在雷电模拟器连接(需要选着桥接模式,设置>网络设置>桥接模式>选择有wifi 字样的选项(否则无网络)),autojs 的操作同上
- 运行脚本:在命令中找到有autojs run (快捷键 F5)字样的就是,模拟器会做出相应的操作
- 手机连接wifi,点击连接的wifi 查看详情,查看到ip 地址信息 ,除了最后一个点( . )后面的不一样,前面的都一样就是在同一个局域网,也可以直接运行文件,手机有相应的操作也是连接成功
- 在vscode 中上方导航栏中>帮助>切换开发人员工具,显示调试信息,在调试工具中使用console 栏查看错误等信息

**3.Autojs 插件安装和使用**

**4.VSCode 编辑器的使用教程**

**5.安卓手机投屏软件的安装和使用**

**6.雷模拟器的安装和使用**



**示例:**

demo.js,

vscode 打开文件,按F5运行脚本

按shift+F5停止当前脚本

ctrl+shift+p 查看其他命令

```js
toast("autojs 初体验");
sleep(1);

// shell 交互,需要root 权限,可以查看手机是否有root 权限
var result = shell("am force-stop com.tencent.mm", true);
log(result);
console.show();
if(result.code == 0){
toast("执行成功");
}else{
toast("执行失败！请到控制台查看错误信息");
}
```

