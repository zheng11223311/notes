<?php
// 这里是应用目录下的配置,不是config 下的配置
// 全局中间件定义文件
return [
    // 全局请求缓存
    // \think\middleware\CheckRequestCache::class,
    //'think\middleware\CheckRequestCache',
    // 多语言加载
     \think\middleware\LoadLangPack::class,
    // Session初始化,开启session
     \think\middleware\SessionInit::class,

    //注册一个全局中间件,中间件将会在所有地方执行
    // \app\middleware\Check::class

];
