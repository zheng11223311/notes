<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class Usercontroller extends Controller
{
    /**
     * 用户界面
     */
    public function infoPage (){
        return view('user.info');
    }

    /**
     * 个人中心-修改个人信息-更新数据
     */

     
    // public function infoUpdate(Request $request)
    // 使用验证器UserRequest 
    // 自己定义的 UserRequest 继承FormRequest
    // 而FormRequest 继承Request
    // 所以在控制器中可以直接使用UserRequest 验证器
    // 包含继承的Request 所有方法
    public function infoUpdate(UserRequest $request)
    {
        // 表单验证器
        // $validatedData = $request->validate([
        //     // name 字段,必须|最小4位 |最大32 位
        //     'name' => 'required|min:4|max:32',
        //     // email 字段,必须 | 邮件格式
        //     'email' => 'required|email',
        // ],[
        //     // 自定义错误提示
        //     'name.required'=>'用户名必须填写',
        //     'name.min'=>'用户名最小4位数',
        //     'email.email'=>'邮箱必须位邮件格式'
        // ]);
        // validateWithBag 会将错误信息放到$errors 中
        // 所以可以直接使用@include('common.error') 显示(此文件内包含$errors)

        // 验证通过执行下方代码
    
        // dd('个人中心-修改个人信息-更新数据');
        // 有验证器,不需要下面的验证
        $name = $request->input('name');
        $email = $request->input('email');

        // $errors = [];
        // if (empty($name)) array_push($errors, '用户名不能为空!');
        // if (empty($email)) array_push($errors, '邮箱不能为空!');
        // if(!empty($errors)){
        //     return back()->withErrors($errors);
        // }


        // dd($name,$email);
        // 更新数据
        // 不能这么操作,会更新整个表,需要指定id
        // $re=DB::update(['name'=>$name,'email'=>$email]);
        // dd($re);

        // 获取用户ID
        // 使用auth 辅助函数
        // 当前登入用户
        // $uid=auth()->user()->id;
        // 或
        $uid = auth()->id();
        // 使用门面函数
        // $uid=Auth::user()->id;
        // $uid=Auth::id;
        // dd($uid);

        // 更新数据,没有做任何修改提交不会更新,并返回0
        $re = DB::table('users')
            ->where('id', $uid)
            ->update(['name' => $name, 'email' => $email]);
        // dd($re);

        //使用模型更新
        // 是一个Model 类型
        // dd(auth()->user());
        // $user=auth()->user();
        // // 修改
        // $user->name=$name;
        // $user->email=$email;
        // // 执行更新,没有做任何修改提交也会更新,并返回1
        // $re=$user->save();

        // dd($re);
        if ($re) {
            return back()->with(['success' => '更新数据成功!']);
            // 在 项目/resources/views/user/info.blade.php 中使用
        } else {
            // 错误收集在common.error 里面
            // 闪存到session 并放到$error 中
            return back()->withErrors('数据未做更新操作!');
            // return back()->withErrors(['数据未做更新操作!']);
        }
    }

    /**
     * 头像界面
     */
    public function avatarPage()
    {
       return view('user.avatar');
    }
  
  /**
   * 头像修改
   */
   public function avatarUpdate(Request $request){
       // 表单验证器
        $validatedData = $request->validate([
            'avatar' => 'required|image',
        ],[
            // 自定义错误提示
            'avatar.required'=>'请选择图片',
            'avatar.image'=>'请选择图片格式',
        ]);
        // validateWithBag 会将错误信息放到$errors 中
        // 所以可以直接使用@include('common.error') 显示(此文件内包含$errors)

    // dd($request);
    // 文件过大上传不了,修改php.ini
    $file=$request->file('avatar');
    if(!$file){
        return back()->withErrors('头像更新失败,请选择文件!');
    }
    // dd($file->isFile());
    // 文件过大也会上传失败
    if(!$file->isFile()){
        return back()->withErrors('头像更新失败,文件过大!');
    }
    // dd($file);
    // store 设置上传到的文件夹
    // $path=$file->store('avatar');
    // dd($path); //"avatar/d4T8lzV1IczL41hLooAxTGSXPv3kAESQMGnAy1LV.jpg"

    // 自定义文件名
    // $path=$file->storeAs('avatar','1.jpg');
    // dd($path); //"avatar/1.txt"

    // 指定磁盘,使用public 磁盘
    //  存储位置 项目/storage/app/public/avatar/
    $path=$file->store('avatar','public');
    // dd($path); //"avatar/1.txt"

    // 在更新之前获取用户原有的头像
    $oldAvatar=auth()->user()->avatar;

    // 更新当前登入用户的头像
    $uid=auth()->id();
    $res=DB::table('users')->where('id',$uid)->update(['avatar'=>$path]);
    // dd($res);
    if($res){
        // 用户头像更新成功之后,删除原有头像
        Storage::disk('public')->delete($oldAvatar);

        return back()->with(['success'=>'头像更新成功!']);
    }else{
        return back()->withErrors('头像更新失败!');
    }
    
   }

   /**
    * 所有博客
    */
    public function blog()
    {
        // 获取当前用户的所有博客
        // 使用user() 模型对应的blogs 函数对应的blogs 数据表查询
        // 这样放到模板后每次遍历都会进行查询数据库,消耗性能,
        // 所以需要一次性获取所有数据,在遍历
        // dd(auth()->user()->blogs);   

        // 查询用户的所有博客
        // withCount 获取与博客评论 comments 对应关系的数量,即获取博客评论数量
        // 会生成一个 comments_count 字段记录对应 comments 的数量
        // get 获取数据
        // $blogs=auth()->user()->blogs()->withCount('comments')->get();
        // 分页获取
        $blogs=auth()
        ->user()
        ->blogs()
        ->withCount('comments')
        ->orderBy('updated_at','desc')
        ->paginate(5);
        // dd($blogs);
        return view('user.blog',['blogs'=>$blogs]);
    }
    
}
