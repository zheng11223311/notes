<?php
namespace app\controller;
// 使用注解路由
// use think\annotation\Route;
use think\facade\Route;
// 使用注释路由的分组
use think\annotation\route\Group;
use think\Request;


//  访问 http://127.0.0.1:808/ads/ds/1.html
/**
 * Class Address
 * @package app\controller
 * @Group("ads")
 */
class Address
{
    // 路由设置
    // 控制器中间件
    // 可以让中间件在控制器里注册,然这个控制器执行的时候执行中间件,['Check']; 为要执行的中间件的别名
    // 别名在app\middleware.php 设置
    protected $middleware = ['Check'];
    // 支持对中间件做限制
    // protected $middleware = [
    //     // 仅允许当前类的 index 方法使用Check 中间件
    //     'Check'=>['only' =>['index']],
    //     // 除了read 方法都可以使用Auth 中间件
    //     "Auth"=>['except'=>['read']]
    // ];
    /**
     * @return string
     */
    public function index()
    {
        // 打印session 
        // echo session('name');
        // redirect_url 上一次的url 重定向过来的地址
        // echo session('redirect_url');
        // return 'index';
        // 上一次的url 重定向过来的地址
        $url = url('address/back');
        return '<a href="'.$url.'">返回<a>';
    }

    // 接收check 中间件传递过来的参数Request $request
    public function read(Request $request, $id)
    {
        echo $request->name;
        return 'id:'.$id;
    }

    public function back()
    {
        // restore 跳转到上一次的url
        // redirect 需要一个参数,随便
        // with('flag', 1)  传递session 值
        return redirect('1')->with('flag', 1)->restore();
    }

    // 注解路由 安装 composer require topthink/think-annotation
    //  访问 http://127.0.0.1:808/ds/1.html
    // /**
    //  * @param $id
    //  * @return string
    //  * @route("ds/:id", ext="html", method="GET", https=0)
    //  */


    // 访问 http://127.0.0.1:808/Address/details/id/1
    // 或 http://127.0.0.1:808/Address/details/id/1.html
    public function details($id)
    {
        return '详情id:'.$id;
    }

    // public function read($id)
    // {
    //     return '读取:'.$id;
    // }

    // public function read($name)
    // {
    //     return '读取:'.$name;
    // }

    public static function details2($id)
    {
        return '详情id2:'.$id;
    }

    public function search($id, $uid)
    {
        return '详情id:'.$id.', 详情uid:'.$uid;
    }

    public function url()
    {
        // 链接跳转到指定路由
        // 访问这个路由时,直接跳转到Address/details 路由,导航栏不变,相当于重定向
        // (指定路由地址,参数)
        // return url('Address/details', ['id'=>5]);
        
        // name 为此路由起名字
        Route::rule('ds/:id', 'Address/details', 'GET|POST')->name('ds');
        // 返回时,使用起的名字作为路由地址
        return url('ds', ['id'=>5]);
    }

    public function miss()
    {
        return '404, miss';
    }
}