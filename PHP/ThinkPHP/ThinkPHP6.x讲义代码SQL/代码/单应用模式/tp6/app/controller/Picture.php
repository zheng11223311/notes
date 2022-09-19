<?php
namespace app\controller;

use think\Image;

class Picture
{
    // 图像处理
    // 安装 composer require topthink/think-image
    public function index()
    {
        // 打开图片
        $image = Image::open('image.png');

        // 获取图片类型
        //echo $image->type();
        // 高度
        //echo $image->width();

        //crop 裁剪(宽,高)
        // save 保存 public/ 下
        //$image->crop(550,400)->save('crop1.png');

        //缩略(宽,高,填充等信息)
        //$image->thumb(500,500,1)->save('thumb1.png');

        //旋转图片,默认90
        //$image->rotate(180)->save('rotate1.png');

        //图片水印(水印图片路径,位置)
        //$image->water('mr.lee.png', 1)->save('water1.png');


        //文字水印
        // getcwd() 当前绝对路径
        // (文字,字体文件,大小,颜色)
        $image->text('Mr.Lee', getcwd().'/1.ttf', 30, '#ffffff')->save('text1.png');
    }




}