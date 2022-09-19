<?php

namespace App\Http\Controllers;

use App\Jobs\CommentEmail;
use App\Mail\BlogComment;
use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class CommentController extends Controller
{
    /**
     * 评论博客
     * Blog $blog 模型注入,
     * 接收路由传递过来的id,查询对应的id,将数据返回给$blog
     * 这里的Blog $id 要与路由中传递的 {id} 名要一样
     * 不一样不能获取到数据
     */
    public function __invoke(Request $request, Blog $id)
    {
        // dd('评论博客');
        //   dd($request->all());

        // 使用模型的方法添加数据
        // 向blog 关联的 comments 表中插入数据
        // create 批量添加需要在Comment.php 模型中允许
        // app\Models\Comment.php
        $comment = $id->comments()->create([
            'user_id' => auth()->id(),
            'content' => $request->input('content'),
        ]);
        if ($comment) {
            // 返回用户头像和昵称
            $resData = [
                'avatar_url' => auth()->user()->avatar ,
                'user_name' => auth()->user()->name,
                'content' => request()->input('content')
            ];

            // 发送油价通知作者有新的评论
            // to($id->user) 发送给作者,to 里面可以传递用户模型/用户模型集合(多个用户模型)/邮箱地址/数组里面写多个地址,
            // send(new BlogComment()) 使用BlogComment 类发送的消息
            // Mail::to($id->user)->send(new BlogComment($comment));

            // 使用队列发送邮件
            // CommentEmail::dispatch($comment); 使用自定义队列CommentEmail

            // 使用邮件自带的队列发送邮件
            // 这样就不用创建独队列类了
            Mail::to($id->user)->queue(new BlogComment($comment));

            // 使用自定义的响应宏
            return response()->api('评论成功!', 200, $resData);
        } else {
            return response()->api('评论失败!', 400);
        }
    }
}
