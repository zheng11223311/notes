<?php
namespace app\controller;
use app\model\One;

class Inject
{
    protected $one;
 
    // 依赖注入
    // One 类是model 下面的One 类 use app\model\One;,传递进去时,自动绑定并实例化(new One)
    public function __construct(One $one)
    {
        $this->one = $one;
    }

    public function index()
    {
        return $this->one->username;
    }

    public function bind()
    {
        // 依赖注入的手动绑定和手动实例化
        // 绑定对象 (任意名,对象路径)
        // bind('one', 'app\model\One');
        // app 实例化对象 严格保持大小写一致
        // return app('one')->username;

        //    bind('one', 'app\model\One');
        //     //  true 表示每次要实例化,而不是直接使用已经实例化好的
        //    $one = app('one', [], true);
        //    return $one->username;

            // bind('one', 'app\model\One');
            // // 传递数组参数 [ 数组参数['file'] ]
            // // app\model\One 都构造函数中获取参数
            // $one = app('one', [['file']], true);
            // return $one->username;

            // 简化
        // return app('app\model\One')->username;

        // 批量绑定
        // bind([
        //     'one'   =>  'app\model\One',
        // ]);
        // return app('one')->username;

            // 批量绑定
        // bind([
        //     'one'   =>  \app\model\One::class,   //app 前需要\
        // ]);
        // return app('one')->username;

        // 在容器app\Provider.php 定义文件中绑定对象,如果在Provider
        // 容器中绑定了对象,在这里绑定的同一个对象将会无效
        return app('one')->username;

    }
}