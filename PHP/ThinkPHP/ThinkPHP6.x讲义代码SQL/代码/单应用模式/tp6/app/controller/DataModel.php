<?php
namespace app\controller;
//  as 对命名空间起别名
use app\model\User as UserModel;
use think\facade\Db;

class DataModel
{
    public function index()
    {
        UserModel::select();
        // return json(User::select());
        // return json(UserModel::select());
        // find 查询一个数据
        return json(UserModel::find(311));
        //$user = UserModel::find(288);
        //$user = UserModel::where('list->username', '小红')->find();
        //echo $user->list->username;
    }

    public function insert()
    {
        //插入数据
        //    $user = new UserModel();
        //    $user->username     =       '李白';
        //    $user->password     =       '123';
        //    $user->gender       =       '男';
        //    $user->email        =       'libai@163.com';
        //    $user->price        =       100;
        //    $user->details      =       '123';
        //    $user->uid          =       1011;
        //    $user->save();


        //    $user = new UserModel();
        //    $user->save([
        //         'username'     =>      '李白',
        //         'password'     =>      '123',
        //         'gender'       =>      '男',
        //         'email'        =>      'libai@163.com',
        //         'price'        =>      100,
        //         'details'      =>      '123',
        //         'uid'          =>      1011,
        //    ]);
     
            // 新增json 数据
            // $list = new \stdClass(); //创建空对象
            // $list->username = '小红';
            // $list->gender = '女';
            // $list->email = 'xiaohong@163.com';
            // $user->list = $list;

            // replace 替换原来的数据,insert 插入
            // isAutoWriteTimestamp 动态修改默认全局定义的时间字段
            // false 表示不需要设置时间字段
            // $user->isAutoWriteTimestamp(false)->replace()->save();
            // 获取新增数据的id
            // echo $user->id;
            //返回上一条操作的sql 语句
            // return Db::getLastSql();

            // allowField() 只允许allowField 中的字段插入,其他字段无法插入
            // $user = new UserModel();
            // $user->allowField(['username', 'password', 'details'])->save([
            //     'username'     =>       '李白',
            //     'password'     =>       '123',
            //     'gender'       =>       '男',
            //     'email'        =>       'libai@163.com',
            //     'price'        =>       100,
            //     'details'      =>       '123',
            //     'uid'          =>       1011,
            // ]);

                // $dataAll = [
                //     [
                //         'username'     =>       '李白1',
                //         'password'     =>       '123',
                //         'gender'       =>       '男',
                //         'email'        =>       'libai@163.com',
                //         'price'        =>       100,
                //         'details'      =>       '123',
                //         'uid'          =>       1011,
                //     ],
                //     [
                //         'username'     =>       '李白2',
                //         'password'     =>       '123',
                //         'gender'       =>       '男',
                //         'email'        =>       'libai@163.com',
                //         'price'        =>       100,
                //         'details'      =>       '123',
                //         'uid'          =>       1011,
                //     ]
                // ];
                // $user = new UserModel();
                // //saveAll 批量新增,返回新增的值
                // dump($user->saveAll($dataAll));

                // 使用静态方法,来创建要新增的数据,推荐
                // 参数1: 新增数据数组,必选
                // 参数1: 允许写入的字段,必选
                // 参数3: 是否replace 写入,默认为false,为insert 写入
                $user = UserModel::create([
                    'username'     =>       '李白',
                    'password'     =>       '123',
                    'gender'       =>       '男',
                    'email'        =>       'libai@163.com',
                    'price'        =>       100,
                    'details'      =>       '123',
                    'uid'          =>       1011,
                ], ['username', 'password', 'details', 'email'], false);
                echo $user->id;

        // UserModel::create([
        //     'username'     =>       '李白',
        //     'password'     =>       '123',
        //     'gender'       =>       '男',
        //     'email'        =>       'libai@163.com',
        //     'price'        =>       100,
        //     'details'      =>       '123',
        //     'uid'          =>       1011,
        //     'list'         =>       ['username'=>'小红', 'gender'=>'女', 'email'=>'xiaohong@163.com']
        // ]);
    }

