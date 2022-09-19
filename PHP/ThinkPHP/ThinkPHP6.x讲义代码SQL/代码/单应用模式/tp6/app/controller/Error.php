<?php
namespace app\controller;

class Error
{
    //页面不存在时,使用这个页面
    //app\config\app.php 配置文件错误文件使用的路径时,优先使用配置文件
    public function index()
    {
        return '当前控制器不存在！';
    }

    public function miss()
    {
        return '404，页面不存在！';
    }
}