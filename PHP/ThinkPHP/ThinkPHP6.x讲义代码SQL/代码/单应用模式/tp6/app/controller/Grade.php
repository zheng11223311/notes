<?php
namespace app\controller;
use app\model\Role;
use app\model\User as UserModel;
use app\model\Profile as ProfileModel;

class Grade
{
    public function index()
    {
        // 关联查询
        // 正向查找,从主键表找到外键表
        // $user = UserModel::find(19);
        // return json($user->profile);
        // profile 要和User 类声明的profile 函数名对应,
        // User 类声明的profile 函数名改为profile11,那么这里改为$user->profile11
        // echo $user->profile->hobby;

        // $profile = ProfileModel::find(1);
        // echo $profile->user->username;

        // 关联修改
        // $user = UserModel::find(19);
        // $user->profile->save(['hobby'=>'酷爱小姐姐']);
        //关联新增
        // $user = UserModel::find(19);
        // $user->profile()->save(['hobby'=>'酷爱小姐姐']);

        // 反向查找,从外键表找到主键表
        // profile 表示的是User 模型profile 方法.而不是profile 模型类
        // 参数2: 查找的字段
        // $user = UserModel::hasWhere('profile', ['id'=>1])->find();
        // return json($user);

        //    $user = UserModel::hasWhere('profile', function ($query) {
        //        $query->where('id', 8);
        //    })->find();
        //    return json($user);

        // 一对多
        // $user = UserModel::find(19);
        // return json($user->profile);
        //return json($user->profile()->select());

        //return json($user->profile->where('id', '>=', 10));
        //return json($user->profile()->where('id', '>=', 10)->select());

        // 查找主表主键在附表中有2条记录以上的数据
        //return json(UserModel::has('profile', '>=', 2)->select());
        //    $user = UserModel::hasWhere('profile', ['id'=>2])->select();
        // 关联新增
        //  $user = UserModel::find(19);
        // $user->profile()->save(['hobby'=>'测试数据1', 'status'=>1]);
        // 关联批量新增
        // $user->profile()->saveAll([
        //     ['hobby'=>'测试数据2', 'status'=>1],
        //     ['hobby'=>'测试数据3', 'status'=>1]
        // ]);

        //关联删除
        // with('profile') 关联附表
        // find(304) 查找主表id
        // $user = UserModel::with('profile')->find(304);
        // $user->together(['profile'])->delete();

    }

    public function load()
    {
        // 关联预载入
        // 查询主表1此,附表3次,共n+1次查询
        // $list = UserModel::select([19,20,21]);
        // foreach ($list as $user) {
        //     dump($user->profile->toArray());
        // }
        // 查询主表1此,附表1次,共2 次查询
        //    $list = UserModel::with(['profile'])->select([19,20,21]);
        //    foreach ($list as $user) {
        //        dump($user->profile->toArray());
        //    }

        //        $list = UserModel::with(['profile','book'])->select([19,20,21]);
        //        foreach ($list as $user) {
        //            dump($user->profile.$user->book);
        //        }

        $list = UserModel::with(['profile'=>function ($query) {
            // 查找附表
           $query->field('user_id,hobby');
       }])->field('id,username')->select([19,20,21]);

        //        foreach ($list as $user) {
        //            dump($user->profile->toArray());
        //        }

        // $list = UserModel::select([19,20,21]);
        // $list->load(['profile']);
        // foreach ($list as $user) {
        //     dump($user->profile->toArray());
        // }
    }

    public function count()
    {
        // 主表统计
        // 统计主表中每个字段在附表中的个数
            // $list = UserModel::withCount(['profile'])->select([19,20,21]);
            // foreach ($list as $user) {
            //     // 格式 关联方法名+_count
            //     echo $user->profile_count;
            //     // echo '<br>';
            // }
            //          指定需要统计的字段status                
        // $list = UserModel::withSum(['profile'], 'status')->select([19,20,21]);
        // foreach ($list as $user) {
        //     echo $user->profile_sum;
        // }

        // ['profile'=>'ps'] 起别名
        // $list = UserModel::withSum(['profile'=>'ps'], 'status')->select([19,20,21]);
        // foreach ($list as $user) {
        //     echo $user->ps;
        // }

        // 关联输出
        $list = UserModel::with(['profile'])->select([19,20,21]);
        $list = UserModel::with(['profile','book'])->select([19,20,21]);
        // return json($list->hidden(['password', 'gender','profile.status']));
        return json($list->append(['book'])); //等同 ['profile','book'] 输出
    }

    public function many()
    {
        // 多对多
        // 19 的角色权限
        //    $user = UserModel::find(19);
        //    $roles = $user->roles;
        //    return json($roles);

        // role 表新增角色,绑定用户
        // $user = UserModel::find(19);
        // $user->roles()->save(['type'=>'广告投放专员']);

        // 保存到中间表
        // $user = UserModel::find(19);
        // $user->roles()->save(5);
        //$user->roles()->save(Role::find(5));
        // 保存到中间表,还可以添加更多字段details 的信息
        //$user->roles()->attach(Role::find(5), ['details'=>'测试详情']);

        // 删除中间表的数据
        // $user->roles()->detach(2);
        // $user->roles()->detach(Role::find(5));

    }
}