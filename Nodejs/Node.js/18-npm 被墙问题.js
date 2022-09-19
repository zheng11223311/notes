// 解决nom 被墙问题
// npm 储存包文件的服务在国外,有时候会被墙,速度很慢,所以我们需要解决这个问题
// http://npm.taobao.org 淘宝的开发团队把npm 在国内做了一个备份
// 安装淘宝的cnpm

// 在任意目录执行都可以
// --global 宝石安装到全局，而非当前目录
// --global 不能省略，否则不管用
// npm install --global cnpm

// 接下来安装包的时候吧之前的 npm 替换成cnpm
// 举个例子

// 这里是走国外的 npm 服务器,速度比较慢
// npm install jquery

// 使用cnpm  就会通过淘宝的服务器来下载jquery
// cnpm install jquery

// 如果不想安装cnpm 又想使用淘宝的服务器来下载
// npm install jquery --registry=https://registry.npm.taobao.org

// 但是每一次手动这样加参数很麻烦,所以我们可以把这个选项加入配置文件中
// 配置到淘宝服务器
// npm config set registry https:///registry.npm.taobao.org

// 查看npm 配置信息
// npm config list

// 只要经过了上面命令的配置，则你以后所有的npm install 都会默认通过淘宝
// 的服务器来下载
