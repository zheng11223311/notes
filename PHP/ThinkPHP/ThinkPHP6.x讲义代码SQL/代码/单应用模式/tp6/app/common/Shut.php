<?php
namespace app\common;

class Shut
{
    // 服务系统
    // 将一个类对象注册到容器中去,方便调试
    // 作用:初始化,配置参数,扩展插件
    // 生成服务的服务类
    // php think make:service ShutService.php
    // 地址: app\service\ShutService.php
    protected static $name = 'Mr.Lee';

    // 静态,同上方 $name 保持一致,set+变量
    public static function setName($name)
    {
        self::$name = $name;
    }

    public function run()
    {
        halt(self::$name.'温馨提醒您，系统已关闭...');
    }
}