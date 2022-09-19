<?php

// use App\Http\Controllers\PhotoController;
// use App\Http\Controllers\ShowProfile;
// use App\Http\Controllers\TestController;
// use App\Http\Controllers\Test1Controller;

use App\Http\Controllers\Blogcontroller;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\Test10Controller;
use App\Http\Controllers\Test2Controller;
use App\Http\Controllers\Test3Controller;
use App\Http\Controllers\Test4Controller;
use App\Http\Controllers\Test5Controller;
use App\Http\Controllers\Test6Controller;
use App\Http\Controllers\Test7Controller;
use App\Http\Controllers\Test8Controller;
use App\Http\Controllers\Test9Controller;
use App\Http\Controllers\UserController;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


// 访问localhost:8000
// 访问127.0.0.1:8000
// 使用get 请求
// Route::get('/', function () {
//     return view('welcome');
// });

// // 访问localhost:8000/foo
// Route::get('foo', function () {
//     return 'Hello World';
// });

// // 有的时候你可能需要注册一个可响应多个 
// //HTTP 请求的路由，这时你可以使用 match 方法，
// //也可以使用 any 方法注册一个实现响应所有 HTTP 请求的路由：

// // 只匹配get 和post 请求
// Route::match(['get', 'post'], '/', function () {
//     return '哈哈哈哈,相同路径的路由会被覆盖掉';
// });

// // 任意方式请求
// // Route::any('/', function () {
// //     //
// // });


// // 重定向路由
// // 将/foo 重定向到/
// // [第三个参数,自定义状态码],默认是302
// Route::redirect('/foo', '/', 301);


// //视图路由
// // 访问位置,参数2:响应页面,参数三:传递值
// // 页面在 项目/resources/views/welcome.blade.php
// Route::view('/view', 'welcome');
// Route::view('/welcome', 'welcome', ['name' => 'Taylor']);

// // 必填参数
// // id 必须填写
// // 现在fun 中的 id 可用与{id} 名字不一样,以前必须一样,按顺序一一对应
// Route::get('user/{id}', function ($id) {
//     return 'User ' . $id;
// });

// // 可选参数
// // 你可能需要指定一个路由参数，但你希望这个参数是可选的。
// // 你可以在参数后面加上？标记来实现，
// // 但前提是要确保路由的相应变量有默认值：
// Route::get('user/{name?}', function ($name = 'aaa') {
//     return $name;
// });

// // 正则表达式约束
// Route::get('user1/{name}', function ($name) {
//     return $name;
// })->where('name', '[A-Za-z]+');


// // 路由命名
// // 路由命名可以方便地 为指定路由生成 URL  或者  重定向
// //profile 指向 user2/profile
// Route::get('user2/profile', function () {
//     // 生成链接...
//     $url = route('profile');
//     dd($url);    //dd()封装后的打印函数 "http://127.0.0.1:8000/user2/profile"

//     // 生成重定向...
//     //return redirect()->route('profile');

// })->name('profile');


// // 如果有定义参数的命名路由，
// // 可以把参数作为 route 函数的第二个参数传入，
// // 指定的参数将会自动插入到 URL 中对应的位置：

// // 访问http://127.0.0.1:8000/user3/555/profile
// Route::get('user3/{id}/profile', function ($id) {
//     // 多个参数,向数组中添加
//     $url = route('profile', ['id' => 1]);
//     // 只有一个参数,可以直接写
//     $url = route('profile', 1);
//     dd($url);   //"http://127.0.0.1:8000/user3/1/profile"
// })->name('profile');


// -------------------以上为路由练习-----------------------------------------------

// 使用控制器, [控制器,控制器中的方法]
// 可以写上整个路径,也可以使用use 先导入在使用
// Route::get('/test',[App\Http\Controllers\TestController::class,'test'])
// Route::get('/test',[TestController::class,'test']);


// 传递参数
// Route::get('/test/{id}',[TestController::class,'test']);

// // 使用单行为控制器
// // 因为但行为控制器中只有一个方法__invoke ,所以不需要指定方法名
// //访问 http://127.0.0.1:8000/test1/12123
// Route::get('/test1/{id}',ShowProfile::class);

// // 使用资源型控制器
// // 使用资源控制器,会自动在路由中注册资源控制器里面的方法
// // 简化手动对路由的注册操作
// // 使用 php artisan route:list 可以查看到
// // Route::resource('photo',PhotoController::class);

// //使用部分资源控制
// // except 下的PhotoController 方法将不会被注册到路由中,其余PhotoController
// // 的方法会被注册
// // only 效果相反,相同操作
// // 需要的注意的是:如果两个Route::resource 同时使用同一个资源类
// // 一个排除方法,一个没有排除,最终会显示没有排除的
// Route::resource('photo',PhotoController::class)->except([
//     'create','store','update','destroy'
// ]);

