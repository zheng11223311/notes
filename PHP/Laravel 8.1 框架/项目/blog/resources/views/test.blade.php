{{-- 继承父模板 --}}
@extends('layouts.app')

@section('title', '博客首页')

@section('content')
    <p>我是子页面</p>
@endsection

@section('style')

@endsection

@section('script')
    <script>
        console.log($)
        alert(1)
    </script>

@endsection
