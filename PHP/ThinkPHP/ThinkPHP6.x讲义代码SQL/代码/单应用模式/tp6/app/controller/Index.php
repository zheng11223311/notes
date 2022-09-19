<?php
namespace app\controller;
use app\BaseController;
use think\facade\Config;
//导入环境变量的命名空间
use think\facade\Env;

//访问 localhost/index/config 
class Index extends BaseController
{
    // 开启服务,命令行输入
    // php think run -p 8080
    public function index()
    {
        return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:) </h1><p> ThinkPHP V6<br/><span style="font-size:30px">13载初心不改 - 你值得信赖的PHP框架</span></p></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=64890268" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="eab4b9f840753f8e7"></think>';
    }

    public function hello($name = 'ThinkPHP6')
    {
        return 'hello,' . $name;
    }
    //访问 localhost/index/config 
    public function config()
    {
        //使用环境的方法
        //获取.env 环境文件的内容
        //return 出去页面也会显示
        // return Env::get('database.hostname');
        //使用配置方法,获取app\config 下的文件中的内容
        // return Config::get('database.connections.mysql.hostname');

        // 判断是否存在
        echo Env::has('database.hostname');
        echo Config::has('database.connections.mysql.hostname');
    }
}
