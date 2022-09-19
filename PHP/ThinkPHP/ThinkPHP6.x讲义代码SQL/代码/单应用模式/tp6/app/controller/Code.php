<?php
namespace app\controller;
use think\captcha\facade\Captcha;
use think\facade\Validate;
use think\facade\View;

class Code
{
    // 验证码
    // 安装插件
    // composer require topthink/think-captcha 
    // 验证码配置参数 可以在 config/captcha.php 中修改
    public function verify()
    {
        // 独立验证码
        // create(使用 config/captcha.php 中的额外配置信息)
        return Captcha::create('verify');
    }

    public function form()
    {
        return View::fetch('form');
    }

    public function check()
    {
        //        //验证器规则
        //        $validate = Validate::rule([
        //            'captcha'   =>  'require|captcha'
        //        ]);
        //
        //        //和表单数据对比
        //        $result = $validate->check([
        //            'captcha'   =>  input('post.code')
        //        ]);
        //
        //        if (!$result) {
        //            dump($validate->getError());
        //        }

        // 验证,等同于上面
        if (!captcha_check(input('post.code'))) {
            echo '验证失败！';
        }
    }






}