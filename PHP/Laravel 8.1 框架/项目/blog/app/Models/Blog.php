<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;

    /**
     * 
     * 允许批量添加的字段
     */
    protected $fillable = [
        'user_id',
        'title',
        'content',
        'category_id',
    ];

    /**
     * 
     * 博客所属的用户
     * 
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    /**
     * 
     * 博客属于哪个分类
     * 与之关联
     * 
     */
    public function category()
    {
        // Category 与categories 也会关联,这是复数形式
        // blogs 表的category_id   categories 表的id
        // 在模板中使用,$blog->category->name   ,
        // 使用blog 获取动态属性category 模型获取其中的name 字段
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    /**
     * 
     * 博客拥有的评论
     */
    public function comments()
    {
        // 一个bolg id关联(拥有)许多comment 评论id
        // Comment 表中的blog_id ,关联blog 表中的id
        return $this->hasMany(Comment::class, 'blog_id', 'id');
    }



    /**
     * 模型的 "booted" 方法
     *
     * @return void
     */
    protected static function booted()
    {
        // 模型监听删除事件
        //在 http://localhost:8000/user/blog 中删除一条博客
        static::deleted(function ($blog) {
            //写入日志
            info('您删除了博客'.$blog->title);
        });
    }
}
