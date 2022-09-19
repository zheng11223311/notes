<?php
namespace app\controller;
use app\listener\TestListen;
use think\facade\Event;

class TestEvent
{
    // 事件
    // 使用命令,创建监听类
    // php think make:listener TestListen
    // app\listener\TestListen.php
    public function __construct()
    {
        //监听器，动态
        // 注册监听器
        // (监听器标识名,监听器操作)
        Event::listen('TestListen', function ($param) {
            echo '监听器被触发！'.$param;
        });
    }

    public function info()
    {
        echo '登录前准备！';
        // app\event.php 配置文件,配置后,所有触发器触发的都是配置文件中指定的标识对应的监听器操作,
        // 而不是这里配置的标识对应的监听器操作,如果配置文件中没有这个标识,则触发这里的
        // 触发监听器
        // (触发的监听器标识名,;传递的参数)
        Event::trigger('TestListen', 'ok');
        // (监听器标识名,app\linistener 下的监听器操作类)
        // Event::listen('TestListen', TestListen::class);
        // 触发监听器
        // event('TestListen');

    }

    // 创建订阅类
    // php think make:subscribe UserSub
    // app\subscribe\UserSub.php
    public function login()
    {
        echo '登录成功！';
        // 调用app\subscribe\UserSub.php 下的onUserLogin 方法
        // 需要在app\event.php 下将这个订阅类UserSub 注册,就可以调用其下方法
        event('UserLogin');
    }

    public function logout()
    {
        echo '退出成功！';
        event('UserLogout');
    }


    // 创建事件类
    // php think make:event UserEvent
    // app\event\UserEvent.php 

}