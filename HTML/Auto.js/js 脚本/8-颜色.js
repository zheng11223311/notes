"ui";
ui.layout(
    <horizontal>
        <button text="第一个按钮" bg="#33ff0000"/>
        <button text="第二个按钮"/>
    </horizontal>
);

// log('字符串颜色',colors.toString('0x11223344'))  //#11223344
// log('整数颜色',colors.parseColor('#00000a'))  //-16777206

// log('红通道',colors.red('#0000aa'))  //0
// log('红通道',colors.red(0x223344))  //34

// log('透明度',colors.alpha(0x223344))  //0

// log('rgb',colors.rgb(255,255,255))  // -1
// log('argb',colors.argb(00,255,255,255))  // 16777215

// log('相似度',colors.isSimilar("#0000ab","#0000aa"))  // true
// log('相似度',colors.isSimilar(0x223344,"#0000aa",4))  // false,差值小于等于4 返回true
// log('相似度',colors.isSimilar(0x223344,"#0000aa",4,"rgb"))  // false

// log('是否相等',colors.equals(0x223344,"#0000aa"))  // false
// log('是否相等',colors.equals("#0000aa","#0000aa"))  // true

log('内置颜色',colors.BLACK)   //-16777216
log('内置颜色',colors.DKGRAY)   //-12303292