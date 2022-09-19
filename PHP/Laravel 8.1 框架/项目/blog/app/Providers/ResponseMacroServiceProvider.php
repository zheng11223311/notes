<?php

namespace App\Providers;

use Illuminate\Support\Facades\Response;
use Illuminate\Support\ServiceProvider;


// 创建的文件ResponseMacroServiceProvider.php 需要添加到配置
// config/app.php 配置文件中'providers'  字段中,进行自动加载
class ResponseMacroServiceProvider extends ServiceProvider
{
    /**
     * 注册响应宏
     *
     * @return void
     */

    public function register()
    {
        //
    }

    public function boot()
    {
        // 在控制器中使用 response()->api($msg,$code,$data)
         Response::macro('api', function ($msg='',$code=200,$data='') {
            $resData=[
                'code'=>$code,
                'msg'=>$msg,
                'time'=>time(),
                'data'=>$data
            ];
            return response()->json($resData);
        });


        // 定义多个响应宏
        Response::macro('wechat', function ($msg='',$code=200,$data='') {
            $resData=[
                'code'=>$code,
                'msg'=>$msg,
                'time'=>time(),
                'data'=>$data
            ];
            return response()->json($resData);
        });
    }
}