// // 命名资源路由名称
// Route::resource('photo',PhotoController::class)->except([
//     'create','store','update','destroy'
// ])->name([
//     'index'=>'aa.cc'    //重新定义路由名称
// ]);



// // 命名资源路由参数
// Route::resource('photo',PhotoController::class)->except([
//     'create','store','update','destroy'
// ])->name([
//     'index'=>'aa.cc'    //重新定义路由名称,photo.index 变成aa.cc
// ])->parameters([
//     'ph'=>'ph2'   //路由传递的photo/{ph}参数名称改变为photo/{[ph2}
// ]);


// // 补充资源路由
// // 需要定义在资源路由使用前,否则会被其优先级覆盖掉
// // 需要在PhotoController 中添加ppp 方法
// Route::get('/photo/ppp',[PhotoController::class,'ppp']);

// Route::resource('photo',PhotoController::class);


// --------------------以上为控制器练习----------------------

//使用 项目/resources/views/child.blade.php 模板
// Route::get('/child',function(){
//     // return view('child');   //使用模板

//      //使用模板,传递参数
//     //  模板中使用 {{$name}} 
//     return view('child',[
//         'name'=>'哈哈哈哈',
//         'script'=>'<script>alert(1)</script>',
//         'html'=>'&lt;script&gt;alert(1)&lt;/script&gt;',
//         'json'=>['name'=>'嘻嘻嘻','age'=>18],
//     ]);  
// });




// --------------------以上为Blade 练习----------------------









// Route::get('/welcome', function () {
//     return view('welcome');
// });

// // 博客首页
// Route::get('/', function () {
//     dd('博客首页');
// })->name('index');      //为路由命名,相当与起别名


// // 博客详情
// Route::get('/blog/{id}', function ($id) {
//     dd('查看的博客id 是 :'.$id);
// })->name('blog.show')->where('id','[0-9]+');


// // 博客发布页面
// Route::get('/blog/create', function () {
//     dd('添加博客的页面');
// })->name('blog.create');



// // 提交发布的博客,进行保存
// Route::post('/blog', function () {
//     dd('保存博客');
// })->name('blog.store');


// // 修改博客的页面
// Route::get('/blog/{id}/edit', function ($id) {
//     dd('修改博客的页面,博客是:'.$id);
// })->name('blog.edit');


// // 提交数据,执行修改操作
// Route::put('/blog/{id}', function ($id) {
//     dd('执行修改,修改的博客是:'.$id);
// })->name('blog.update');



// // 删除博客
// Route::delete('/blog/{id}', function ($id) {
//     dd('删除的博客是:'.$id);
// })->name('blog.destory');

// //改变博客的状态,发布与不发布
// Route::patch('/blog/{id}', function ($id) {
//     dd('要改变状态的博客是:'.$id);
// })->name('blog.status');



// //个人中心-修改个人信息-页面
// Route::get('/user', function () {
//     dd('修改个人信息页面:');
// })->name('user.info');


// //个人中心-修改个人信息-更新数据
// Route::put('/user', function () {
//     dd('执行修改个人信息:');
// })->name('user.update');


// //个人中心-更换头像-页面
// Route::get('/user/avatar', function () {
//     dd('修改头像页面:');
// })->name('user.avatar');




// //个人中心-更换头像-更新数据
// Route::patch('/user/avatar', function () {
//     dd('执行修改头像:');
// })->name('user.avatar.update');



// //个人中心-我的博客
// Route::get('/user/blog', function () {
//     dd('我的所有博客:');
// })->name('user.blog');


// 登入注册相关的路由,将会直接使用laravel 提供的,这里就不写了

// 临时显示登入路由
// Route::get('/login',function(){
//     return view('login.login');
// });
// Route::get('/register',function(){
//     return view('login.register');
// });

// --------请求控制器测试----------------
// Route::get('/test1',Test1Controller::class);
// Route::get('/test1/{id}',Test1Controller::class);

// --------数据库控制器测试----------------
// Route::get('/test2',Test2Controller::class);

// --------响应控制器测试----------------
// Route::get('/test3',Test3Controller::class);

// --------存储文件控制器测试----------------
// Route::get('/test4',Test4Controller::class);

// --------表单验证控制器测试----------------
// Route::get('/test5',Test5Controller::class);

// --------缓存测试----------------
// Route::get('/test5',Test5Controller::class);

// --------路由组测试----------------
// 子域名路由
// Route::domain('blog2.test')->group(function(){
//     Route::get('/domian',function(){
//         //  匹配 blog2.test/domian
//     });
// });


// 路由前缀
// Route::prefix('admin')->group(function () {
//     Route::get('/users', function () {
//         // 匹配 「/admin/users」URL
//         // http://localhost:8000/admin/users
//     });
// });

