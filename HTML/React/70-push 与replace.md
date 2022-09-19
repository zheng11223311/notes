**push 压栈==>后进先出(栈顶先出)**

路由跳转默认push

push 会留下痕迹

**replace 模式(替换当前路径,即替换栈顶的第一个路径)**

replace  不会留下痕迹

```jsx
<Link replace={true} to={{ pathname: `/home/message/detail/` }}>{msgObj.title}</Link>
```

**简写**

```jsx
<Link replace to={{ pathname: `/home/message/detail/` }}>{msgObj.title}</Link>
```

