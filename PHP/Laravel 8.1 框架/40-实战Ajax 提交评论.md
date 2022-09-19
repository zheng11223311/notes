# Ajax 提交评论

**创建评论模型**

```powershell
php artisan make:model Comment -m		#创建模型同时生成迁移文件

#Model created successfully.
#Created Migration: 2022_05_18_053511_create_comments_table
```



**创建表**

`database\migrations\2022_05_18_053511_create_comments_table.php`

```php
<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommentsTable extends Migration
{
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->comment('评论所属用户');
            $table->integer('blog_id')->comment('评论所属博客');
            $table->string('content')->comment('评论的内容');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('comments');
    }
}

```

**执行迁移**

```powershell
php artisan migrate	
```

执行之后创建`comments`表



## 评论模型

`app\Models\Comment.php`

```php
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    /**
     * 
     * 允许批量添加的字段
     * 
     */
    protected $fillable=[
        'user_id',
        'blog_id',
        'content'
    ];

     /**
     * 
     * 评论所属的用户
     */
    public function user()
    {
        // 一个bolg id关联(拥有)许多comment 评论id
        // Comment 表中的blog_id ,关联blog 表中的id
        return $this->hasMany(User::class,'id','user_id');
    }
}

```

 

## 博客评论控制器

`app\Http\Controllers\CommentController.php`

```php
<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * 评论博客
     * Blog $blog 模型注入,
     * 接收路由传递过来的id,查询对应的id,将数据返回给$blog
     * 这里的Blog $id 要与路由中传递的 {id} 名要一样
     * 不一样不能获取到数据
     */
    public function __invoke(Request $request, Blog $id)
    {
        // dd('评论博客');
        //   dd($request->all());

        // 使用模型的方法添加数据
        // 向blog 关联的 comments 表中插入数据
        // create 批量添加需要在Comment.php 模型中允许
        // app\Models\Comment.php
        $res = $id->comments()->create([
            'user_id' => auth()->id(),
            'content' => $request->input('content'),
        ]);
        if ($res) {
            // 返回用户头像和昵称
            $resData = [
                'avatar_url' => auth()->user()->avatar ,
                'user_name' => auth()->user()->name,
                'content' => request()->input('content')
            ];
            // 使用自定义的响应宏
            return response()->api('评论成功!', 200, $resData);
        } else {
            return response()->api('评论失败!', 400);
        }
    }
}

```



## 首页显示控制器

优化

`app\Http\Controllers\IndexController.php`

```php
<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    /** 使用/** 热键 就会自动生成注释
     * 博客首页
     */
    public function Index(Request $request)
    {
        // dd('博客首页');

        // 搜索关键字
        // dd($request->all());
        // query  只获取get 的url参数,input 也可以
        // $request->keyword 也可以
        $keyword = $request->query('keyword');
        // dd($keyword);
        // 获取分类id
        $category_id = $request->query('category_id');


        // 查询博客数据
        // 查询已发布的数据
        // $blogs=Blog::where('status',1)->get();
        // dd($blogs);
        // 分页获取,paginate 默认15条
        // paginate 分页功能较多,simplePaginate 简单分页只有上一页和下一页
        // $blogs=Blog::where('status',1)->paginate();
        // 每页2条
        // 访问 http://localhost:8000/?page=1
        // 访问 http://localhost:8000/?page=2

        // when 当值存在的时候,执行闭包中的搜索,不存在则不执行闭包
        // use 使用外部的变量
        // function($query,$keyword) 也可以
        // $blogs = Blog:: when($keyword, function ($query) use ($keyword) {
        //         // 查询数据库中title 或content 字段
        //         $query->where('title', 'like', "%{$keyword}%");
        //             // ->orWhere('content', 'like', "%{$keyword}%");
        //     })
        //     ->when($category_id,function($query) use ($category_id){
        //           $query->where('category_id',$category_id);
        //     })
        //     ->when($keyword,function($query) use ($keyword){
        //           $query->where('content','like', "%{$keyword}%");
        //     })
       

        // $blogs = Blog:: when($keyword, function ($query) use ($keyword) {
        //         // 查询数据库中title 或content 字段
        //         $query->where('title', 'like', "%{$keyword}%");
        //             // ->orWhere('content', 'like', "%{$keyword}%");
        //     })
        //     ->when($category_id,function($query) use ($category_id){
        //           $query->where('category_id',$category_id);
        //     })
        //     ->when($keyword,function($query) use ($keyword){
        //           $query->where('content','like', "%{$keyword}%");
        //     })
        //     ->where('status', 1)
        //     ->orderBy('updated_at', 'desc')
        //     // ->paginate(2)
        //     ->dd(); //输出sql 语句,不能使用paginate 语句


         // 使用参数分组形式
        $blogs = Blog:: when($keyword, function ($query) use ($keyword) {
                // 查询数据库中title 或content 字段
                $query->where(function($query) use ($keyword){
                    // 这两个语句一起执行后的结果交给下一个语句产生结果
                    // 不使用高级语句,就会导致这三个语句一起执行产生一个结果,
                    // orWhere 产生或的行为
                    $query->where('title', 'like', "%{$keyword}%")
                    ->orWhere('content', 'like', "%{$keyword}%");
                });
                
            })
            ->when($category_id,function($query) use ($category_id){
                  $query->where('category_id',$category_id);
            })
            // 使用关联blog 模型对应的user函数对应的users 表,限定查询id 和name
            ->with('user:id,name')
            ->where('status', 1)
            ->orderBy('updated_at', 'desc')
            ->paginate(2);
        // 将数据转换为json
        // $blogs=Blog::where('status',1)->paginate(2)->toJson();
        // dd($blogs);
        return view('index.index', ['blogs' => $blogs]);
```



