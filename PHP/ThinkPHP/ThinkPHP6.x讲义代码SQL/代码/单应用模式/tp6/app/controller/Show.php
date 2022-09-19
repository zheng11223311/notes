<?php
namespace app\controller;
use app\BaseController;
use app\common\Shut;
use app\model\User;
use think\facade\View;

class Show extends BaseController
{
    // 模板引擎
    // 安装引擎驱动,tp 默认是不支持模板的
    // composer require topthink/think-view
    // 模板文件的目录默认和控制器类名相同
    // 模板文件名默认和控制器方法名相同
    // app\view\show\index.html
    public $name = 'Mr.Lee';
    public $age = 100;
    const PI = 3.14;

    public function index(Shut $shut)
    {

        // 调用服务
        // 依赖注入调用
        // $shut->run();
        // 容器标识调用
        $this->app->shut->run();
        // 助手函数调用
        // app()->shut->run();

        // 传递变量(名,值)
        //View::assign('name', 'Mr.Lee');
        // 传递多个值
        View::assign([
            'name'  =>  'Mr.Lee',
            'email' =>  'lee@163.com'
        ]);
        
        // 返回模板视图
        // fetch(选择模板,传递变量)
        // return View::fetch('index', [
        //     'name'  =>  'Mr.Lee',
        //     'email' =>  'lee@163.com'
        // ]);
        // 同上,返回视图
        // return view('index', [
        //     'name'  =>  'Mr.Lee',
        //     'email' =>  'lee@163.com'
        // ]);

        // 过滤变量
        // return View::filter(function ($content) {
        //     return strtoupper($content);
        // })->fetch('index');

        // // 过滤变量
        // return view('index')->filter(function ($content) {
        //     return strtoupper($content);
        // });

        // 局部配置文件
        // view_dir_name 切换到模型view2 目录,默认使用view 模型目录
        //View::config(['view_dir_name'=>'view2']);
        // 选择模板 view/show/index.html 模板
        // return View::fetch('index');
        // 选择其他模板
        //return View::fetch('Address/index');
        // 多应用(模块)选择模板
        //return View::fetch('admin@Address/index');
        //  view 下的index.html 模板
        //return View::fetch('/index');
        // public 下的test.html 模板
        //return View::fetch('../public/test/test');

            // engine('php')-强行不支持模板引擎,view::assign 定义的变量无法使用,只有本身fetch 定义的才有效
            //  模板中{$name} 用法失效,使用纯php 写
        return View::engine('php')->fetch('index', [
            'name'  =>  'Mr.Lee',
            'email' =>  'lee@163.com'
        ]);
    }

    public function output()
    {
        // 变量输出
        $arr = ['name'=>'Mr.lee', 'age'=>100];


        return View::fetch('output', [
            'arr'   =>  $arr,
            'obj'   =>  $this,
            'password'  =>  123456,
            'time'      =>  time(),
            'number'    =>  10
        ]);
    }

    public function fn()
    {
        return '方法';
    }

    public function loop()
    {
        // 循环输出
        $list = User::select();
        return View::fetch('loop', [
            'list'  =>  $list
        ]);
    }

    public function eq()
    {
        // 模板的比较
        return View::fetch('eq', [
            'name'  =>  'Mr.Lee',
            'name2' =>  'Mr.Lee'
        ]);
    }

    public function condition()
    {
        // 模板判断标签
        return View::fetch('condition', [
            'number'    =>  11,
            'id'        =>  10,
            'name'      =>  'Mr.Lee'
        ]);
    }

    public function block()
    {
        // 模板加载包含输出
        // 模板的布局和继承
        return View::fetch('block', [
            'title'     =>      '标题'
        ]);
    }

    public function form()
    {
        // 模板的杂项和表单令牌
        // 中间件app\middleware.php 开启session
        return View::fetch('form');
    }



}