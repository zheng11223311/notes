<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\facade\Route;
use app\middleware\Check;
use app\middleware\Auth;

//Route::get('think', function () {
//    return 'hello,ThinkPHP6!';
//});

// 闭包 $name 为传递的路径参数
Route::get('think/:name', function ($name) {
    return 'hello,'.$name;
});

// app/controller/Index.php(控制器)
//Index 控制器/hello 方法 ,默认Index 控制器,控制器小写也可以index
// Route::get('hello/:name', 'Index/hello');
// Route::get('hello/:name', 'index/hello');
// Route::get('hello/:name', 'hello');

//  访问 http://127.0.0.1:808/ds/1
// (路由表达式,路由地址,请求方式)
// Route::rule('ds/:id', 'Address/details'); //默认是any (任何)请求
// 支持get 和post
// Route::rule('ds/:id', 'Address/details', 'GET|POST');
Route::rule('/', 'Test/index');
// Route::rule('/url', 'Address/url');

//pattern 自定义参数 限制动态参数id 必须为数字
// Route::rule('ds/:id', 'Address/details')->pattern(['id'=>'\d+']);

// 访问 http://127.0.0.1:808/ds/1/2
// 对两个参数的传参限制
// Route::rule('sc/:id/:uid', 'Address/search')->pattern(['id'=>'\d+','uid'=>'\d+']);
// Route::rule('sc/:id/:uid', 'Address/search');

//定义全局参数限制,对所有路由都有作用
// Route::pattern(['id'=>'\d+','uid'=>'\d+']);
//Route::rule('sc/:id/:uid', 'Address/search');

// 访问 http://127.0.0.1:808/ds-1
//  <id> 等同:id   - 等同 /
// Route::rule('ds-<id>', 'Address/details');
// 动态路由地址<name>  访问动态控制器:name
// 访问 http://127.0.0.1:808/hi-world-a 方法-> Helloworld/index
// Route::rule('hi-<name>-<id>', 'Hello:name/index');

// http://127.0.0.1:808/hiworlda  
// http://127.0.0.1:808/hiworldaa 无效  
// Route::rule('hi:name:id', 'Hello:name/index');

// http://127.0.0.1:808/hi-world-a
// Route::rule('hi-:name-:id', 'Hello:name/index');

// 多级控制器   app\controller\group\blog\details
// Route::rule('bd/:id', 'group.Blog/details');
//Route::rule('ds/:id', 'Address/details2');

// @details 可以调用所有方法
// Route::rule('ds/:id', 'app\controller\Address@details');
// Route::rule('ds/:id', 'app\controller\Address@details2');
// :: 只能调用静态方法
// Route::rule('ds/:id', 'app\controller\Address::details2');
// 完整格式形式不支持\details2
// Route::rule('ds/:id', 'app\controller\Address\details2');

// 重定向(路由地址,跳转地址[,状态码])
// Route::redirect('ds/:id', 'http://localhost:808' ,200);

// ext('html|shtml') 检测路由后缀是否有html 或shtml,没有就报错
// https() 检测是否为https 请求,不是就报错
// Route::rule('ds/:id', 'Address/details')->ext('html|shtml');
// Route::rule('ds/:id', 'Address/details')->ext('html|shtml')->https();

// denyExt 禁止使用某种后缀
// Route::rule('ds/:id', 'Address/details')->denyExt('gif|png');

// 检测当前域名是否匹配,完整域名和子域名均可
// Route::rule('ds/:id', 'Address/details')->domain('localhost');
// Route::rule('ds/:id', 'Address/details')->domain('news.abc.com');
// news.xxx.xxx 中的news 
// Route::rule('ds/:id', 'Address/details')->domain('news');

// ajax/pjax/json 检测当前页是否是以上请求方式
// Route::rule('ds/:id', 'Address/details')->ajax();
//Route::rule('ds/:id', 'Address/details')->pjax();
//Route::rule('ds/:id', 'Address/details')->json();

