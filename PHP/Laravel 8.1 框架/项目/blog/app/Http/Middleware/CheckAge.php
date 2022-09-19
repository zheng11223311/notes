<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckAge
{
    // 参数 request next 自定义的传参(在路由中传递)
    public function handle(Request $request, Closure $next,$id)
    {
        dd($id);
        if($request->age<=20){
            return redirect('/');
        }
        return $next($request);
    }
}