## 模板

使用关联模型,修改原先留着的名称`$blog->user->name`

`resources\views\index\index.blade.php`

```php
@extends('layouts.app')

@section('title','首页')


@section('style')
    <link rel="stylesheet" href="{{asset('css/index.css')}}">
    <style>

    </style>
@endsection


@section('content')
    <div class="jumbotron jumbotron-fluid px-0">
        <div class="container text-center text-white">
            <h4 class="display-6">基于Laravel 的博客项目</h4>
            <p class="lead">项目仅用于学习</p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="card">
                    <div class="card-body">
                        {{-- {{dd($blogs );}} --}}
                       @foreach ($blogs as $blog)
                            <div class="article-body">
                                <div>
                                    {{-- 等以后讲到模型关联,将id 替换为对应的名称 --}}
                                    <span class="article-author">{{$blog->user->name}}</span>
                                    {{-- $blog->updated_at 是一个 carbon 对象,dd打印看出, 在packagist 中搜索carbon,就可以看到使用方法 --}}
                                    {{-- diffForHumans carbon 的时间格式化 --}}
                                    {{-- {{dd($blog->updated_at);}} --}}
                                    <span class="article-time">{{$blog->updated_at->diffForHumans()}}</span>
                                </div>
                                <h2 class="font-weight-bold my-3 article-title">
                                    {{-- <a class="text-dark" href="{{route('blog.show',['blog'=>1])}}">博客博客博客博客博客博客</a> --}}
                                    <a class="text-dark" href="{{route('blog.show',$blog->id)}}">{{$blog->title}}</a>
                                </h2>
                                <div class="article-des">{{$blog->content}}</div>
                                <div>
                                    {{-- 标签 --}}
                                    {{-- categories() 自定义辅助函数 app/helpers.php --}}
                                    <a href="#" class="badge badge-warning mt-3 article">{{getCategories()[$blog->category_id]}}</a>
                                </div>
                            </div>
                            <hr>
                        @endforeach
                        {{-- 系统默认的css 不是bootstrap ,这里显示的就会乱 --}}
                        {{-- 需要在 app/Providers/AppServiceProvider.php 中修改 --}}
                        {{-- {{$blogs->links()}} --}}
                        {{-- 附加参数到分页中 --}}
                        {{-- {{$blogs->appends(['sort'=>'votes'])->links()}} --}}
                        {{-- 追加搜索关键字 或使用 withQueryString --}}
                        {{-- {{$blogs->appends(['keyword'=>request()->query('keyword')])->links()}} --}}
                        {{$blogs->withQueryString()->links()}}
                        {{-- 附加全部查询参数 --}}
                        {{-- {{$blogs->withQueryString()->links()}} --}}
                        {{-- 两边显示多少个分页 --}}
                        {{-- {{$blogs->onEachSide(1)->links() }} --}}
                        {{-- <nav class="d-flex justify-content-center mt-4">
                            <ul class="pagination">
                                <li class="page-item disabled">
                                    <a href="#" class="page-link" tabindex="-1" aria-disabled="">上一页</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active" aria-current="page">
                                    <a href="#" class="page-link">
                                        2 
                                       
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">3</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">下一页</a>
                                </li>
                            </ul>
                        </nav> --}}
                    </div>
                </div>
            </div>
            <div class="col-sm-3 p-0">
                @include('common.right-card',[
                    'imgUrl'=>'https://www4.bing.com//th?id=OHR.SwedishAntenna_ZH-CN9163420082_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp&w=240&h=135',
                    'title'=>'博客网站',
                    'content'=>'一个用来学习Laravel 的博客项目,基于Bootstrap4.0 开发',
                    // 'count'=>$blogs->count()     //当前页的数量
                    'count'=>$blogs->total()     //总数量
                ])
            </div>
        </div>
    </div>
@endsection
```



**优化内容展示页面**

`resources\views\blog\show.blade.php`

