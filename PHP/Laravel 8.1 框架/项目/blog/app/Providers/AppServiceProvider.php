<?php

namespace App\Providers;

use App\Models\Blog;
use App\Observers\BlogObserver;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //将分页视图默认样式修改为bootstrap
        Paginator::useBootstrap();

        // 修改分页的默认视图
        // Paginator::defaultView('vendor.pagination.my-page');
        // Paginator::defaultSimpleView('vendor.pagination.my-page');

        // // 在控制器中使用 response()->api($msg,$code,$data)
        // Response::macro('api', function ($msg='',$code=200,$data='') {
        //     $resData=[
        //         'code'=>$code,
        //         'msg'=>$msg,
        //         'time'=>time(),
        //         'data'=>$data
        //     ];
        //     return response()->json($resData);
        // });

        // 注册观察者
        Blog::observe(BlogObserver::class);

    }
}
