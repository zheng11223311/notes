<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    // 执行数据填充的时候不指明填充类时会执行此文件的run 方法
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // 添加用户测试数据
        // DB::table('users')->insert([
        //     'name' => Str::random(10),      //随机用户名
        //     'email' => Str::random(10) . '@gmail.com',  //随机邮箱
        //     'password' => Hash::make('password'),
        // ]);


        // call 执行其他填充类,注意,有执行的先后顺序,最前的先执行
        $this->call([
            UserSeeder::class,
            categorySeeder::class
        ]);
    
    }
}