```php
@extends('layouts.app')

@section('title', '博客详情')

@section('style')
    {{-- <link rel="stylesheet" href="{{ asset('css/markdown.css') }}"> --}}
    <style>
        .replay:last-child {
            border-bottom: none !important;
        }

    </style>
@endsection

@section('content')
    <div class="container mt-5">
        <div class="row ">
            <div class="col-sm-9">
                <div class="card">
                    <div class="card-body">
                        <h3 class="font-weight-light text-center mb-3">{{ $blog->title }}</h3>
                        <div class="text-center fs-14 text-muted">
                            <span class="mr-2">时间: {{ $blog->updated_at->diffForHumans() }}</span>
                            <span class="mr-2">浏览次数: {{ $blog->view }}</span>
                        </div>
                    </div>
                    <div class="content  p-0">
                        {{ $blog->content }}
                    </div>
                </div>

                <div class="card mt-4">
                    <div class="card-header bg-white fs-14">
                        回复数量
                    </div>
                    <div class="card-body" id="comment-list">
                        {{-- 存在数据则迭代 --}}
                        @forelse ($blog->comments as $comment)
                            <div class="media mb-3 border-bottom pb-3 replay">
                                <img style="border-radius: 50%" width="50" height="50"
                                    src="{{ $comment->user[0]['avatar'] ? asset('storage/' . auth()->user()->avatar) : 'https://t7.baidu.com/it/u=1595072465,3644073269&fm=193&f=GIF' }}" />
                                <div class="media-body" style="display: inline-block">
                                    <h5 class="mt-0">{{ $comment->user[0]->name }}</h5>
                                    {{-- <h5 class="mt-0">{{$comment->user->name}}</h5> --}}
                                    {{ $comment->content }}
                                </div>
                            </div>

                            {{-- 如果数据为空 --}}
                        @empty  
                            {{-- py 上下间距  text-muted 字体颜色偏灰 text-center 居中 --}}
                            <div id="empty" class="text-center py-3 text-muted">暂无评论...</div>
                        @endforelse

                    </div>
                </div>

                @auth
                    <div class="card mt-4">
                        <div class="card-body pb-9">
                            <form id="form-comment" action="{{ route('blog.comment', $blog->id) }}">
                                @csrf
                                <div class="form-group">
                                    <textarea name="content" class="form-control" id="" cols="30" rows="10"></textarea>
                                </div>
                                <div class="text-right">
                                    <button id="btn-comment" type="button"
                                        class="btn btn-primary btn-sm py-1 px-4 ml-3">评论</button>
                                </div>
                            </form>
                        </div>
                    </div>
                @else
                    <div class="card mt-4">
                        <div class="card-body pb-2">
                            <div class="alert alert-warning" role="alert">
                                您还没有登入,请登入!
                                <a href="#" class="btn btn-primary btn-sm py-1 px-4 ml-3">
                                    马上登入
                                </a>
                            </div>
                        </div>
                    </div>
                @endauth
            </div>
            <div class="col-sm-3 p-0">
                @include('common.right-card', [
                    'imgUrl' =>
                        'https://www4.bing.com//th?id=OHR.SwedishAntenna_ZH-CN9163420082_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp&w=240&h=135',
                    'title' => $blog->category->name,
                    'content' => '收录了 ' . $blog->category->name . ' 相关的文章',
                    'count' => $blog->category->blogs()->count(), //blog 获取关联的category 模型的php 分类,category 获取与php 分类关联的blog 模型的count 数量
                    'category_id' => $blog->category_id,
                ])
            </div>
        </div>

    </div>
@endsection

@section('script')
    <script>
        $(function() {
            let form = $('#form-comment')
            // console.log(form.serialize());  //串行化,form  表单提交的数据
            // _token=a7tOqzGbaiHEI91JTL2HaHa3KxEnQwiPkjzoSfT5&content=
            // return
            console.log(form.attr('action'));
            $('#btn-comment').click((e) => {
                e.preventDefault();
                e.stopPropagation();
                $.ajax({
                    url: form.attr('action'),
                    type: "post",
                    data: form.serialize(),
                    dataType: 'json',
                    success: (res) => {
                        console.log(res);
                        if (res.code == 200) {
                            // alert(res.msg)
                            // 评论成功之后,评论内容显示到评论列表里面
                            $('#comment-list').append(`
                            <div class="media mb-3 border-bottom pb-3 replay">
                                <img style="border-radius: 50%" width="50" height="50"
                                    src="${'/storage/'+res.data.avatar_url}" />
                                <div class="media-body" style="display: inline-block">
                                    <h5 class="mt-0">${res.data.user_name}</h5>
                                   ${ res.data.content}
                                </div>
                            </div>
                            `)
                            // 清空输入框的内容
                            $('textarea[name="content"]').val('');
                            // 隐藏为无评论的提示
                            $('#empty').hide();
                        } else {
                            alert(res.msg)
                        }
                    }
                })
            })
        })
    </script>
@endsection

```

