### 1.ThinkPHP phpexcel 的使用(导入/生成excel)

**引入phpexcel**

```
composer require phpoffice/phpexcel
```

**导出excel**

**步骤:**

1. 判断excel 类型
2. 读取文件
3. 获取工作簿(sheet)
4. 获取总行数
5. 获取总列数
6. 循环取出每个单元格的值并拼装数组



**生成execel** 

参数详解

```
//set Properties 设置文件属性
$properies=$phpexcel ->getProperties();

$properies->setCreateor('作者是谁');
$properies->setLastModifiendBy('最后一次修改的作者');
$properies->setTitle('标题');
$properies->setSubject('主题');
$properies->setDescription('备注');
$properies->setKeyWords('关键字');
$properies->setCategory('类别');

//获取操作单元格对象
$sheet=$phpexcel->getActiveSheet();

$sheet->setTitle('设置sheet 名');

//简单写入
$sheet->setCellValue('A1','问卷标题'); //可以指定单元格位置
$sheet->setCellValue('A2','今天你吃了吗?'); //可以指定单元格位置
```

