<?php
declare (strict_types = 1);
namespace app\middleware;

use think\Response;

class Check
{
    /**
     * 处理请求
     *
     * @param \think\Request $request
     * @param \Closure       $next
     * @return Response
     */
    // 中间件入口函数handle
    public function handle($request, \Closure $next)
    {
         // 中间件
        // php think make:middleware Check  生成中间件 app\middleware\ckeck.php
        
        // 助手函数,拦截 ,调试功能,return response()返回空response 对象,代码不会向下执行
        // return response();

        //处理HTTP请求，中间件代码
        //if ($request->param('name') == 'index') {
        //    return redirect('../');
        //}

        //前置中间件,在$next 之前输出,显示在模板加载输出之前
        //echo '前置中间件';

        echo 'check';
        //当前中间件向下方中间件传递参数
        $request->name = 'Mr.Lee';

        // 中间件 放行,(数据)
        $reponse = $next($request);

        //后置中间件,模板加载显示之后,模板的return 对数据的先后显示顺序有影响,return 对渲染时数据进行了重构
        //echo '后置中间件';

        //这里回调本身返回response对象
        return $reponse;
    }

    // 结束调度
    // 中间件执行到最后时执行
    public function end(Response $response)
    {
        //echo '收尾工作';
    }

}
