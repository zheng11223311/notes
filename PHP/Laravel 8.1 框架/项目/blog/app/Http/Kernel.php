<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    /**
     * The application's global HTTP middleware stack.
     *
     * These middleware are run during every request to your application.
     *
     * @var array
     */
    // 全局中间件
    protected $middleware = [
        // \App\Http\Middleware\TrustHosts::class,
        \App\Http\Middleware\TrustProxies::class,
        \Fruitcake\Cors\HandleCors::class,
        \App\Http\Middleware\PreventRequestsDuringMaintenance::class,
        \Illuminate\Foundation\Http\Middleware\ValidatePostSize::class,
        \App\Http\Middleware\TrimStrings::class,
        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,
    ];

    /**
     * The application's route middleware groups.
     *
     * @var array
     */
    // 中间件组
    protected $middlewareGroups = [
        // 项目/app/Providers/RouteServiceProvider.php 默认将这些路由
        // 应用到 web.php 和api.php 
        // web.php 使用下面的这些中间件
        'web' => [
            \App\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            // \Illuminate\Session\Middleware\AuthenticateSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \App\Http\Middleware\VerifyCsrfToken::class,    //开启csrf 安全机制
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ],

        // api.php 使用下面的中间件
        'api' => [
            'throttle:api',
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ],
    ];

    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    // 路由中间件
    protected $routeMiddleware = [
        // 中间件名称 =>使用的类
        'auth' => \App\Http\Middleware\Authenticate::class,
        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'cache.headers' => \Illuminate\Http\Middleware\SetCacheHeaders::class,
        'can' => \Illuminate\Auth\Middleware\Authorize::class,
        'guest' => \App\Http\Middleware\RedirectIfAuthenticated::class,
        'password.confirm' => \Illuminate\Auth\Middleware\RequirePassword::class,
        'signed' => \Illuminate\Routing\Middleware\ValidateSignature::class,
        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
        'verified' => \Illuminate\Auth\Middleware\EnsureEmailIsVerified::class,
        // 注册自己创建创建的中间件CheckAge
        // 使用.分割(直观), 也可以自定义其他名称
        // 在web.php 路由中可以使用此中间件
        // 'check.age' => \App\Http\Middleware\CheckAge::class,
    ];

    /**
     * 中间件的优先级排序列表
     *
     * 将会强制非全局中间件始终保持给定的顺序
     *
     * @var array
     */
    // protected $middlewarePriority = [
    //     \Illuminate\Cookie\Middleware\EncryptCookies::class,
    //     \Illuminate\Session\Middleware\StartSession::class,
    //     \Illuminate\View\Middleware\ShareErrorsFromSession::class,
    //     \Illuminate\Contracts\Auth\Middleware\AuthenticatesRequests::class,
    //     \Illuminate\Routing\Middleware\ThrottleRequests::class,
    //     \Illuminate\Session\Middleware\AuthenticateSession::class,
    //     \Illuminate\Routing\Middleware\SubstituteBindings::class,
    //     \Illuminate\Auth\Middleware\Authorize::class,
    // ];
}
