<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Test10Controller extends Controller
{

    public function __invoke(Request $request)
    {
        // 使用事务处理
        // DB::transaction(function () {
        //     DB::table('users')->update(['votes' => 1]);
        
        //     DB::table('posts')->delete();
        
        // });

        // 手动使用事务
        DB::beginTransaction();

        try{
            //.......
            DB::commit();
        }catch(\Exception $e){
            // 回滚
            DB::rollBack();
        }
    }
}
