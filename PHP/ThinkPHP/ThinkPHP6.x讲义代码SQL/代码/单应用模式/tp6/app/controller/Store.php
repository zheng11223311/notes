<?php
namespace app\controller;

use League\Flysystem\Filesystem;
use think\exception\ErrorException;
use think\facade\Cache;
use think\facade\Cookie;
use think\facade\Lang;
use think\facade\Log;
use think\facade\Request;
use think\facade\Session;
use think\facade\View;

class Store
{
    public function upload()
    {
        // 上传功能
        return View::fetch('upload');
      
    }

    public function session()
    {
        // session 
        // 设置session 值
        Session::set('user', 'Mr.Lee');
        // 二维赋值
        Session::set('user.name', 'Mr.Lee');
        Session::get('user.name');
        Session::set('count', 10);
        // 删除session
        //Session::delete('user');
        // 获取session
        return Session::get('user');

        // 清除所有session
        //Session::clear();
        // 获取所有session
        //dump(Session::all());
        //dump(Request::session());
        //获取单个值
        //dump(Request::session('user'));
        // 不存在时设置值
        //dump(Session::get('name', ''));
        // 判断是否赋值
        //dump(Session::has('user'));
        // 取值后删除
        //echo Session::pull('user');
        //echo '<br>';
        //return Session::get('user').'1';
        //  设置闪存数据,只请求一次有效,在请求会失效
        //Session::flash('value', 100);

        // 助手函数,赋值
        session('name', 'Mr.Wang'); 
        // has 判断
        session('?user');
        // 删除
        session('user',null);
        // 清空
        session(null);
        // 输出
        echo session('user');
        return session('name');
    }

    public function cookie()
    {
        // cookie 默认是开启初始化的 在conifg/cookie.php
        // 设置cookie 临时保存,关闭浏览器消失
        //Cookie::set('user', 'Mr.Lee');
        // 过期时间 3600s
        //Cookie::set('user', 'Mr.Lee', 3600);
        // 获取cookie
        //dump(Cookie::get('user'));
        // 获取所有cookie
        //dump(Request::cookie());
        // 获取cookie
        //dump(Request::cookie('user'));
        // 永久保存,10年的意思
        //Cookie::forever('name', 'Mr.Wang');
        // 判断是否存在
        //dump(Cookie::has('wang'));
        // 获取cookie
        //dump(Cookie::get('wang', '1'));
        // 删除cookie
        //Cookie::delete('user');
        // 临时设置
        cookie('wang', 'Mr.Wang');
        // 过期时间
        cookie('wang', 'Mr.Wang',3333);
        // 删除
        cookie('wang',null);
        // 获取cookie
        return cookie('wang');
    }

    public function redis()
    {
        // 缓存 file 文本缓存示例
        Cache::set('user', 'Mr.Lee');
        Cache::set('user', 'Mr.Lee', 3600);
        dump(Cache::get('user'));
        // 是否存在
        dump(Cache::has('user'));
        // 自增3
        Cache::inc('num', 3);
        // 自减3
        Cache::dec('num', 3);
        dump(Cache::get('num'));
        Cache::set('arr', [1,2,3]);
        // 追加
        Cache::push('arr', 4);
        dump(Cache::get('arr'));
        // 删除
        //Cache::delete('user');
        // 先获取数据,在删除数据
        dump(Cache::pull('user'));
        dump(Cache::get('user'));
        // 如果数据不存在,则写入数据
        dump(Cache::remember('start_time', time()));
        // dump(Cache::remember('start_time', function (Request $request){}));
        // 清空,本质是删除cache 整个文件夹
        //Cache::clear();

        // 助手函数
        cache('user','a',11111);
        cache('user',null);
        cache('user');
        
        // 标签,将多个缓存归类到标签中,方便统一管理
        Cache::tag('tag')->set('age', 100);
        Cache::tag('tag')->clear();
        dump(Cache::get('age'));
    }

    public function lang()
    {
        // 多语言
        // 需要在app/middleware.php 中开启多语言
        // \think\middleware\LoadLangPack::class,
        // 修改 config/lang.php
        // 配置文件
        // 新建app\lang 文件夹
        // 获取app\lang\文件中的require_name 信息,config/lang.php 设置是获取中文的
        echo Lang::get('require_name');
        echo '<br>';
        // 助手函数,同上获取
        echo lang('email_error');
        // 在地址栏中添加?lang=en-us 切换为英文语言,信息会缓存到cookie

        // 模板中调用语言
        return View::fetch('lang');
    }

    public function log()
    {
        // 日志处理
        // 日志存储位置 app\runtime\log\
        // 记录日志,需要等待程序完毕后决定是否写入日志 (错误信息,指定级别)
        // Log::record('测试日志');
        // 记录级别日志
        // Log::error('测试日志');
        // Log::info('测试日志');

        // 清空内存中的日志
        Log::clear();
        // 获取到record 写入到内存中的日志信息,wirte 不会写入到内存中
        // dump(Log::getLog());
        // Log::record('错误日志', 'error');
        // Log::write('时时写入', 'error');
        // 前面的record 记录日志不会被添加,但是write 记录日志不受限制
        // Log::close();

        // try {
        //     echo 0/0;
        // } catch (ErrorException $e) {
        //     echo $e->getMessage();
            // getCode 获取错误代码
        //     Log::record('['.$e->getCode().']被除数不能为零', 'error');
        // }

        // 自定义的日志类型
        // Log::diy('自定义的日志信息');

        //在config/log 设置日志配置信息
    }

    public function middleware()
    {
        // 中间件
        // php think make:middleware Check  生成中间件 app\middleware\ckeck.php
        echo '<br>主体程序<br>';

        return View::fetch('middleware');
    }


    public function get()
    {
        //return Session::get('value');
    }






}