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
                    
                    @include('login.nav-top',['nav'=>'login'])

                    <hr>

                    <form action="">
                        <div class="form-group">
                            <label for="exampleInputEmail1" class="fs-14 font-weight-bold">用户名</label>
                            <input type="email" 
                            id="exampleInputEmail1"
                            placeholder="请填写用户名或邮箱"
                            aria-describedby="emailHelp"
                            class="form-control form-control-sm">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="fs-14 font-weight-bold">用户</label>
                            <input type="password" 
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