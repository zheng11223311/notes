<?php
namespace app\controller;
use app\validate\User;
use think\Exception;
use think\exception\HttpException;
use think\exception\ValidateException;
use think\facade\Request;
use think\facade\Validate;
use think\validate\ValidateRule;
// 注解路由验证
use think\annotation\Route;
use think\annotation\route\Validate as V;

class Verify
{
    public function index()
    {
        //echo app()->getThinkPath();
        try {
            // User 是validate\User;
            // batch 批量验证,不会只有一个错误就停止验证
            // check 检测,检测需要检测的字段
            validate(User::class)->batch(true)->scene('edit')->check([
                'name'  =>  '',
                'price' =>   '',
                'email' =>  'xiaoxin163.com'  //邮箱的值
            ]);
        } catch (ValidateException $e) {
            // 获取到验证错误信息
            dump($e->getError());
            // 使用tp 核心框架抛出异常(异常信息,异常代码)
            //throw new Exception('异常', 10086);
            // 关闭了调试,进入部署环境下,可以设置http 错误页面
            //throw new HttpException(404, '页面不存在！');
            // 助手函数抛出异常
            // abort(404, '页面不存在！');
        }
    }

    /**
     * @param $id
     * @return string
     * @route("vr/:id")
     * @V(User::class)
     */
    public function route($id)
    {
        return 'id:'.$id;
    }

    public function rule()
    {
        // 定独立义验证规则
        //        $validate = Validate::rule([
        //            'name'             =>      'require|max:20',
        //            'price'            =>      'number|between:1,100',
        //            'email'            =>      'email'
        //        ]);

        $validate = Validate::rule([
            // 使用验证器规则
            'name'             =>      ValidateRule::isRequire()->max(20),
            // 'price'            =>      ValidateRule::isNumber()->between('1,100'),
            'price'            =>      ValidateRule::isNumber()->between([1,100],'1-100之间'),
            'email'            =>      ValidateRule::isEmail(null, '邮箱格式不正确'),

            //test为空
            //'test'      =>      'require'
            //'test'      =>      ValidateRule::isRequire()     //必须
            //'test'      =>      ValidateRule::must()          //必须

            //'test'      =>      ValidateRule::number()        //必须是数字
            //'test'      =>      ValidateRule::isNumber()      //必须是数字
            //'test'      =>      'chs'                         //必须是纯汉字
            //'test'      =>      ValidateRule::isChs()         //必须是纯汉字
            //'test'      =>      ValidateRule::chs()         //必须是纯汉字

            //test区间长度
            //'test'      =>      'length:4'
            //'test'      =>      ValidateRule::length(4)
            //'test'      =>      'length:2,4'
            //'test'      =>      ValidateRule::length('2,4')

            //test比较
            //'test'      =>      'eq:100'
            //'test'      =>      ValidateRule::eq(100)
            //'test'      =>      'confirm:price'

            //和表的字段比较
            'username'      =>      'unique:user'

        ]);

        // 错误提示信息
        $validate->message([
            // 返回数组格式的错误信息
            'name.require'      =>      ['code'=>1001, 'msg'=>'姓名不得为空'],
            'name.max'          =>      '姓名不得大于20位',
        ]);

        // 独立自定义规则,可以定义多个
        $validate = $validate->rule([
            // 同名会覆盖上面定义的规则,不支持单个字段多个验证条件
            'name'  =>  function ($value) {
                return $value != '' ? true : '姓名不得为空';
            }
        ]);

        // 验证规则
        $result = $validate->batch(true)->check([
            'name'  =>  '蜡笔小新',
            'price' =>   100,
            'email' =>  'xiaoxin@163.com',
            'test'  =>  100,
            'username'  =>  '蜡笔小新'
        ]);

        // 获取验证结果
        if (!$result) {
            dump($validate->getError());
        }
    }

    public function single()
    {
        // 单个验证
        dump(Validate::isEmail('xiaoxin163.com'));
        dump(Validate::isRequire(''));
        dump(Validate::isNumber(10));

        // 判断多个验证规则
        dump(Validate::checkRule(10, 'number|between:1,10'));
        dump(Validate::checkRule(10, ValidateRule::isNumber()->between('1,10')));
    }

    public function token()
    {
        //echo session('__token__');
        //echo '<br>';
        //echo input('post.__token__');

        // 检测session('__token__'); 和input('post.__token__'); 的结果
        //$check = Request::checkToken('__token__');

        //if ($check == false) {
        //    echo '令牌无效';
        //}


        $validate = Validate::rule([
            //  附带验证令牌
            'name'      =>      'require|token'
        ]);

        $result = $validate->batch(true)->check([
            'name'      =>  input('post.name'),
            '__token__' =>  input('post.__token__')
        ]);

        if (!$result) {
            dump($validate->getError());
        }
    }




}