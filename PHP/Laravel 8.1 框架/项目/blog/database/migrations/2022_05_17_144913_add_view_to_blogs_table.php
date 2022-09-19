<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddViewToBlogsTable extends Migration
{

    public function up()
    {
        Schema::table('blogs', function (Blueprint $table) {
            $table->integer('view')->default(0)->comment('浏览量');
        });
    }

    public function down()
    {
        Schema::table('blogs', function (Blueprint $table) {
        });
    }
}