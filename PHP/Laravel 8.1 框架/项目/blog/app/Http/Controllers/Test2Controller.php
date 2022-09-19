<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Test2Controller extends Controller
{

    public function __invoke(Request $request)
    {
        // 原始查询
        // select(sql语句,? 对应的值(防sql 注入))
        // update(sql语句,? 对应的值(防sql 注入))
        // insert(sql语句,? 对应的值(防sql 注入))
        // delete(sql语句,? 对应的值(防sql 注入))

        // $users = DB::select('select * from users where id = ?', [1]);
        // dd($users);
        // array:1 [▼
        // 0 => {#1330 ▼
        //     +"id": 1
        //     +"name": "张三"
        //     +"email": "11@qq.com"
        //     +"email_verified_at": null
        //     +"password": "$2y$10$W1Ml93jENazqEpM8YnaDsOZQTr7.VpCe8oqbI8Ns/RAuo6R2nKXnm"
        //     +"two_factor_secret": null
        //     +"two_factor_recovery_codes": null
        //     +"two_factor_confirmed_at": null
        //     +"remember_token": null
        //     +"current_team_id": null
        //     +"profile_photo_path": null
        //     +"created_at": "2022-05-13 14:41:04"
        //     +"updated_at": "2022-05-13 14:41:04"
        // }
        // ]


        // get 获取所有结果
        // $users = DB::table('users');
        // $users = DB::table('users')->get();
        // 显示数量
        // users 返回的是结合collection 集合,所以可以使用集合的方法count
        // 集合方法 可在文档 集合 中查看

        // $len = DB::table('users')->get()->count();
        // dd($users,$len);

        // 获取第一条
        // $users = DB::table('users')->first();
        // 查询id=1的第一条数据
        // $users = DB::table('users')->where('id',1)->first();
        // dd($users);

        // 获取某个单个(email)的值
        // $users = DB::table('users')->where('id',1)->value('email');
        // dd($users);     //"11@qq.com"

        // 通过id 获取
        // $users = DB::table('users')->find(1);
        // dd($users);     
        // 获取整列数据,构成数值下标的数组
        // $users = DB::table('users')->pluck('name');
        // 指定键名,以name 字段的数据为值,email 字段的值为键
        // $users = DB::table('users')->pluck('name','email');
        // foreach ($users as $title) {
        //     echo $title;
        // }
        // dd($users);     
        //   #items: array:1 [▼
        // "11@qq.com" => "张三"
        // ]

        // 分块结果
        // 每次分成10 条数据,分割完继续获取
        // 必须要使用orderBy()
        //     $users = DB::table('users')->orderBy('id')->chunk(10,function($users1){
        //         dd($users1);

        //         // 使用return false 停止继续获取分割结果
        //         return false;
        //     });


        // 聚合方法
        //结果一样,但是使用的是不同对象上的方法
        // 使用DB 构造器上的count 方法
        // $users = DB::table('users')->count();
        // // 使用 get()集合对象上的方法count
        // $users = DB::table('users')->get()->count();

        // $price = DB::table('users')->max('id');
        // dd($users,$price);

        // 检查记录是否存在
        // return DB::table('users')->where('id', 1)->exists();//返回1
        // dd(DB::table('users')->where('id', 1)->exists());   //true
        // 检查是否不存在
        // return DB::table('users')->where('id', 1)->doesntExist();
        // dd(DB::table('users')->where('id', 1)->doesntExist()); //false

        // 查询语句来查询指定的字段：name 和email
        // email as user_email 将查询的结果email 键替换为user_email 键
        // $users = DB::table('users')->select('name', 'email as user_email')->get();
        // dd($users);

        // where 语句,等号可以省略
        //  >= ,<= , <> 不等于 ,like , 
        // 数组调用多个条件
        // $users = DB::table('users')->where('id', '=', 1)->get();
        // $users = DB::table('users')->where('id',  1)->get();
        // // whereIn 语句
        // // ...
        // dd($users);

        // 参数分组 子查询
        // $users = DB::table('users')
        //    ->where('name', '=', '张三')
        //    ->where(function ($query) {
        //        $query->where('id', '<', 100)
        //              ->orWhere('title', '=', 'Admin');
        //    })
        //    ->get();

        // 多个数组,多条插入
        // $re=DB::table('users')->insert(
        //     ['email' => 'john@example.com', 'name' => 213,'password'=>bcrypt(
        //         123123123
        //     )]
        // );
        // dd($re);

        // 更新数据,返回影响行数
        // $affected = DB::table('users')
        //       ->where('id', 2)
        //       ->update(['name' => 1]);
        //       dd($affected);


        // 根据字段自增
        // DB::table('users')->increment('votes');

        // 删除

        $re=DB::table('users')->where('id', '>', 1)->delete();
        dd($re);
    }
}
