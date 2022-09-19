<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;

class Test5Controller extends Controller
{

    public function __invoke(Request $request)
    {
        // test();
        // $validatedData = $request->validate([
        //     'title' => 'required|max:255',
        //     'body' => 'required',
        // ]);

        // 使用门面模式的cache 类
        // 获取缓存
        // $value = Cache::get('name');
        // dd($value); // 第一次访问 null
        // 不存在时,第二个参数为使用默认值
        // $value = Cache::get('name','这是name');
        // dd($value);

        // 检测是否存在
        // if (Cache::has('name')) {
        //     dd('存在name');
        // }


        // 缓存的字段递增递减,参数2 为递增的量
        // 如果不存在字段则会创建
        // 增加1
        // Cache::increment('key');
        // // 增加12
        // Cache::increment('key', 12);
        // // 减少1
        // Cache::decrement('key');
        // // 减少13
        // Cache::decrement('key', 13);
        // $value = Cache::get('key','这是name');
        // dd($value); //-1


        // 获取缓存,如果不存在,就是用闭包返回的数据
        // $value = Cache::get('a', function () {
        //     // return DB::table('users')->get();
        //     return '这是数据不存在时,返回的数据';
        // });
        // dd($value);  //'这是数据不存在时,返回的数据';
        // $value =Cache::get('a');
        // dd($value); //单独获取不存此数据,说明并没有缓存


        // 获取缓存,如果不存在,就是用闭包返回的数据,同时缓存闭包数据,且指定缓存时间,单位秒
        // 缓存时间到期之后就会清除缓存的文件
        // 30 缓存时间 30s
        // $value = Cache::remember('users', 30, function () {
        //     return '数据不存在,返回此数据,并进行缓存';
        // });
        // dd($value); 
        // 时间过期后,在没有使用get 获取数据的时候,缓存文件依然还是在的,只是打了个销毁标记
        // 在次get 访问的时候,执行删除文件,获取的数据为null
        // $value =Cache::get('users');
        // dd($value); 

        // 永久缓存
        // $value = Cache::rememberForever('users', function () {
        //     return DB::table('users')->get();
        // });
        // // 获取缓存数据并删除缓存中的数据
        // $value = Cache::pull('key');

        // 在缓存中存储数据
        //参数  key value 时间s
        // Cache::put('key', 'value', $seconds = 10);
        // // 永久缓存
        // Cache::put('key', 'value');
        // // 10分钟后过期
        // Cache::put('key', 'value', now()->addMinutes(10));
        // // 只存储没有的数据,有则不缓存
        // Cache::add('key', 'value', $seconds);
        // 数据永久存储
        // Cache::forever('key', 'value');
        // 从缓存中删除数据
        // Cache::forget('key');
        // 你也可以通过提供零或者负数过期秒数值来删除这些数据：
        // Cache::put('key', 'value', 0);
        // Cache::put('key', 'value', -5);
        // // 清空所有数据
        // Cache::flush();



        // Cache 辅助函数
        // 获取缓存
        // $value = cache('key');
        // 设置缓存
        // cache(['key' => 'value']);
        // cache(['key' => 'value'], 10);
        // cache(['key' => 'value'], now()->addMinutes(10));

        // 当 cache 函数在没有任何参数的情况下被调用，即cache()
        // 那么它返回的将是一个实现 Illuminate\Contracts\Cache\Factory 的实例，并且允许你调用其他的缓存方法
        // 获取缓存,不存在则缓存回调函数的值
        // cache()->remember('users', 10, function () {
        //     return DB::table('users')->get();
        // });


        

    }
}
