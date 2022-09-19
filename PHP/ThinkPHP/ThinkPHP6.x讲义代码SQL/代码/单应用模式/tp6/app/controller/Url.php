<?php
namespace app\controller;
use think\facade\Route;
use app\facade\Test;

class Url
{
    public function index()
    {
        //生成路由地址
        // 如果路由定义的地址不是Url/details 那么返回的地址会发生变化 /Url/details.html?id=5
        // 是Url/details  地址  /ds/5.html
        // return Route::buildUrl('Url/details', ['id'=>5]);  //  /Url/details.html?id=5
        // 路由定义别名后,这里可以使用别名代替地址
        // return Route::buildUrl('u', ['id'=>5]);
        // 这样写路由就可以定义的地址不是Url/details,直接访问 http://localhost:808/ds  得到/ds/5.html
        // return Route::buildUrl('ds/5');    //  /ds/5.html
        // 添加后缀
        // return Route::buildUrl('ds/5')->suffix('shtml');  //  /ds/5.shtml
        // 返回带有域名的地址
        // return Route::buildUrl('ds/5')->domain(true); //http://localhost:808/ds/5.html
        // return Route::buildUrl('ds/5')->domain('news.abc.com'); //http://news.abc.com/ds/5.html
        //return Route::buildUrl('ds/5@news.abc.com');  http://news.abc.com/ds/5.html
        return url('ds/5');  ///ds/5.html
    }

    public function details($id)
    {
        return 'Id:'.$id;
    }

    public function test()
    {
        //return \app\facade\Test::hello('world');
        return Test::hello('Mr.Lee');
    }


}