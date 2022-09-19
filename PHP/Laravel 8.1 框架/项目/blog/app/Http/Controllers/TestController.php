<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// 需要继承基础控制器Controller
class TestController extends Controller
{
    // public function test(){
    //     dd('test');
    // }

    // 接收参数
    public function test($id){
        dd($id);
    }

}