//路由名称前缀
// Route::name('admin.')->group(function () {
//     Route::get('/orders', function () {
//         // 访问 http://localhost:8000/orders
//         dd(route('admin.orders'));  //"http://localhost:8000/orders"
//         // 指定路由名称「admin.orders」...
//         // 将所有路由命名添加一个前缀
//         // 在name 定义的orders 上添加一个前缀
//     })->name('orders');
// });

// --------中间件测试-----------------------
// 路由组中间件
// 使用自己创建的中间件CheckAge
// Route::middleware('check.age')->group(function () {
//     Route::get('/users', function () {
//         //    访问 http://localhost:8000/users
//         //    访问 http://localhost:8000/users?age=22
//         dd('age 大于20 显示此消息,小于20 重定向到/ 下');
//     });
// });

// // 单个路由中间件
// Route::get('/users1', function () {
//     //    访问 http://localhost:8000/users1
//     //    访问 http://localhost:8000/users1?age=22
//     dd('age 大于20 显示此消息,小于20 重定向到/ 下.........');
// })->middleware('check.age');
// // 多个中间件使用,或者[]
// // middleware('check.age','check.age1');
// // middleware(['check.age','check.age1']);

// // 向中间件传递参数 :后为参数
// Route::get('/users2', function () {
//     //    访问 http://localhost:8000/users2
//     //    访问 http://localhost:8000/users2?age=22
//     dd('age 大于20 显示此消息,小于20 重定向到/ 下....123124');
// })->middleware('check.age:id1234');
// // 中间件有参数时,上面无参的路由会失效报错,因为此时中间件需要3个参数
// // 有一个传递的值参数



// --------模型测试----------------
// Route::get('/test6',Test6Controller::class);


// --------路由模型绑定测试----------------
// 模型注入
// 根据传递过来的{user} 的值,在User 对应的 users 表中查询对应的id,
// 存在此id 就返回数据,不存在就返回404
// 需要使用对应的模型
// Route::get('/users/{user}',function(User $user){
//     return $user ;
// });
// 限定字段为email 字段中查找
// Route::get('/users/{user:email}',function(User $user){
//     return $user ;
// });
// Route::get('/users/{user:id}',function(User $user){
//     return $user ;
// });
// 如果有其他类,比如 request 的请求类,request 在前面 
// Route::get('/users/{user:id}',function(Request $request,User $user){
//     return $user ;
// });



// --------响应宏测试----------------
// Route::get('/test7',Test7Controller::class);

// --------邮件测试----------------
// Route::get('/test8',Test8Controller::class);


// --------队列测试----------------
// Route::get('/test9',Test9Controller::class);

// --------事务机制测试----------------
// Route::get('/test10',Test10Controller::class);






//----------------结束----------------------







// 用户认证中间件
// 需要登入的页面
// 中间件用户认证中间件是自带已经注册好的,可以直接使用
Route::middleware('auth')->group(function () {
    // 登入后,博客相关的路由
    Route::prefix('blog')->name('blog.')->group(function () {
        //改变博客的状态,发布与不发布
        Route::patch('/{id}/status', [Blogcontroller::class, 'status'])
            ->name('status');
        //评论路由
        Route::post('/{id}/comment', CommentController::class)
            ->name('comment');
    });


    // 个人中心相关的路由
    // prefix 路由前缀,路径添加前缀
    // name('user.') 命名前缀,如果这里没有. 里面的所有路由命名前面都需要加上.
    Route::prefix('user')->name('user.')->group(function () {
        //个人中心-修改个人信息-页面
        Route::get('/', [UserController::class, 'infoPage'])
            // ->name('user.info');
            ->name('info');

        //个人中心-修改个人信息-更新数据
        Route::put('/', [UserController::class, 'infoUpdate'])
            ->name('info.update');

        //个人中心-头像-页面
        Route::get('/avatar', [UserController::class, 'avatarPage'])
            ->name('avatar');

        //个人中心-头像-更新数据
        Route::put('/avatar', [UserController::class, 'avatarUpdate'])
            ->name('avatar.update');

        //个人中心-所有博客
        Route::get('/blog', [UserController::class, 'blog'])
            ->name('blog');
    });
});



// 博客资源路由
// 定义博客资源路由,上面的基础路由可以去掉
Route::resource('blog', Blogcontroller::class)->except([
    'index',    //将此路由去除,首页使用自己定义的路由
]);

// 博客首页
// Route::get('/', [IndexController::class, 'index'])->name('index');
Route::get('', [IndexController::class, 'index'])->name('index');

// php artisan route:list 查看路由列表以及请求方式




// 登入注册相关的路由,将会直接使用laravel 提供的,这里就不写了

// 访问测试模板路由
// Route::get('test',function(){
//     return view('test');
// });
// 直接定义 视图路由
// Route::view('test','test');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