    public function delete()
    {
        // 删除数据
        // $user = UserModel::find(323);
        // dump($user->delete());

        // 通过主键删除数据
        // UserModel::destroy(321);
        // 批量删除
        // UserModel::destroy([322,320,319]);

        //UserModel::where('username', '=', '李黑')->delete();
        UserModel::destroy(function ($query) {
            $query->where('username', '=', '李白');
        });
    }

    public function update()
    {
            // 模型的数据更新
        // $user = UserModel::find(313);
        // $user->username = '李红';
        // $user->email    = 'lihong@163.com';
        // $user->price    = Db::raw('price + 1');
        // $user->price    = 200;
        // $user->save();
        
        // save 只会更新变化的数据,如果提交的修改数据没有变化,则不跟新
        // force 强制更新,即使数据一样,也强制更新
        // allowField 允许() 内的字段的更新,但是对Db::raw() 没有限制
        // dump($user->allowField(['username','price'])->force()->save());
        // readonly 表示只读属性,不能被修改
        //$user->readonly(['username', 'email'])->save();

        // $user = new UserModel();
        // $list = [
        //     ['id'=>308, 'username'=>'白+黑', 'email'=>'baihei@163.com'],
        //     ['id'=>309, 'username'=>'白+黑', 'email'=>'baihei@163.com'],
        //     ['id'=>310, 'username'=>'白+黑', 'email'=>'baihei@163.com'],
        // ];
        // // 批量更新
        // $user->saveAll($list);

        // 静态方法更新,需要一个id
        // UserModel::update([
        //     'username'  =>      '李白11',
        //     'email'     =>      'libai@163.com',
        //     'id'        =>      310,
        // ]);

        // 参数1: 要更新的数据
        // 参数2: 条件
        // UserModel::update([
        //     'username'  =>      '李白',
        //     'email'     =>      'libai@163.com'
        // ], ['id'=>309]);

        // 参数1: 要更新的数据
        // 参数2: 条件
        // 参数3:只允许更新的字段
        // UserModel::update([
        //     'username'  =>      '李黑',
        //     'email'     =>      'lihei@163.com'
        // ], ['id'=>308], ['username']);

        // 模型的新增和修改都是save() 进行执行的,它采用了自动识别体系来完成
        // 实例化模型后调用save 方法表示新增,查询数据后调用save 表示修改
        // 当然,如果在save  传入更新修改条件后也表示修改
        // $user = UserModel::find(288);
        // $user->list->username = '小白';
        // $user->save();
    }

    public function select()
    {
        // 查询
        //find 不存在返回null
        // $user = UserModel::find(310);
        // return json($user);

        // $user = UserModel::where('id',310)->find();
        // return json($user);

        // findOrEmpty 不存在返回空模型
        // $user = UserModel::findOrEmpty(419);
        // dump($user);
        // if ($user->isEmpty()) {
        //     echo '空模型';
        // }

        // $user = UserModel::select([19,20,21]);
        // $user = UserModel::select(19);
        // $user = UserModel::select();
        // return json($user);

        // $user = UserModel::where('status', 1)
        //                 ->limit(3)
        //                 ->order('id', 'desc')
        //                 ->select();
        // return json($user);

        // value 获取某个字段的值
        // $user = UserModel::where('id', 19)->value('username');
        // return json($user);

        // column 获取某个列的值 (字段值作为返回结果的value[,字段值作为key])
        // $user = UserModel::whereIn('id', [19,20,21])->column('username', 'id');
        // return json($user);

        // 找到username 为辉夜 的单条数据
        // return json(UserModel::getByUsername('辉夜'));
        // 返回price 的最大值
        // return json(UserModel::max('price'));

        // 分批处理,处理完在获取数据
        // UserModel::chunk(5, function ($users) {
        //     foreach ($users as $user) {
        //         echo $user->username;
        //     }
        //     echo '<br>...<br>';
        // });

        // 游标每次查询一次
        // foreach (UserModel::where('status', 1)->cursor() as $user) {
        //     echo $user->username;
        //     echo '<br>...<br>';
        // }

    }

    public function field()
    {
        //UserModel::select();
        //Db::name('user')->select();

            $user = UserModel::find(19);
            echo $user->username;
            echo $user['email'];
            // 在model\User 中没有关闭严格区分大小写时,只能写create_time,其他查找不到
            echo $user->create_time;
            //关闭严格区分大小写时,以下都可以使用
            echo $user->create_time;
            echo $user->createTime;
            echo $user->CreateTime;
            echo $user->Create_time;

        // $user = new UserModel();
        // 调用model\User 类的getUsername 方法
        // echo $user->getUsername();
    }

