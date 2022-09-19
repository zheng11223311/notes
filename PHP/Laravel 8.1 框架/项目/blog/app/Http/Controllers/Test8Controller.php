<?php

namespace App\Http\Controllers;

use App\Mail\OrderShipped;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class Test8Controller extends Controller
{

    public function __invoke(Request $request)
    {
        // 使用mail 门面模式,发送邮件,to 接收方邮件 OrderShipped() 传递参数
        Mail::to('z32404243334@qq.com')->send(new OrderShipped('hello'));
    }
}
