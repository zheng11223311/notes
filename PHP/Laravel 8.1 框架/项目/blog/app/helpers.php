<?php
// 如果不存在test 函数
// if (! function_exists('test')) {
    
//     function test()
//     {
//         dd('test');
//     }
// }

// ---------以上测试--------------
/**
 * 返回博客分类
 * 返回格式
 * [
 *  [id=>name],
 *  [id=>name],
 *  [id=>name],
 * ]
 */

use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

// 如果不存在categories 函数
if (! function_exists('categories')) {
    
    function categories()
    {

        //查询数据库
        // 返回顺序作为下标
        // $categories=DB::table('categories')->get();

        // 查询列
        // pluck 参数  要查询列作为值[,要查询的列作为键]
        // $categories=DB::table('categories')->pluck('name','id');

        // return $categories;


        // ------------缓存优化修改--------------------
        // 每次都访问数据库,对数据库的压力比较大,解决方法:
        // 方式1.检查key 存不存在,决定要不要查询和缓存
        // $categories=cache('categories');

        // if(empty($categories)){
        //      //查询数据库
        //     $categories=DB::table('categories')->pluck('name','id');
        //     // 写入缓存
        //     cache(['categories'=>$categories]);
        // }


        // 方式2:使用remember 拿到数据并进行缓存
        $categories=Cache::rememberForever('categories',function(){
            $categories=DB::table('categories')->pluck('name','id');
            return $categories;
        });

        return $categories;
    }
  
}
// 拿到数据
if (! function_exists('getCategories')) {
    function getCategories(){
        return DB::table('categories')->pluck('name','id');
    }
}
