@extends('layouts.app')

@section('title','注册')

@section('style')
<style>

</style>
    
@endsection

@section('content')
    <div class="container">
        <div class="row pt-4">
            <div class="card col-lg-4 offset-4 mb-3 mt-5">
                <div class="card-body">

                    @include('login.nav-top',['nav'=>'register'])

                    <hr>
                    <form action="">
                        <div class="form-group">
                            <label for="exampleInputName" class="fs-14 font-weight-bold">用户名</label>
                            <input type="text" 
                            id="exampleInputName"
                            placeholder="请填写用户名或邮箱"
                            aria-describedby="emailHelp"
                            class="form-control form-control-sm">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="fs-14 font-weight-bold">密码</label>
                            <input type="password" 
                            id="exampleInputPassword1"
                            placeholder="请输入密码"
                            class="form-control form-control-sm">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword2" class="fs-14 font-weight-bold">确认密码</label>
                            <input type="password" 
                            id="exampleInputPassword2"
                            placeholder="再次输入密码"
                            class="form-control form-control-sm">
                        </div>
                        <button class="btn btn-primary btn-sm w-100 mt-4 ">登录</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection