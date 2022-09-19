<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    /** 使用/** 热键 就会自动生成注释
     * 博客首页
     */
    public function Index(Request $request)
    {
        // dd('博客首页');

        // 搜索关键字
        // dd($request->all());
        // query  只获取get 的url参数,input 也可以
        // $request->keyword 也可以
        $keyword = $request->query('keyword');
        // dd($keyword);
        // 获取分类id
        $category_id = $request->query('category_id');


        // 查询博客数据
        // 查询已发布的数据
        // $blogs=Blog::where('status',1)->get();
        // dd($blogs);
        // 分页获取,paginate 默认15条
        // paginate 分页功能较多,simplePaginate 简单分页只有上一页和下一页
        // $blogs=Blog::where('status',1)->paginate();
        // 每页2条
        // 访问 http://localhost:8000/?page=1
        // 访问 http://localhost:8000/?page=2

        // when 当值存在的时候,执行闭包中的搜索,不存在则不执行闭包
        // use 使用外部的变量
        // function($query,$keyword) 也可以
        // $blogs = Blog:: when($keyword, function ($query) use ($keyword) {
        //         // 查询数据库中title 或content 字段
        //         $query->where('title', 'like', "%{$keyword}%");
        //             // ->orWhere('content', 'like', "%{$keyword}%");
        //     })
        //     ->when($category_id,function($query) use ($category_id){
        //           $query->where('category_id',$category_id);
        //     })
        //     ->when($keyword,function($query) use ($keyword){
        //           $query->where('content','like', "%{$keyword}%");
        //     })
       

        // $blogs = Blog:: when($keyword, function ($query) use ($keyword) {
        //         // 查询数据库中title 或content 字段
        //         $query->where('title', 'like', "%{$keyword}%");
        //             // ->orWhere('content', 'like', "%{$keyword}%");
        //     })
        //     ->when($category_id,function($query) use ($category_id){
        //           $query->where('category_id',$category_id);
        //     })
        //     ->when($keyword,function($query) use ($keyword){
        //           $query->where('content','like', "%{$keyword}%");
        //     })
        //     ->where('status', 1)
        //     ->orderBy('updated_at', 'desc')
        //     // ->paginate(2)
        //     ->dd(); //输出sql 语句,不能使用paginate 语句


         // 使用参数分组形式
        $blogs = Blog:: when($keyword, function ($query) use ($keyword) {
                // 查询数据库中title 或content 字段
                $query->where(function($query) use ($keyword){
                    // 这两个语句一起执行后的结果交给下一个语句产生结果
                    // 不使用高级语句,就会导致这三个语句一起执行产生一个结果,
                    // orWhere 产生或的行为
                    $query->where('title', 'like', "%{$keyword}%")
                    ->orWhere('content', 'like', "%{$keyword}%");
                });
                
            })
            ->when($category_id,function($query) use ($category_id){
                  $query->where('category_id',$category_id);
            })
            // 使用关联blog 模型对应的user函数对应的users 表,限定查询id 和name
            ->with('user:id,name')
            ->where('status', 1)
            ->orderBy('updated_at', 'desc')
            ->paginate(2);
        // 将数据转换为json
        // $blogs=Blog::where('status',1)->paginate(2)->toJson();
        // dd($blogs);
        return view('index.index', ['blogs' => $blogs]);
    }
}
