<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    // 默认使用类名的小写名称作为数据表的名称,即与之关联
    use HasFactory;
    /**
     * 该表将与模型关联。
     * 不使用默认类名作为数据表的关联,使用自定义的表与此模型类关联
     *
     * @var string
     */
    // protected $table = 'my_flights';


    /**
     * 与表关联的主键。
     * 模型有一个默认的主键列，该列为 id,你也可以使用自定义主键
     *
     * @var string
     */
    // protected $primaryKey = 'flight_id';


    /**
     * 指明模型的 ID 不是自增。
     *
     * @var bool
     */
    // public $incrementing = false;

    /**
     * 自动递增主键的「类型」
     * 如果你的主键不是一个整数，
     * 你需要将模型上受保护的 $keyType 属性设置为 string：
     *
     * @var string
     */
    // protected $keyType = 'string';



    // 默认情况下，Eloquent 预期你的数据表中存在
    //  created_at 和 updated_at 两个字段 。
    // 如果你不想让 Eloquent 自动管理这两个列，
    //  请将模型中的 $timestamps 属性设置为 false：
     /**
     * 是否主动维护时间戳
     *
     * @var bool
     */
    // public $timestamps = false;

    /**
     * 可批量赋值属性
     *为防止而恶意操作,批量添加需要在模型中设置允许批量添加的字段
     * @var array
     */
    // protected $fillable = ['name']; //允许批量操作的字段



    

}
