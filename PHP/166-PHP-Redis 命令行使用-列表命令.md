### PHP-Redis 命令行使用-列表命令

**列表命令**

- lpush

  左侧插入列表一条数据

  lpush me age

- rpush

  右侧插入列表一条数据

  rpush me sex

- lpushx

  左侧插入列表一条数据,如果列表不存在不插入

  lpushx me age

- rpushx

  右侧插入列表一条数据,如果列表不存在不插入

  lpushx me age

- lindex

  获取列表中指定索引的元素

  lindex me 1

- linsert

  在列表中的某个位置插入一条数据

  linsert me BEFORE age sex   在age 前插入sex

- llen

  获取列表的长度

  llen me

- lpop

  在左侧弹出一条数据

  lpop me

- rpop

  在右侧弹出一条数据

  rpop me

- lrange

  获取列表中某个区间中的数据

  lrange me 1 5

- lrem

  移出列表中的某个数据

  lrem me 1 age     //1 表示删除列表中的1个age(列表中可以存在多个age)

- lset

  修改列表列表中元素的值

  lset me 0  sex            //0 为索引下标

- rpoplpush

  将列表右侧的值弹出,然后插入到另一个列表中

  rpoplpush me me1


