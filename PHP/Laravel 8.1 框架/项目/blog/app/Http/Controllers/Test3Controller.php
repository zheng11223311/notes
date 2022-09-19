<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Test3Controller extends Controller
{
    public function __invoke(Request $request)
    {
        //响应字符串
        // return '哈哈哈';

        //响应数组,有键值对(标准json 格式)的会转化为json
        // return [1,2,3,4,5,6];
        // return ['name'=>'哈哈哈','age'=>18];

        // 完整响应
        // return response('Hello World', 200)
        //     ->header('Content-Type', 'text/plain')
        //     ->header('myheader', '自定义头信息');

        // 不用每次都写上header,与上方的作用相同
        // return response('Hello World')
        //     ->withHeaders([
        //         'Content-Type' => 'text/plain',
        //         'X-Header-One' => 'Header Value',
        //         'X-Header-Two' => 'Header Value',
        //     ]);

        // 添加cookie
        //laravel 会对cookie的值加密
        // App\Http\Middleware\EncryptCookies 加密文件
        // return response('Hello World')
        //         ->header('Content-Type','text/plain')
        //         ->cookie('name', 'value',1);  //1 min


        // 重定向响应
        // return redirect('/');

        // 局辅助函数 back 来执行此操作。
        // 由于这个功能利用了 session，请确保调用 
        // back 函数的路由使用 web 中间件组或所有 Session 中间件：

        // 在app/Providers/RouteServiceProvider.php
        //  Route::middleware('web') 注册过web.php 中间件

        // 在app/Http/Kernel.php 中配置了web 的session 中间件
        //所以可以使用back

        // 重定向到上一个请求
        // return back();
        // 并返回存储的session 记录
        // return back()->withInput();

        // 重定向到命名路由
        // 对于具有该URI的路由: blog/{blog}
        // return redirect()->route('blog.show', ['blog' => 1]);

        // 重定向到控制器行为
        // return redirect()->action([HomeController::class, 'index'],['id'=>1]);

        // 重定向到外部域名
        // return redirect()->away('https://www.baidu.com');

        // 重定向并使用闪存的 Session 数据
        // return redirect('blog/create')->with('status', 'Profile updated!');

        // 在博客添加页面中使用,只闪存一次,再次刷新失效
        // @if (session('status'))
        //     <div class="alert alert-success">
        //     {{ session('status') }}
        // </div>
        // @endif


        // 视图响应
        // return response()
        //     ->view('user.info', [], 200)
        //     ->header('Content-Type', 'text/plain'); //返回成一个文本,不会渲染成html

        // JSON 响应
        // return response()->json([
        //     'name' => 'Abigail',
        //     'state' => 'CA',
        // ]);

        // jsonp 响应
        // return response()
        //     ->json(['name' => 'Abigail', 'state' => 'CA'])
        //     // 路径中传递的一个回调函数callback
        //     ->withCallback($request->input('callback'));

        // 文件下载
        // asset 指向public/,但是返回的是一个url
        // return response()->download(public_path('robots.txt'));
        // name 文件的下载名
        // return response()->download($pathToFile, $name, $headers);
        // return response()->download($pathToFile)->deleteFileAfterSend();

        // 流下载
        return response()->streamDownload(function () {
            echo '写入到文件 laravel-readme.md 中';
        }, 'laravel-readme.md');
    }
}
