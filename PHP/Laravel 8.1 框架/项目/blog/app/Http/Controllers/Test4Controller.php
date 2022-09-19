<?php

namespace App\Http\Controllers;

use Illuminate\Http\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class Test4Controller extends Controller
{

    public function __invoke(Request $request)
    {
        // 存储文件
        // 没有选择磁盘,存放到默认磁盘
        // 在 项目/storage/app/ 下生成file.txt
        // Storage::put('file.txt','内容');

        // disk 选择磁盘
        // 在 项目/storage/app/public 下生成file.txt
        // Storage::disk('public')->put('file.txt','内容');

        // 检索文件
        // $contents = Storage::get('file.txt');
        // dd($contents);  // 文件内容: "内容"

        //  判断磁盘上是否存在指定的文件：
        // $exists = Storage::disk('public')->exists('file.txt');
        // dd( $exists);   //true

        // 判断磁盘上是否缺少指定的文件：
        // $missing = Storage::disk('public')->missing('file.txt');
        // dd($missing);   //false


        // 文件urls
        // 如果磁盘中配置了url 地址,则使用完整url 路径, 'url' => env('APP_URL').'/storage',
        // 'url' => env('APP_URL').'/storage', 也称为自定义主机, env('APP_URL') 自定义自己的需要主机
        // 没有配置url 地址,则使用相对路径
        // $url=Storage::url('file.txt');
        // dd($url);   // 相对路径 "/storage/file.txt"
        // $url=Storage::disk('public')->url('file.txt');
        // dd($url);   // 完整路径 "http://localhost/storage/file.txt"

        // 文件路径
        // 本地返回绝对路径
        // 远程s3 磁盘返回远程磁盘的相对路径
        // $url=Storage::disk('public')->path('file.txt');
        // dd($url);  //"D:\学习\wanye\PHP\Laravel 8.1 框架\项目\blog\storage\app/public\file.txt"

        // 文件的元数据
        // $size = Storage::size('file.txt');
        // dd($size);      //6

        // 自动流式文件传输
        // 自动为文件名生成唯一 ID...
        // 参数 路径,文件
        // Storage::putFile('photos', new File(Storage::disk('public')->path('file.txt')));
        // 在 项目/storage/app/photos 下生成Gdg8bxJhQLL6Twm9r7YNBRrqXW1JINk5V3n7EBsr.txt

        // 手动指定文件名...
        // Storage::putFileAs('photos',new File(Storage::disk('public')->path('file.txt')), 'photo.txt');
        // 在 项目/storage/app/photos 下生成 photo.txt

        // 删除文件
        $re=Storage::delete('file.txt');
        dd($re);    //true
    }
}
