<?php
namespace app\controller;
// use think\Request;
// 门面模式需要传参
use think\facade\Request;

class Rely
{
    protected $request;

   
    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    public function index(Request $request)
    {
        // 请求对象
         // Request  为use think\Request;
        //  获取get 传递的参数
        // return $_GET['username'];
        return $request->param('username');
    }

    // 绑定参数 id=0 ,赋一个默认值,防止没有传参时报错
    // http://localhost:808/rely/get/id/2
    public function get($id = 0)
    {
        // return $this->request->param('username');

        //Request 是  think\facade\Request;
        // return Request::param('username');
        // 助手函数
        // return request()->param('username');
        // 获取地址,true 表示获取完整地址
        // return Request::url();
        // return Request::url(true);
        // 获取根地址
        // return Request::root();
        // return Request::root(true);

        // controller 获取当前控制器名称
        // action 获取当前操作方法
        // return Request::controller().'|'.Request::action();


        // 请求的变量是否存在
        // dump(Request::has('name')); //false
        // get 请求类型
        //dump(Request::has('name', 'get'));

        // (获取字段,默认值,过滤器)
        //ump(Request::param('name', '', 'strtoupper,htmlspecialchars'));
        // 获取所有数据
        // dump(Request::param());
        // 获取指定数据
        // dump(Request::param('name'));
        // 数据不过滤特殊符号
        //dump(Request::param(false));
        // 获取指定数据['name', 'age'],null 表示获取的数据不过滤
        //dump(Request::param(['name', 'age'], '', null));

        // get 获取不到路由传递的值 http://localhost:808/re/1,
        // 但是 http://localhost:808/re/1?id=1 可以
        // route 和params 都可以获取到
        // dump(Request::get('id'));
        // dump(Request::route('id'));
        // 只获取指定的参数
        // dump(Request::only(['name']));
        // post 提交的参数
        // dump(Request::only(['name'],'post'));
        // dump(Request::only(['name'=>'默认值'],'post'));
        // 排除
        // dump(Request::except(['name']));
        // dump(Request::except(['name'],'post'));

        // 强制数据转换 
        // /d 数字
        // dump(Request::get('age/d'));
        // 助手函数的简化
        // http://localhost:808/rely/get/?name=2
        // dump(input('?get.name')); //判断get 下的name 是否存在
        //dump(input('?post.name'));  //判断post 下的name 是否存在
        // dump(input('param.name'));    //获取params 下的name 值
        // dump(input('param.name','默认值'));    //设置默认值
        // dump(input('param.name','默认值','过滤器'));    //设置过滤器
        // dump(input('param.name/d'));    //设置强制转换

            // 请求类型
            // 判断请求类型
            //    dump(Request::isGet());
            //    dump(Request::isPost());
            //    获取请求类型
            //    dump(Request::method());
            //    dump(Request::isAjax());
            //    获取头信息
            //    dump(Request::header());
            //    获取指定头信息
            //    dump(Request::header('host'));


        // echo $id;
        // 请求路径的后缀名
        //echo Request::ext();

        // 返回json 类型
        //return json($id);
        // response 设置返回数据
        // code 设置状态码
        // header 设置头信息
        // return response($id)->code(201)->header(['Cache-control' => 'no-cache,must-revalidate']);

        // 重定向
        // return redirect('http://www.baidu.com');
        // 站内重定向可以设置状态码
        // return redirect('/tp6/public/address/index');
        // return redirect('/tp6/public/address/index','200');
        // 使用url 生成的地址
        // return redirect(url('address/index'));
        // 带session 信息with('name', 'Mr.Lee');
        // return redirect(url('address/index'))->with('name', 'Mr.Lee');

        // 是否存在设置的session 的flag ,存在则不跳转
        // 防止无限跳转
        if (session('?flag')) {
            return '死机警告！';
        } else {
            //remember 记住当前 url 地址
            return redirect(url('address/index'))->remember();
        }

    }





}