@extends('layouts.app')

@section('title', '修改个人信息')

@section('style')
    <style>

    </style>
@endsection

@section('content')
    <div class="container mt-4">
        <div class="row">
            <div class="col-sm-3">
                @include('common.user-menu', ['nav' => 'info'])
            </div>
            <div class="col-sm-9 p-0">
                <div class="card">
                    <div class="card-header bg-white fs-14">
                        修改个人信息
                    </div>
                    <div class="card-body">
                        @include('common.error')
                        @include('common.success')

                        <form method="post" action="{{ route('user.info.update') }}" class="col-md-6 offset-3">
                            {{-- csrf 认证 --}}
                            @csrf
                            {{-- 使用 put 提交数据 --}}
                            {{-- <input type="hidden" name="_method" value="PUT"> --}}
                            {{-- 或使用method() --}}
                            @method('put')
                            {{-- csrf 和method 都是生成input hidden 的表单 --}}
                            <div class="form-group">
                                <label for="exampleInputName" class="fs-14 font-weight-bold">用户名</label>
                                <input type="text" name="name"
                                    class=" @error('name') is-invalid @enderror form-control form-control-sm"
                                    id="exampleInputName" value="{{ auth()->user()->name }}" aria-describedby="emailHelp"
                                    placeholder="请填写用户名" />
                                @error('name')
                                    {{-- 指定字段的错误验证提示 --}}
                                    {{-- 如果name 有错误的话,这里会显示 --}}
                                    {{-- invalid-feedback 类名是确定的,不能修改 --}}
                                    {{-- 关联的input 表单需要添加 is-invalid 类名,这个类名在input 中会显示错误提示符号 --}}
                                    {{-- 使用 @error('name') is-invalid  @enderror 判定在错误的时候显示 --}}
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail" class="fs-14 font-weight-bold">邮箱</label>
                                <input type="email" name="email" class=" @error('email') is-invalid @enderror form-control form-control-sm" id="exampleInputEmail"
                                    value="{{ auth()->user()->email }}" aria-describedby="emailHelp"
                                    placeholder="请填写用户名" />
                                @error('email')
                                    {{-- 指定字段的错误验证提示 --}}
                                    {{-- 如果name 有错误的话,这里会显示 --}}
                                    {{-- invalid-feedback 类名是确定的,不能修改 --}}
                                    {{-- 关联的input 表单需要添加 is-invalid 类名,这个类名在input 中会显示错误提示符号 --}}
                                    {{-- 使用 @error('name') is-invalid  @enderror 判定在错误的时候显示 --}}
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <button class="btn btn-primary w-25 offset-4">修改</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
