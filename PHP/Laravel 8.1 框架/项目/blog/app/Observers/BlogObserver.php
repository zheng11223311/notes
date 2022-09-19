<?php

namespace App\Observers;

use App\Models\Blog;

class BlogObserver
{
    
    public function created(Blog $blog)
    {
        //
    }

   
    public function updated(Blog $blog)
    {
        //
    }

   
    public function deleted(Blog $blog)
    {
        info('使用了观察者记录: 您删除了博客'.$blog->title);
        // 删除博客的时候,同时删除博客相关的评论
        $blog->comments()->delete();
    }

    
    public function restored(Blog $blog)
    {
        //
    }

   
    public function forceDeleted(Blog $blog)
    {
        //
    }
}
