### 1.NodeJS 使用

- 安装
- 使用
- npm
- 模块化
- API 手册地址

**安装**

- 下载

  https://nodejs.org/download/release/

  https://npm.taobao.org/mirrors/node/

- 解压文件

  ```
  tar -xf node-vX.X.X-linux-x86.tar.xz
  ```

- 移动目录

  ```
  mv node-vX.X.X-linux-x86  /usr/local/node
  ```

- 配置环境变量

  ```
  vim ~/bash_profile
  在末尾添加node 命令所在路径
  ```

- 启动生效

  ```
  source ~/bash_profile
  ```

**源码安装nodejs**

- 下载	
- 解压
- 进入目录
- ./configure
- make &&make install

有时候提示需要升级g++ 版本,自行百度