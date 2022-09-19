<!-- Stored in resources/views/child.blade.php -->

{{-- 继承父模板,即将父模板内容导入进来 --}}
@extends('layouts.app')

@section('title', 'Page Title')

{{-- section定义内容,yield 显示内容 --}}
@section('sidebar')
    {{-- parent 定义与父模板同名 片段内容时,可以继承父模板内容,而不会覆盖父模板中的内容 --}}
    @parent

    <p>这是子模板的内容.</p>
    {{-- endsection 表示结束,定义了但是不会显示内容
        即立即yield 这个片段 --}}
@endsection

@section('content')
    <p>This is my body content.</p>
@endsection

{{-- 接收路由中传递过来的值 --}}
{{ $name }}


{{-- 花括号内可以使用任何php 代码 --}}
{{-- Blade 的 {{ }} 语句将被 PHP 的 htmlspecialchars 函数自动转义以防范 XSS 攻击。 --}}
{{ time() }}
{{ $script }}

{{ $html }}

{{-- 使用{!! !!} 将转义的字符转换回来 --}}
{!! $html !!}

{{-- 使用{!! !!} 可以将正常脚本执行 --}}
{{-- {!! $script !!} --}}

{{-- @原生输出,不解析变量 --}}
@{{ $script }}


<script>
    {{-- 指令中可以直接使用变量,不需要{{}}
    php 中的script 代码也要写; 结尾,否则报错
    --}}
     
    var json = @json($json);
    console.log(json);
</script>


{{-- 控制结构 --}}
{{-- count 数组长度 --}}
@if (count($json) === 1)
    I have one record!
@elseif (count($json) > 1)
    I have multiple records!
@else
    I don't have any records!
@endif

{{-- unless 为假时才进行操作 验证用户有没有登入 --}}
@unless(Auth::check())
    You are not signed in.
@endunless

{{-- 鉴权指令
     @auth 和 @guest 
     指令可用于快速判断当前用户是否已经获得授权或是当前用户是游客：
     用于显示各自不同的页面 --}}
@auth {{-- 里面也可以使用else 来判断 --}}
    用户已经通过认证……
@else
    没有登入
@endauth

@guest
    用户没有通过认证……
@endguest


{{-- loop 循环 --}}
{{-- 循环时，循环内部可以使用 $loop 变量。
    该变量提供了访问一些诸如当前的循环索引
    和此次迭代是首次或是末次这样的信息的方式： --}}
@foreach ($json as $value)
    @if ($loop->first)
        第一次迭代
    @endif

    @if ($loop->last)
        最后一次迭代
    @endif

    <p>This is user {{ $value }}</p>
@endforeach

{{--  模板注释不会被渲染到界面中 --}}
<!-- html 注释会被渲染到界面中,f12 可以查看到-->

@php
    echo '执行原生php 代码';
    $a ='哈哈哈哈';
@endphp

{{-- 可以被模板使用 --}}
{{$a}}

{{-- CSRF 域,隐藏的input 表单token --}}
{{-- f12 查看到 --}}
@csrf

{{-- 引入子视图,不存在会报错 --}}
{{-- 子视图中可以使用父视图的变量 --}}
{{-- @include('list') --}}
{{-- 也可以传递参数 --}}
@include('list',['name'=>'发到饭否'])
{{-- 引入不确定是否存在的视图 --}}
@includeIf('list', ['some' => 'data'])