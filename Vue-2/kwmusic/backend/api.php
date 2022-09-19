<?php
header("Access-Control-Allow-Origin: *");//允许所有地址跨域请求
$url='http://qukudata.kuwo.cn/q.k?op=query&cont=tree&node=87235&fmt=json&level=3';
$html = file_get_contents($url);
echo $html;

?>