    public function getAttr()
    {
        // 模型获取器
        // withAttr 使用静态方法 withAttr 动态获取器改变值,效果与下面一致
        $user = UserModel::withAttr('email', function ($value) {
            return strtoupper($value);
        })->find(19);
        // 会激活model\User 的getStatusAttr() 方法(获取器方法)
        // echo $user->status;
        // 会激活model\User 的getNothingAttr() 方法(获取器方法)
        // echo $user->nothing;
        // 获取原始数据,便于数据在获取器的getStatusAttr 修改后还能获得原始数据
        // echo $user->getData('status');
        // return json($user);
        // 获取整条原始数据
        return json($user->getData());
    }

    public function scope()
    {
        // 模型查询范围,在模型中创建一个新的方法,便于控制器调用
        // 调用模型范围方法scopeMale , UserModel::scope('male')
        // $result = UserModel::scope('male')->select();
        // 简写
        $result = UserModel::male()->select();

        // 
        // $result = UserModel::scope('email', 'xiao')->select();
        // 传参xiao,
        $result = UserModel::email('xiao')->select();

        //查询满足2个条件的数据
       $result = UserModel::scope('email', 'xiao')
                          ->scope('price', 80)->select();

        $result = UserModel::email('xiao')->price(80)->select();

        // 取消指定全局查询条件,查询时就不会带上全局查询条件
        $result = UserModel::withoutGlobalScope(['status'])->select();
        // // 取消所有查询条件
        $result =UserModel::withoutGlobalScope()->select();

        // return Db::getLastSql();
        return json($result);
    }

    public function search()
    {
        // 搜索器
        // 参数1: 要使用的搜索器
        // 参数2: 传递要搜索的字段=>值
        $result = UserModel::withSearch(['email'], [
            'email'         =>      'xiao',
        ])->select();

        // 'create_time'=>'ctime' 起别名
        $result = UserModel::withSearch(['email', 'create_time'=>'ctime'], [
            'email'         =>      'xiao',
            'ctime'         =>      ['2014-1-1', '2017-1-1'],
            'sort'          =>      ['price'=>'desc']
        ])->where('gender', '男')->select();

            // return json($result);
        // return Db::getLastSql();
        // hidden 隐藏结果集的中字段数据
        // visible 可见结果集中的字段数据
        // append 想结果集中添加一个字段
        // withAttr 获取器,修改查询的值
        return json($result->hidden(['username', 'details'])
                           ->visible(['username','email'])
                           ->append(['nothing'])
                           ->withAttr('email', function ($value) {
                               return strtoupper($value);
                           }));
    }

    public function typec()
    {
        // 模型类型转换,会触发获取器等方法
        // 开启全局范围,::find 失效
        $user = UserModel::find(21);
        //   dump($user);
        // 强制转换为布尔型
        // var_dump((boolean) $user->status);
        var_dump($user->status);
        var_dump($user->price);
        var_dump($user->create_time);
    }

    public function softDelete()
    {
        // 软删除
         // 再次删除不会报错
        // UserModel::destroy(306);
        // 再次删除会报错,因为已经屏蔽了这条数据
        //UserModel::find(299)->delete();

        // 软删除后的数据不会显示
        // $user = UserModel::select();

        
        // 取消软删除屏蔽的数据,查询到所有数据
        //$user = UserModel::withTrashed()->select();
        // 只查询软删除的数据
        // SELECT * FROM `tp_user` WHERE `tp_user`.`delete_time` IS NOT NULL
        $user = UserModel::onlyTrashed()->select();
        

        //还原软删除
        // $user = UserModel::onlyTrashed()->find(306);
        // $user->restore();
        // return Db::getLastSql();
        // return json($user);

        //真实删除，先还原，再删除
        // true 表示真正删除,删除之前必须还原软删除的数据
        UserModel::destroy(306, true);

        //真实删除，先还原，再删除
        // $user->force()->delete();

        //delete 可以直接找到软删除的数据直接删除，
        //UserModel::onlyTrashed()->find(298)->force()->delete();

    }



}