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