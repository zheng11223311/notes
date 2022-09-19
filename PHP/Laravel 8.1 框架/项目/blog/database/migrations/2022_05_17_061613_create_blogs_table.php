<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // 创建表blogs
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            // integer 整型数据
            $table->integer('user_id')->comment('用户id');
            $table->integer('category_id')->comment('分类id');
            $table->string('title')->comment('博客标题');
            // 文本类型
            $table->text('content')->comment('博客内容');
            // default 默认值 tinyInteger 小整型
            $table->tinyInteger('status')->default('1')->comment('博客状态: 0未发布 1发布');
            // 创建 创建时间 和 修改时间
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('blogs');
    }
}
