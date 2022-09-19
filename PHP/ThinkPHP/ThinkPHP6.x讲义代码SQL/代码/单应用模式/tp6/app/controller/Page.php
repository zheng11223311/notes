<?php
namespace app\controller;
use app\model\User;
use think\facade\View;

class Page
{
    public function index()
    {
        // 分页
        // 查询数据库
        // (每页几条数据)
        //$list = User::paginate(3);
        // var_page 自定义分页参数名,地址栏显示
        // ...  参数
        // $list = User::paginate([
        //     'list_rows' =>  4,
        //     'var_page'  =>  'page'
        // ]);

        // 数据数量
        //echo $list->total();
        // 直接返回html 解析后的分页
        //echo $list->render();
        // 每页多少条
        //echo $list->count();
        // 最后的页码
        //echo $list->lastPage();

        $list = User::paginate(3)->each(function ($item) {
            $item['gender'] = '【'.$item['gender'].'】';
            return $item;
        });

        return View::fetch('index', [
            'list'  =>  $list
        ]);
    }
}