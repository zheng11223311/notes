<?php
// 开启严格模式
// 注意:declare 是会校验这个文件下所有使用的的函数,不管他是否是在declare指令文件中申明的!
declare (strict_types = 1); 
namespace app\controller;
use think\Request;
// 使用注释路由的资源路由
use think\annotation\Route\Resource;


// 开启资源路由
// 访问 http://localhost:808/blog/5
/**
 * Class Blog
 * @package app\controller
 * @Resource("blog")
 */
class Blog
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        return '列表页！';
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        return '创建新增表单页！';
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        return '新增页面！';
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        return '读取id:'.$id;
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        return '修改表单页id:'.$id;
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        return '修改id'.$id;
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        return '删除id'.$id;
    }
}
