<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

        /**
     * 
     * 该分类拥有的所有博客
     * 与博客关联,就可以使用博客的数据
     * 
     */
    public function blogs()
    {
        // Category 与categories 也会关联,这是复数形式
        //  categories表的id    blogs 表的category_id
        // 在模板中使用,$categoryblog->blog->name   ,
        // 使用 category  获取动态属性blog  模型获取其中的name 字段
        return $this->belongsTo(Blog::class,'id','category_id');
    }
}