// filter 传递过来的参数id 必须是5 type 必须是1,才能匹配路由
//Route::rule('ds/:id', 'Address/details')->filter(['id'=>5, 'type'=>1]);

// 追加一个参数,等同于路径传递过来的参数
// Route::rule('ds/:id', 'Address/details')->append(['status'=>'a']);

// option 配置多个限制配置
//Route::rule('ds/:id', 'Address/details')->option(['ext'=>'html', 'https'=>true]);


// 指定域名下才能访问
//Route::domain('news.abc.com', function () {
//    Route::rule('ds/:id', 'Address/details');
//});

//Route::domain('news', function () {
//    Route::rule('ds/:id', 'Address/details');
//});

// 支持多个域名,也支持ext,https 等方法
//Route::domain(['news', 'blog', 'live'], function () {
//    Route::rule('ds/:id', 'Address/details');
//    Route::rule('ds/:id', 'Address/details')->ext('shtml');
//})->ext('html');

// 跨域请求
// allowCrossDomain() 没有参数时,允许所有请求
// Route::rule('ds/:id', 'Address/details')->allowCrossDomain([
//    'Access-Control-Allow-Origin' => 'http://news.abc.com:8000'
// ]);

// 路由分组
// 将相同前缀的路由合并分组,简化路由
// Route::group(function () {
//    Route::rule('ds/:id', 'Address/details');
//    Route::rule('rd/:name', 'Address/read');
// })->ext('html');

// 提取路由的公共前缀address
// Route::group('address',function () {
//    // 访问 http://localhost:808/address/1.html
//    Route::rule(':id', 'details');
//    // 访问 http://localhost:808/address/aa.html
//    Route::rule(':name', 'read');
// })->ext('html')
//    ->prefix('Address/')  //提取控制器的公共前缀
//    ->pattern(['id'=>'\d+', 'name'=>'\w+'])->append(['status'=>1]);


// Route::group('address',function () {
//    Route::rule(':id', 'details');
//    // 分组MISS ,匹配不到相应规则时跳转到MISS,前提是访问要在路径有address 前缀的基础上
//    // http://localhost:808/address/@.html 能触发miss
//    // http://localhost:808/address123/@.html 能触发miss
//    Route::miss('miss'); //会访问到当前控制器下的miss,Address/miss
//    // Route::rule(':name', 'read');
// })->ext('html')
//    ->prefix('Address/')  //控制器的公共前缀
//    ->pattern(['id'=>'\d+', 'name'=>'\w+'])->append(['status'=>1]);

   
// 全局MISS ,类似开启强制路由功能,匹配不到相应规则时跳转到MISS
//  访问到 app\controller\Error
// Route::miss('public/miss');


// 资源路由
// 采用固定的常用方法来实现简化URL 的功能
// 资源命令
// php think make:controller Blog
// 在app/controller 下生成 Blog.php

// (规则名称,访问路径),注册成功后,会自动提供一些方法
// 访问 http://localhost:808/ads  自动找到Address/index
// Route::resource('ads', 'Address');

// get 访问 http://localhost:808/blog 自动判断并找到 Blog/index
// get 访问 http://localhost:808/blog/5 自动判断并找到 Blog/read
// get 访问 http://localhost:808/blog/5/edit 自动判断并找到 Blog/edit

// post 访问 http://localhost:8000/blog/10  自动判断并找到 Blog/save
// put 访问 http://localhost:8000/blog/10  自动判断并找到 Blog/update
// delete 访问 http://localhost:8000/blog/10  自动判断并找到 Blog/delete
// Route::resource('blog', 'Blog');

// 创建出来的文件资源默认参数是$id, vars 修改默认参数的参数名,设置后资源文件需要使用设置后的
// 参数名才能接收到对应的请求,比如save($blog_id)
// vars([资源名,设置参数名为什么参数])
// Route::resource('blog', 'Blog')->vars(['blog'=>'blog_id']);

