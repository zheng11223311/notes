<?php
namespace app\controller;

class HelloWorld
{   
    // windows 浏览器不区分大小写,都可以访问到,Linux 需要区分大小写
    // 正确用法:1和3
    //访问1 http://127.0.0.1:808/HelloWorld
    //访问2 http://127.0.0.1:808/helloworld
    //访问3 http://127.0.0.1:808/Hello_world

    public function index()
    {
        return 'index';
    }
}