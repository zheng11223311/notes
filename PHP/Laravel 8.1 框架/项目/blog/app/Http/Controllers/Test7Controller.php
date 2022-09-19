<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class Test7Controller extends Controller
{
    public function __invoke(Request $request)
    {
        // $blog=Blog::all();
        // $resData=[
        //     'code'=>200,
        //     'msg'=>'seccuess',
        //     'time'=>time(),
        //     'data'=>$blog
        // ];
        // return response()->json($resData);


        // 使用响应宏
        return response()->api('成功', 200, Blog::all());
    }
}
