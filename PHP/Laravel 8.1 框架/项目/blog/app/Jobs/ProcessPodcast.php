<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class ProcessPodcast implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        // 被 ProcessPodcast::dispatch(); 时
        // __construct (初始化) 和 handle() 都会被执行
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //处理队列的业务逻辑
        info('开始发送');
        sleep(3);
        info('邮件发送成功');
        
    }
}
