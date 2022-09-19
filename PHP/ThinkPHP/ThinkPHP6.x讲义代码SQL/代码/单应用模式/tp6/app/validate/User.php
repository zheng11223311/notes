<?php
declare (strict_types = 1);
namespace app\validate;
use think\Validate;

class User extends Validate
{
    // 验证器
    // 创建 php think make:validate User
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
        // 字段                     必须且最大20且不能为李炎恢 checkName 自定义的规则
	    'name|用户名'      =>      'require|max:20|checkName:李炎恢',
        // 字段                     类型为数字,在[1,100] 之间
        'price'            =>      'number|between:1,100',
        'email'            =>      'email',
        'id'               =>      'number|between:1,10'
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'name.require'      =>      '姓名不得为空',
        'name.max'          =>      '姓名不得大于20位',
        'price.number'      =>      '价格必须是数字',
        'price.between'     =>      '价格必须 1-100 之间',
        'email'             =>      '邮箱的格式错误',
        'id.number'         =>      'id必须是数字',
        'id.between'        =>      'id必须 1-100 之间',
    ];

    // 定义应用场景,不同场景使用不同的规则
    protected $scene = [
        // 使用场景        要验证的字段
        'insert'    =>  ['name', 'price', 'email'],
        //'edit'      =>  ['name', 'price'],
        'route'     =>  ['id']
    ];

    // 自定义验证场景
    protected function sceneEdit()
    {
        $edit = $this->only(['name', 'price'])  //仅验证
                     ->remove('name', 'max')    //移除最大字段的限制
                     ->append('price', 'require');  //向一个字段增加一个限制

        // 返回出去,自动调用edit 场景
        return $edit;
    }



    //自定义规则
    protected function checkName($value, $rule, $data, $feild, $title)
    {
        // name 字段
        dump($feild);
        // 字段描述 用户名,默认是name 字段,当定义的字段没有值时,显示
        dump($title);
        //验证的所有字段数据
        dump($data);
        // name 的值
        dump($value);
        // 规则的值 李炎恢
        dump($rule);
        return $value != $rule ? true : '非法称谓不得注册：'.$rule;
    }


}
