<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 添加用户测试数据
        DB::table('users')->insert([
            'name' => Str::random(10),      //随机用户名
            'email' => Str::random(10) . '@gmail.com',  //随机邮箱
            'password' => Hash::make('password'),
        ]);
    }
}
