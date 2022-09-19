@extends('layouts.app')

@section('title', '所有博客')

@section('style')
    <style>

    </style>
@endsection

@section('content')
    <div class="container mt-4">
        <div class="row">
            <div class="col-sm-3">
                @include('common.user-menu', ['nav' => 'blog'])
            </div>
            <div class="col-sm-9 p-0">
                <div class="card">
                    <div class="card-header bg-white fs-14">
                        所有博客
                    </div>
                    <div class="card-body">
                        @foreach ($blogs as $blog)
                            <div class="del-blog-parent blog-list border-bottom pb-3 mb-3">
                                <div class=""><a href="{{route('blog.show',$blog)}}" class="text-dark text-decoration-none">{{ $blog->title }}</a></div>
                                <div class="mt-2 d-flex justify-content-between">
                                    <div class="fs-14 text-muted">
                                        <span>时间 : {{ $blog->updated_at->diffForHumans() }}</span>
                                        <span>&nbsp;&nbsp; 浏览次数 : {{ $blog->view }}</span>
                                        <span> &nbsp;&nbsp;评论数 : {{ $blog->comments_count }}</span>
                                    </div>
                                    <div class="d-flex justify-content-end ">
                                        <div class="custom-control custom-switch mr-3">
                                            <input {{$blog->status==1?'checked':''}} data-url="{{route('blog.status',$blog)}}" type="checkbox" class="status-blog custom-control-input" id="status-{{$blog->id}}">
                                            <label class="custom-control-label text-muted " style="font-size: 14px" for="status-{{$blog->id}}">是否发布</label>
                                          </div>
                                        <a href="{{route('blog.edit',$blog)}}" class="btn btn-sm py-0 px-3 btn-primary">编辑</a>
                                        <a href="javascript:;" data-url="{{route('blog.destroy',$blog)}}" class="del-blog btn btn-sm py-0 px-3 btn-danger ml-2">删除</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        {{-- 使用分页 --}}
                        {{ $blogs->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('script')
    <script>
        $(function(){
            /**
             * 删除博客
             * 
            */
           $('.del-blog').click(function(){
            //    console.log($(this));
               $.ajax({
                   url:$(this).data('url'),
                   type:'delete',
                   data:{},
                   dataType:'json',
                   success:(res)=>{
                    // console.log(res);
                    if(res.code==200){
                        // 使用提示
                        alert(res.msg)
                        // 让删除的这条从页面消失
                        // $(this).parent().parent().parent().hidden() 
                        // parents 多父级
                        $(this).parents('.del-blog-parent').remove()
                    }else{
                        alert(res.msg)
                    }
                   }
               })
           })

           /*
           *改变博客状态
           */
          $('.status-blog').change(function(){
            $.ajax({
                   url:$(this).data('url'),
                   type:'patch',
                   data:{},
                   dataType:'json',
                   success:(res)=>{
                    // console.log(res);
                    if(res.code==200){
                        // 使用提示
                        alert(res.msg)
                    }else{
                        alert(res.msg)
                    }
                   }
               })
          })

        })
    </script>
@endsection