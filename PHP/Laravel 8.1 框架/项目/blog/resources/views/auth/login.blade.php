@extends('layouts.app')

@section('title','登录')

@section('style')
    <style>

    </style>
@endsection

@section('content')
    <div class="container">
        <div class="row pt-4">
            <div class="card col-lg-4 offset-4 mb-3 mt-5">
                <div class="card-body">
                    
                    @include('auth.nav-top',['nav'=>'login'])

                    <hr>
                    {{-- 系统的自定义错误提示组件 --}}
                    {{-- <x-jet-validation-errors class="mb-4" /> --}}
                    {{-- 使用自己定义的错误组件 --}}
                    @include('common.error')
                    <form method="POST" action="{{ route('login') }}">
                        {{-- 安全授权 --}}
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1" class="fs-14 font-weight-bold">邮箱</label>
                            <input type="email" 
                            id="exampleInputEmail1"
                            placeholder="请填写邮箱"
                            aria-describedby="emailHelp"
                            name="email"
                            {{-- 辅助函数old 会将错误信息闪存到session 中,使用value 显示,当前值显示在value --}}
                            {{-- old 中的值为name 中的值 --}}
                            {{-- 只会存储一次,再次刷新就会失效 --}}
                            value="{{old('email')}}"
                            class="form-control form-control-sm">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="fs-14 font-weight-bold">密码</label>
                            <input type="password" 
                            name="password"
                            id="exampleInputPassword1"
                            placeholder="请输入密码"
                            class="form-control form-control-sm">
                        </div>
                        <button class="btn btn-primary btn-sm w-100 mt-4 ">登录</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>

    </script>
@endsection
{{-- <x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-jet-checkbox id="remember_me" name="remember" />
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                @endif

                <x-jet-button class="ml-4">
                    {{ __('Log in') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout> --}}
