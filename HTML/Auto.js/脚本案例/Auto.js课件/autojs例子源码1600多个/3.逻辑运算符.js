//1.== 双等号 返回值只有true 和false 类型为布尔型，只比较左右的值，若相等则返回true，反之false
//2.=== 全等号 返回值为true或false 若左右两边的值和类型均相等，则返回true，反之false
//3.!= 不相等号 返回值为true或false 不比较类型，只比较值，若左边不等于右边则返回true，反正false



var 字符串 = "1"
var 数字 = 1

log(字符串 == 数字) //返回值为true表示为真或肯定
log(字符串 === 数字) //返回值为false表示为假或否定
log(字符串 != 数字)  //返回值为false表示假或否定 