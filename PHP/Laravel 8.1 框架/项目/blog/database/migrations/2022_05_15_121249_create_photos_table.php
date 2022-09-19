<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePhotosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // up 方法用于向数据库中添加新表、列或索引
        //  Schema::create('photos', 创建photos 表
        Schema::create('photos', function (Blueprint $table) {
            // 创建表时同时创建字段
            $table->id();   //指定生成id 字段
            $table->timestamps();   //指定生成 创建时间 和 修改时间 字段
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // 而 down 方法用于撤销 up 方法执行的操作。
        Schema::dropIfExists('photos');
    }
}