// only 限定使用资源提供的方法,只有'index', 'read' 可以使用
// Route::resource('blog', 'Blog')->only(['index', 'read']);

// except 排除使用资源提供的方法
// Route::resource('blog', 'Blog')->except(['index', 'read']);

// rest 更改系统给与的默认方法,
// 需要放到资源类的上面,否者先匹配到资源路由进行 访问控制器方法 xxx目前不会
// rest(固定格式,[请求方式,地址,操作])
// http://localhost:808/blog/5/add 访问Blog/create
// Route::rest('create', ['GET', '/:id/add', 'create']);

// http://localhost:808/blog/5/add 访问Blog/add
// Route::rest('create', ['GET', '/:id/add', 'add']);
// Route::rest('create', ['GET', '/add', 'create']);

// 批量操作
// Route::rest([
//    'create', ['GET', '/add', 'create'],
//    'save', ['GET', '/add', 'save'],
//    'delete', ['GET', '/add', 'delete'],
// ]);
//Route::resource('blog', 'Blog');


// 嵌套资源路由,可以让上级资源对下级资源进行操作
// 资源嵌套生成路由规则如下:
// http://localhost:808/blog/:blog_id/comment/:id
// http://localhost:808/blog/:blog_id/comment/:id/edit

// 访问 http://localhost:808/blog/3/comment/10     访问到app\controller\Comment\read
// 访问 http://localhost:808/blog/3/comment/10/edit  访问到app\controller\Comment\edit
// Route::resource('blog.comment', 'Comment');

// 嵌套资源生成的上级路由资源默认id 为:blog_id ,可以通过vars 更改
//Route::resource('blog.comment', 'Comment')->vars(['blog'=>'blogid']);



// URL 生成
//  访问 http://localhost:808/ds   找到app\controller\Url\index
// Route::rule('ds', 'Url/index');

// $ 严格匹配,以ds 结尾
// Route::rule('ds$', 'Url/index');
// 以 ds/:id$ 结尾
// Route::rule('ds/:id$', 'Url/details');
// Route::rule('ds/:id$', 'Url/details')->name('u');


// cache 局部缓存,只对此路径具有缓存
// 参数 时间 s, false 为不缓存
// Route::rule('re/:id', 'Rely/get')->cache(3600);
// Route::rule('re/:id', 'Rely/get')->cache(false);


// 使用User 验证器的 route 验证场景
// 6.02 版本之前有bug,需要升级 执行命令行 composer update 
// Route::rule('vr/:id', 'Verify/route')
//                ->validate(\app\validate\User::class, 'route');

// 使用独立验证器
// validate(验证规则,场景,错误提示,batch 不中断验证)
//Route::rule('vr/:id', 'Verify/route')
//    ->validate([
//        'id'               =>      'number|between:1,10',
//        'email'            =>      \think\validate\ValidateRule::isEmail(null, '邮箱格式不正确')
//    ],null, [
//        'id.number'         =>      '编号必须是数字'
//    ], true);


// Route::rule('vc', 'Code/verify');

//  调用中间件 app\middleware\Auth
//Route::rule('ar/:id', 'Address/read')
//        ->middleware(\app\middleware\Auth::class);

// 多个中间件
// config/middleware.php 下配置别名,这里使用别名
//Route::rule('ar/:id', 'Address/read')
//        ->middleware([Auth::class, Check::class]);

// middleware([中间件],向中间件传递额外参数) 
// Route::rule('ar/:id', 'Address/read')
//    ->middleware(['Auth', 'Check'],'ok');

// 独立中间件
Route::rule('ar/:id', 'Address/read')
   ->middleware(function ($request, \Closure $next) {
       if ($request->param('id') == 10) {
           echo '管理员！';
       }
       return $next($request);
   });







