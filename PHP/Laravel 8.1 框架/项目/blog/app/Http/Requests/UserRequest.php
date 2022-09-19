<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
        // 书写规则
        return [
            // name 字段,必须|最小4位 |最大32 位
            'name' => 'required|min:4|max:32',
            // email 字段,必须 | 邮件格式
            'email' => 'required|email',
        ];
    }


    /**
     * 获取已定义验证规则的错误消息
     *
     * @return array
     */
    // 自定义错误提示消息
    public function messages()
    {
        return [
           // 自定义错误提示
            'name.required'=>'用户名必须填写',
            'name.min'=>'用户名最小4位数',
            'email.email'=>'邮箱必须位邮件格式'
        ];
    }
}
