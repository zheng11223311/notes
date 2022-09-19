<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class BlogComment extends Mailable
{
    use Queueable, SerializesModels;

    protected $comment;

    public function __construct($comment)
    {
        $this->comment=$comment;
    }


    public function build()
    {
        // 邮件使用的模板
        return $this->view('emails.blog-comment',['comment'=>$this->comment]);
    }
}
