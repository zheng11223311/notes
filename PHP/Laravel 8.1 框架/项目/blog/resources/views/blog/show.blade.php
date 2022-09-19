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
                    {{-- 如果本文章是自己的,可以编辑内容 --}}
                    @if(auth()->id()==$blog->user_id)
                    <div class="text-right">
                        <a href="{{route('blog.edit',$blog)}}" class="btn btn-primary btn-sm">编辑</a>
                    </div>
                    @endif
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
                        {{-- {{$comment->user[0]['avatar']}} --}}
                            <div class="media mb-3 border-bottom pb-3 replay">
                                <img style="border-radius: 50%" width="50" height="50"
                                    src="{{ $comment->user[0]['avatar'] ? asset('storage/' . $comment->user[0]['avatar'] ) : 'https://t7.baidu.com/it/u=1595072465,3644073269&fm=193&f=GIF' }}" />
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
                                <a href="{{route('login') }}" class="btn btn-primary btn-sm py-1 px-4 ml-3">
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
