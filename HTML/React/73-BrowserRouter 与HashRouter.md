**BrowserRouter 与HashRouter 的区别**

**1.底层原理不一样：**

​	BrowserRouter 使用的是H5 的history API，不兼容IE9 及以下版本

HashRouter 使用的是URl 的哈希值

**2.url 表现形式不一样**

​	BrowserRouter 的路径中没有#，例如：locasthost：3000/demo/test

​	HashRouter 的路径包含#，例如：locasthost：3000/#/demo/test

**3.刷新后对路由state 参数的影响**

​	1.BrowserRouter 没有任何影响，应为state保存在history 对象中

​	2.HashRouter 刷新后会导致路由state 参数的丢失

**4.备注：HashRouter 可以用于解决一些路径错误相关的问题**