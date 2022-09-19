
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
/*
一个用于压缩jsfuck的js，效率高达85%，以下为测试结果：
原jsfuck：176536字
压缩后的jsfuck：25000(具体多少忘了。。大约在14500字)
效率=25000/176536=14.1614175%
作者：黑暗战无不胜(qq：2192003656)
尊重作者倣权，谢谢和作！
*/

ui.statusBarColor("#03a9f4");

ui.layout(
    <vertical>
        <text w="*" h="56" bg="#03a9f4" paddingLeft="16" gravity="center_vertical" color="#ffffff" size="18sp">JsFuck一键压缩</text>
        <vertical h="*" w="*" margin="40 40">
            <input id="i" h="300" bg="#23112435" paddingLeft="8" hint="输入要压缩的jsfuck代码，压缩后的js直接粘贴到AutoJs即可使用。"/>
            <button id="ok" margin="5 0" bg="#EC407A" text="压缩" />
        </vertical>
    </vertical>
)
ui.ok.click(function(){
var i = ui.i.text();
i = i.replace("[!+[]+!+[]+!+[]]+","0");
i = i.replace("([![]]+[][[]])","1");
i = i.replace("[+!+[]+[+[]]]+","2");
i = i.replace("([][[]]+[])","3");
i = i.replace("[!+[]+!+[]]","4");
i = i.replace("(+[![]]+[][","5");
i = i.replace("(!![]+[][","6");
i = i.replace("(!![]+[])","7");
i = i.replace("(![]+[])","8");
i = i.replace("[+!+[]]]","9");
i = i.replace("[+!+[]]+","a");
i = i.replace("+([]+[])","b");
i = i.replace("[+[]]+","c");
i = i.replace("[([][","d");
i = i.replace("!+[]","e");
i = i.replace("+![]","s");
i = i.replace("![]","h");
i = i.replace("[]","y");
i = i.replace("+6b6068","z");
i = i.replace("c+c+","k");
toastLog("已复制到粘贴板");
setClip('var i = "' + i + '"\ni = i.replace(new RegExp("z","g"),"+6b6068").replace(new RegExp("k","g"),"c+c+").replace(new RegExp("0","g"),"[!+[]+!+[]+!+[]]+").replace(new RegExp("1","g"),"([![]]+[][[]])").replace(new RegExp("2","g"),"[+!+[]+[+[]]]+").replace(new RegExp("3","g"),"([][[]]+[])").replace(new RegExp("4","g"),"[!+[]+!+[]]").replace(new RegExp("5","g"),"(+[![]]+[][").replace(new RegExp("6","g"),"(!![]+[][").replace(new RegExp("7","g"),"(!![]+[])").replace(new RegExp("8","g"),"(![]+[])").replace(new RegExp("9","g"),"[+!+[]]]").replace(new RegExp("a","g"),"[+!+[]]+").replace(new RegExp("b","g"),"+([]+[])").replace(new RegExp("c","g"),"[+[]]+").replace(new RegExp("d","g"),"[([][").replace(new RegExp("e","g"),"!+[]").replace(new RegExp("s","g"),"+![]").replace(new RegExp("h","g"),"![]").replace(new RegExp("y","g"),"[]");engines.execScript("百度贴吧顶帖js",i);');
    ui.finish();
});
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
