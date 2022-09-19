<?php
namespace app\controller;
use app\BaseController;

class Test extends BaseController
{
    //访问 http://127.0.0.1:808/test/index
    //访问 http://127.0.0.1:808/Test/index
    public function index()
    {
        //BaseController 的类request
        // $this->request->action() 获取当前方法名
        // $this->app->getBasePath() 获取当前实际路径：
        return 'index，方法名：'.$this->request->action().', 当前实际路径：'.$this->app->getBasePath();
    }

    //访问 http://127.0.0.1:808/Test/hello
    //访问 http://127.0.0.1:808/Test/hello/value/值
    public function hello($value = '')
    {
        //$value 对应 /hello/value/值   
        return 'hello '.$value;
    }

    public function arrayOutput()
    {
        $data = ['a'=>1, 'b'=>2, 'c'=>3];

        //助手函数 (help.php 文件中的方法)
        // 中断函数
        halt('中断输出！');
        //返回json 格式的数据
        // 数组不能直接输出
        return json($data);
    }
}