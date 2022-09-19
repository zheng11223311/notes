<?php

namespace App\Http\Controllers;

use App\Models\Flight;
use Illuminate\Http\Request;

class Test6Controller extends Controller
{
    
    public function __invoke(Request $request)
    {
        //增
        // 添加一条数据
        // $flight=new Flight();    //模型实例
        // $flight->name='aaa';
        // $res=$flight->save();    //执行插入数据
        // dd($flight,$res);
        // 批量添加数据
        // 为防止而恶意操作,批量添加create 需要在模型中设置允许批量添加的字段
        // Flight::create(['name'=>'dddd']);   //添加一条数据,会自动维护创建和修改字段的值,不能添加多条
        // 模型方法默认会自动维护创建和修改字段
        // Flight::insert([        //添加多条数据,不会自动维护创建和修改字段的值,不需要设置允许添加的字段
        //     ['name'=>'dddd'],
        //     ['name'=>'eeee'],
        // ]);   
        // fill 添加
        // $flight=new Flight();
        // $flight->fill(['name'=>'ffff']);
        // $flight->save();    
        // 复制
        $flight=Flight::find(6);
        // dd($flight); 
        $copy=$flight->replicate(); //复制一份给copy
        $copy->name='gggg';     //修改name
        $copy->save();      //执行保存数据,即插入一条数据

        

        // 删
        // $res=$flight=Flight::find(1);
        // $flight->delete();  //删除id 为1的数据
        // dd($res);
        // 删除多个
        $res=Flight::where('name','dddd')->delete();
        dd($res);       //返回影响的行数

        // 改
        // 使用模型更新
        // $flight=Flight::find(1);    //根据id 查询
        // $flight->name="aaaaaa";
        // $flight->save();    //执行修改
        // 批量更新
        // 将所有name 为aaaaaa 的值更新为bbbb
        // Flight::where('name','aaaaaa')
        // ->update(['name'=>'bbbb']);

        // // 获取原始属性值
        // $flight=Flight::find(1);
        // $flight->name='cccc';
        // // 没有进行save 之前,修改的值都是临时的,即还没有修改数据库
        // // getOriginal 获取之前保存在数据库中的数据
        // $res1=$flight->getOriginal('name');   //aaaaaa
        // // $res1=$flight->getOriginal();   //获取所有原始数据
        // dd($flight->name,$res1);  //cccc





        // 查

        // 使用模型,引入模型数据库
        // 模型可以使用前面所学查询构造器的所有数据库操作方法
        // all /get 查询所有,
        // Flight::all() ;
        // Flight::get() ;
        // Flight::where('name','aa')->first() ;
        // Flight::where('name','aa')->first() ;
        // Flight::firstWhere('name','aa') ;   //等同上方
        // Flight::find(1);    //查询1条

    }
}
