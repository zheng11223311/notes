<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    // 排除路由,其可以不用进行csrf 验证
    protected $except = [
        '/test5',       //添加要排除的路由
    ];
}
