@extends('layouts.app')

@section('title', '修改头像')

@section('style')
    <style>

    </style>
@endsection

@section('content')
    <div class="container mt-4">
        <div class="row">
            <div class="col-sm-3">
                @include('common.user-menu',['nav'=>'avatar'])
            </div>
            <div class="col-sm-9 p-0">
                <div class="card">
                    <div class="card-header bg-white fs-14">
                        修改头像
                    </div>
                    @include('common.error')
                    @include('common.success')
                    <div class="card-body">
                        <form method="post" action="{{route('user.avatar.update')}}" enctype="multipart/form-data" class="col-md-6 offset-3">
                            @method('put')
                            @csrf
                            <div class="form-group">
                                <label for="exampleFormControlFile1" class="fs-14 font-weight-bold">请选择头像上传</label>
                                <input type="file" name="avatar" class="form-control form-control-sm" id="exampleFormControlFile1"  />
                            </div>
                            <button type="submit" class="btn btn-primary w-25 offset-4">修改</button>
                            {{-- <button>修改</button> --}}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
