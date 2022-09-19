@extends('layouts.app')

@section('title', '发布博客')

@section('style')
    <style>

    </style>
@endsection

@section('content')
    <div class="container ">
        <div class="card mb-3 mt-4">
            <div class="card-body">
                <form action="{{route('blog.store')}}" method="post">
                    @csrf
                    @include('common.error')
                    @include('common.success')
                    <div class="form-group">
                        <label for="exampleForControlInput1">标题</label>
                        {{-- old 获取添加失败时返回的数据 --}}
                        <input name="title" value="{{old('title')}}" type="text" class="form-control" id="exampleForControlInput1"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleForControlSelect1">分类</label>
                        <select name="category_id" value="" type="password" class="form-control" id="exampleForControlSelect1">
                            <option value="0">请选择分类</option>
                            @foreach (categories() as $id=>$name)
                                <option {{old('category_id')==$id?'selected':''}} value="{{$id}}">{{$name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleForControlTexteare1">内容</label>
                        {{-- textarea 没有value 属性,默认值只能写在 标签内 --}}
                        <textarea name="content"  class="form-control" id="exampleForControlTexteare1">{{old('content')}}</textarea>
                    </div>
                    <button class="btn btn-primary w-25 offset-4">发布</button>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection