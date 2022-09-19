<?php
declare (strict_types = 1);

namespace app\service;

use app\common\Shut;

class ShutService  extends \think\Service
{

    /**
     * 注册服务
     *
     * @return mixed
     */

    //  注册到app\service.php 文件中
    public function register()
    {
    	//绑定一个标识，就是将被服务的类绑定到容器中去,(任意标识名,被服务的类)
        $this->app->bind('shut', Shut::class);
    }

    
    /**
     * 执行服务
     *
     * @return mixed
     */

      //全局自动执行此函数
    public function boot()
    {
        echo '服务以开启';
        Shut::setName('Mr.Wang');
    }
}
