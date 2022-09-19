<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class OrderShipped extends Mailable
{
    use Queueable, SerializesModels;
    protected $str;

    // 执行构造函数就会执行build() 里面的代码
    public function __construct($str)
    {
        //接收到传递过来的参数$str
        $this->str=$str;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // view指向 resources/views 
        return $this->view('emails.order',['str'=>$this->str]); //使用模板
    }
}
