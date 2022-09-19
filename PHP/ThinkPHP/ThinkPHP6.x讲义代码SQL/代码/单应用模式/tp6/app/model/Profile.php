<?php
namespace app\model;
use think\Model;

class Profile extends Model
{
   public function user()
   {
        // 反向关联 
       return $this->belongsTo(User::class);
       return $this->belongsTo(User::class, 'user_id');
   }
}