<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    /**
     * 
     * 允许批量添加的字段
     * 
     */
    protected $fillable=[
        'user_id',
        'blog_id',
        'content'
    ];

     /**
     * 
     * 评论所属的用户
     */
    public function user()
    {
        // 一个bolg id关联(拥有)许多comment 评论id
        // Comment 表中的blog_id ,关联blog 表中的id
        return $this->hasMany(User::class,'id','user_id');
    }
}
