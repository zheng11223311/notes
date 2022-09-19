<?php
namespace app\controller;
use think\facade\Filesystem;
use think\facade\Request;
use think\facade\Validate;

class Upload
{
    public function index()
    {
        // 表单上传
        // 获取上传文件的信息
        $file = Request::file('image');
        

        //编写规则
        $validate = Validate::rule([
            'image'     =>      'file|fileExt:jpg,png,gif'
        ]);

        //验证规则
        $result = $validate->check([
            'image'     =>      $file
        ]);

        //正确输出地址，错误提示
        if ($result) {
              // Filesystem::putfile 存储文件,返回路径信息,返回结果到info
            //   存储地址 runtime\storage\topic\当前时间文件夹\文件
                // 参数(子目录名,获取到的文件信息,当前时间文件夹加密)
            $info = Filesystem::putfile('topic', $file);
            dump($info);
        } else {
            dump($validate->getError());
        }



    }

    public function more()
    {
        // 多文件处理
        $files = Request::file('image');
        $info = [];
        foreach ($files as $file) {
            $info[] = Filesystem::putfile('topic', $file);
        }
        dump($info);
    }

}