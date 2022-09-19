<?php

namespace App\Http\Controllers;

// 包含所有请求的数据
use Illuminate\Http\Request;

class Test1Controller extends Controller
{
    // 参数中自动实例化对象,赋值到$request 变量中
    // 第二个及以上的参数为路由请求路径中的参数
    // public function __invoke(Request $request, $id)
    public function __invoke(Request $request)
    {
        //    dd('test1');
        //    dd($request);
        // 请求路径信息,除去域名
        // dd($request->path());   //test1
        // dd($request->is('test1'));  //判断是否是test1 路径,true
        // 请求的URL
        // dd($request->url());    //不包含查询的字符串,"http://localhost:8000/test1"
        // dd($request->fullUrl());    //包含查询的字符串,"http://localhost:8000/test1?123=123"
        // 请求方法
        // dd($request->method()); //"GET"
        // dd($request->isMethod('post')); //判断是否是post 提交,false

        // 获取路由传递过来的值
        // all 获取所有的值
        // $name = $request->all();
        // dd($name);
        // array:1 [▼
        //   123 => "123"
        //   ]

        // 获取指定参数,参数2为默认值
        // $name = $request->input('que');
        // $name = $request->input('que','默认值12312');
        //当传递过来的是数组或对象时.可以使用. 来获取
        // $name = $request->input('que.0.name');
        // $name = $request->input('que.*.name');
        // dd($name);  //"123"

        // 获取get 请求的参数
        // $name = $request->query('que');
        // $name = $request->query('que','默认值');
        // $name = $request->query();  //获取所有参数
        // dd($name);  //"123"
        
        // 动态属性获取输入
        // $name=$request->aa; //传递的aa 参数
        // dd($name);  //"123"

        // 使用数组来获取输入的数据
        // dd($request['aa']);     //"123"

        // 获取部分输入的数据
        // $name=$request->only(['name','age']);
        // $name=$request->only('name','age');
        // $name=$request->except(['name','age']);
        // $name=$request->except('name','age');

        // 判断输入的值是否存在
        $is=$request->has('name');
        // 判断是否所有的都存在
        $is=$request->has(['name','age']);
        // 判断任意一个存在,就返回true
        // $is=$request->hasAny(['name','age']);
        // 判断是否存在并且不为空
        $is=$request->filled(['name','age']);
        //判断一个值在请求中是否缺失
        $is=$request->missing(['name','age']);
        dd($is);
    }
}
