<?php
// 事件定义文件
return [
    // 事件类
    'bind'      => [
    ],

    // 监听类
    'listen'    => [
        // 标识名  =>触发函数
        // AppInit 系统初始化时条用
        // 'AppInit'  => [\app\listener\TestListen::class],
        'HttpRun'  => [],
        'HttpEnd'  => [],
        'LogLevel' => [],
        'LogWrite' => [],
        // 以上标识名由系统提供,达到条件时自动执行,不需要触发
        'TestListen'    =>  [
            \app\listener\TestListen::class,
            \app\listener\TestOne::class,
            \app\listener\TestTwo::class
        ]
    ],

    // 订阅类
    'subscribe' => [
        // 注册订阅类
        'UserSub' =>    \app\subscribe\UserSub::class
    ],
];
