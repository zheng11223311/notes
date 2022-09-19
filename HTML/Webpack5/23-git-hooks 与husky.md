### 1.git-hooks 与husky

为了保证团队里的开发人员提交的代码符合规范,我们可以在开发者上传代码时惊醒校验,我们常用husky 来协助进行代码提交时的eslint 校验,在使用husky 之前,我们先来研究一下`git-hooks`

- **git-hooks**

  我们回到项目的根目录下,运行ls-a 命令---------"-a" 可以显示隐藏目录(目录名的第一位是)

  我们可以看到,存在一个".git" 名称的文件夹

  事实上,在我们的项目中根目录下运行git 命令时,git 会根据它来工作

  接下来我们进入到这个文件夹,进一步查看它内部的内容

  ```shell
  cd .git
  ls -a
  ```

  我们发现它内部还挺有料,不慌,我们这节课仅仅只讲到其中的一个内容-----hooks,可以看到,.当前目录下存在一个hooks 文件夹,顾名思义,这个文件夹提供了 git 命令相关的钩子

  继续往里看

  ```shell
  cd hooks
  ls -a
  ```

  ok,那我们可以看到有很多git 命令相关的文件名,比如"pre-commit.sample pre-push.sample"

  回到正题---我们期望在git 提交(commit)前,对我们的代码进行检测,如果不能通过检测,就无法提交我们的代码

  自然而然的,这个动作的时机应该是?	------"pre commit",也就是说commit 之前

  现在,我们查看一下pre-commit.sample 的内容

  ```shell
  #cat 命令可以查看一个文件的内容
  cat pre-commit.sample
  #当前目录下创建文件pre-commit,  git commit 时会自动执行此文件
  touch pre-commit
  #输入
  echo '被执行'
  #执行检测,产生错误时,停止提交
  npx eslint ./src
  
  #按ESC 退出输入,按shift+: ,输入wq,回车 保存退出
  
  #给文件可执行的权限
  chmod +x .mygithooks/pre-commit
  ```
  
  当我们需要执行自定义路径下的pre-commit 文件(比如 ./.mygithooks/pre-commit),需要做如下配置
  
  ```shell
  #指定配置文件,在 .mygithooks 文件夹下的pre-commit
  git config	core.hooksPath .mygithooks
  
  # 查看config 配置
  cd .git
  ls
  cat config
  #显示
  #...
  hooksPath=.mygithooks
  ```
  
- **husky**

  使用husky 进行检擦语法错误

  安装

  ```
  npm install -D
  ```

  执行husky,使git-hooks生效

  ```
  npx husky install
  ```

  修改package.json 配置文件

  ```json
  //...
  {
      "scripts":{
          "prepare":"husky install"
      }
  }
  ```

  在.husky 目录下创建pre-commit 文件,写入内容

  ```
  npx eslint ./src
  ```

  执行提交

  ```
  git status
  git add .
  git commit -m "提交"
  ```

  

