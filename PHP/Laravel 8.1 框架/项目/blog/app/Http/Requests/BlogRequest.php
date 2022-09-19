<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BlogRequest extends FormRequest
{
    public function authorize()
    {
        // 鉴定用户是否具有权限,比如更新评论的权限
        // 需要打开true,否则无法通过,返回419界面
        // 没有权限不能开启验证,打开才能开始验证
        // return false;
        return true;
    }


    // 书写规则
    // 自己定义的 UserRequest 继承FormRequest
    // 而FormRequest 继承Request
    // 所以在控制器中可以直接使用UserRequest 验证器
    // 包含继承的Request 所有方法
    public function rules()
    {
        return [
            'title'=>'required|min:4|max:32',
            'content'=>'required|min:4',
            'category_id'=>'required|gt:0', //gt 大于
        ];
    }

     // 自定义错误提示消息
     public function messages()
     {
         return [
            // 自定义错误提示
             'title.required'=>'标题必须填写',
             'title.min'=>'标题最少4 个字符',
             'title.max'=>'标题最大32 个字符',
             'content.required'=>'内容必须填写',
             'content.min'=>'内容最少4 个字符',
             'category_id.required'=>'分类必须填写',
             'category_id.gt'=>'分类必填',
         ];
     }
}
