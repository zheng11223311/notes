<?php

namespace App\Http\Controllers;

use App\Jobs\ProcessPodcast;
use Illuminate\Http\Request;

class Test9Controller extends Controller
{

    public function __invoke(Request $request)
    {
        //模拟发送邮件,耗时3s
        // info 向日志写入信息
        // 日志位置 storage/logs/laravel.log,不存在info 时会自动创建
        // 将其放入到队列中
        // info('开始发送');
        // sleep(3);
        // info('邮件发送成功');
        // 此时浏览器会一直在转动,处于加载中

        // 使用队列发送邮件
        //这个任务将被推送到默认队列...,
        ProcessPodcast::dispatch();
        // 这个任务将被推送到 "emails" 队列...
        // ProcessPodcast::dispatch()->onQueue('emails');

        // 然后使用php artisan queue:work 命令 运行cmd
        // 再次请求 http://localhost:8000/test9 
        // 浏览器直接加载成功,任务交给队列处理,
        // cmd 会显示处理的队列信息
    }
}
