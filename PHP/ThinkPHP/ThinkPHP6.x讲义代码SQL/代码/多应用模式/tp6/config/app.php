<?php
// +----------------------------------------------------------------------
// | 应用设置
// +----------------------------------------------------------------------

use think\facade\Env;

return [
    // 应用地址
    'app_host'         => Env::get('app.host', ''),
    // 应用的命名空间
    'app_namespace'    => '',
    // 是否启用路由
    'with_route'       => true,
    // 是否启用事件
    'with_event'       => true,
    // 默认应用
    'default_app'      => 'index',
    // 默认时区
    'default_timezone' => 'Asia/Shanghai',

    // 应用映射（自动多应用模式有效）
    'app_map'          => [
        // 将admin 映射为think ,访问 localhost/think 到达后台,而不是localhost/admin
        'think' =>  'admin'
    ],
    // 域名绑定（自动多应用模式有效）
    'domain_bind'      => [
        // 后台绑定一个域名
        'news.abc.com'  =>  'admin',
        // 其他的都是前台的
        // '*' =>  'index'
    ],
    // 禁止URL访问的应用列表（自动多应用模式有效）
    'deny_app_list'    => [],

    // 异常页面的模板文件
    'exception_tmpl'   => app()->getThinkPath() . 'tpl/think_exception.tpl',

    // 错误显示信息,非调试模式有效
    'error_message'    => '页面错误！请稍后再试～',
    // 显示错误信息
    'show_error_msg'   => true,
    'http_exception_template' => [
        // 定义 404 错误的模板文件地址
        404 => \think\facade\App::getAppPath() . '404.html',
     ]
];
