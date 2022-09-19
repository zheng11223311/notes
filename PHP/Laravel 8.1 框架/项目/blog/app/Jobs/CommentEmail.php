<?php

namespace App\Jobs;

use App\Mail\BlogComment;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class CommentEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $comment;
    public function __construct($comment)
    {
        $this->comment=$comment;
    }

    /**
     *执行队列
     *
     * @return void
     */
    public function handle()
    {
        //发送油价通知作者有新的评论
        Mail::to( $this->comment->blog->user)->send(new BlogComment( $this->comment));
    }
}
