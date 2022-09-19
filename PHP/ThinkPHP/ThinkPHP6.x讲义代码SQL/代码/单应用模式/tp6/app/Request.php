<?php
namespace app;

// 应用请求对象类
class Request extends \think\Request
{
    // 全局过滤
    // 对请求进行过滤
    // htmlspecialchars 转义标签
    protected $filter = ['htmlspecialchars'];
}
