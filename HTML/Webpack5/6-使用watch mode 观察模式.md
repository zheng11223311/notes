### 1.使用watch mode 观察模式

在每次编译代码时,手动运行`npx webpack`会显得很麻烦

我们可以在`webpack`启动时添加 `watch` 参数,如果其中一个文件被更新,代码将被重新编译,所以你不必再去手动运行整个构建

```
webpack --watch
或
npx  webpack --watch
```

