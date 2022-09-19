<?php

namespace App\Http\Controllers;

use App\Http\Requests\BlogRequest;
use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Blogcontroller extends Controller
{

    /**
     * 实例化一个新的控制器实例
     *控制器中间件
     * @return void
     */
    public function __construct()
    {
        // middleware('') 使用空字符,会导致报错
        // Target class [] does not exist.
        // $this->middleware('');
        // 此控制器都使用auth 中间件,排除show 方法
        $this->middleware('auth')->except('show');
    }

    /**
     * 添加博客的页面
     */

    public function create()
    {
        // dd('添加博客的页面');
        return view('blog.create');
    }

    /**
     * 执行博客的添加
     * 使用表单验证器BlogRequest
     */
    public function store(BlogRequest $request)
    {
        //  dd('执行博客的添加');
        // 方式1:使用DB 构造器添加,不会维护创建字段和修改字段
        // 因为不是模型修改
        // $res=DB::table('blogs')->insert([
        //     // 'user_id'=>auth()->user()->id,   //或
        //     'user_id'=>auth()->id(),
        //     'title'=>$request->input('title'),
        //     'content'=>$request->input('content'),
        //     'category_id'=>$request->input('category_id')
        // ]);
        // dd($res);   //true


        // 方式2:使用模型对象添加
        // $blog=new Blog();
        // $blog->user_id=auth()->id();
        // $blog->title=$request->input('title');
        // $blog->content=$request->input('content');
        // $blog->category_id=$request->input('category_id');
        // $res=$blog->save();

        // 方式3: 使用批量添加
        // 需要在blog 模型类中设置允许批量添加
        // $res = Blog::create([
        //     'user_id' => auth()->id(),
        //     'title' => $request->input('title'),
        //     'content' => $request->input('content'),
        //     'category_id' => $request->input('category_id')
        // ]);

        // 方式4:用已存在的模型对象使用fill 进行快速添加
        // $blog = new Blog();
        // $blog->fill([
        //     'user_id' => auth()->id(),
        //     'title' => $request->input('title'),
        //     'content' => $request->input('content'),
        //     'category_id' => $request->input('category_id')
        // ]);
        // $res=$blog->save(); //注意:使用fill,要save(),才能添加到数据库

        // 方式5  ,使用$request->all(),适合大量字段添加
        //合并数组
        // dd(array_merge($request->except('_token'),['user_id'=>auth()->id()]));
        // 方式6,追加字段
        $request->offsetSet('user_id', auth()->id());
        // 在 除去token 然后批量添加
        $res = Blog::create($request->except('_token'));
        // dd($request->except('_token'));



        if ($res) {
            return back()->with(['success' => '博客添加成功!']);
        } else {
            // withInput 将用户提交的数据返回回去显示,防止添加失败后数据都没了
            return back()->withErrors('添加失败!')->withInput();
        }
    }

    /**
     * 查看一条博客的详情
     * 使用数据模型.根据传入的id 在数据表中进行查找id 对应的数据,返回给$blog
     */
    // public function show(Blog $blog)

    // 不使用模型.因为评论过多时,for 循环迭代查询,消耗性能,
    // 一次性查询出来,不用每次查询
    //使用预加载
    public function show($id)
    {
        // dd('查看一条博客的详情'.$id);
        // 访问 http://localhost:8000/blog/14

        // with 关联表模型中的comments 函数对应的表
        // with('comments') 所有评论
        // with('comments.user') 所有评论的 user
        $blog = Blog::with('comments.user')->where('id', $id)->first();

        // 禁用模型维护 更新 字段
        // 因为每次view 字段的修改会导致模型的维护,修改创建/更新时间
        $blog->timestamps = false;
        $blog->increment('view');   //每次访问show,浏览量增加1

        $blog->timestamps = true;     //在开启,就可以使用diffForHumans
        // dd($blog->timestamps);
        // 关闭维护会导致创建/更新时间字段变成普通的字段,不具有carbon 的功能
        // 不能使用 diffForHumans() 函数
        return view('blog.show', ['blog' => $blog]);
    }

    /**
     * 编辑页面
     */
    public function edit($id)
    {
        // dd('编辑页面'.$id);
        return view('blog.edit');
    }

    /**
     * 执行更新
     */
    public function update(Request $request, $id)
    {
        dd('执行更新' . $id);
    }

    /**
     * 删除博客
     * 使用blog 模型, $blog 需要与路由传递的变量名一致
     * blog 接收传递值,并查询数据库,返回结果到$blog 中
     */
    public function destroy(Blog $blog)
    {
        // dd($id);
        // dd('删除博客');
        // DB::beginTransaction();
        // try {
        //     // 删除博客
        //     $blog->delete();
        //     // 删除博客的相关评论
        //     $blog->comments()->delete();
        //     // 提交事务
        //     DB::commit();
        //     return response()->api('删除成功!');
        // } catch (\Exception $e) {
        //     // 回滚事务
        //     DB::rollBack();
        //     // withInput 将用户提交的数据返回回去显示,防止添加失败后数据都没了
        //     return response()->api('删除失败!', 400);
        // }

        // 使用模型事件,删除博客时,自动删除相关评论
        $res=$blog->delete();
        if($res){
            return response()->api('删除成功!');
        }else{
             // withInput 将用户提交的数据返回回去显示,防止添加失败后数据都没了
            return response()->api('删除失败!', 400);
        }
    }

    /**
     * 修改博客状态
     */
    public function status(Blog $id)
    {

        // dd('修改博客状态' . $id);
        // 临时禁用模型对时间的维护
        $id->timestamps = false;
        $id->status = $id->status == 1 ? 0 : 1;
        $res = $id->save();
        $id->timestamps = true;
        if ($res) {
            $msg = $id->status == 1 ? '发布成功' : '已取消发布';
            return response()->api($msg);
        } else {
            // withInput 将用户提交的数据返回回去显示,防止添加失败后数据都没了
            return response()->api('更新失败!', 400);
        }
    }
}
