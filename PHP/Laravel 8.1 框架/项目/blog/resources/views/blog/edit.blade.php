@extends('layouts.app')

@section('title', '编辑博客')

@section('style')
    <style>

    </style>
@endsection

@section('content')
    <div class="container ">
        <div class="card mb-3 mt-4">
            <div class="card-body">
                <form action="">
                    <div class="form-group">
                        <label for="exampleFormControlInput1"> 标题</label>
                        <input type="text" class="form-control" value="第一个博客" id="exampleFormControlInput1"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1"> 分类</label>
                        {{-- {{categories()}} --}}
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option value="0">请选择分类</option>
                            @foreach (categories() as $id=>$name)
                                <option value="{{$id}}" >{{$name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleForControlTexteare1">内容</label>
                        <textarea class="form-control" id="exampleForControlTexteare1"></textarea>
                    </div>
                    <button class="btn btn-primary w-25 offset-4">修改</button>
                </form>
            </div>
        </div>
    </div>
@endsection
