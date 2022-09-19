<?php
namespace app\controller\group;

class Blog
{
    // 多级控制器
    // 访问 http://127.0.0.1:808/group.blog/
    // 访问 http://127.0.0.1:808/group.blog/index
    public function index()
    {
        return 'Group Blog index.';
    }
    
    // 访问 http://127.0.0.1:808/group.blog/read
    public function read()
    {
        return 'Group Blog read.';
    }

    public function details($id)
    {
        return '详情id:'.$id;
    }


}