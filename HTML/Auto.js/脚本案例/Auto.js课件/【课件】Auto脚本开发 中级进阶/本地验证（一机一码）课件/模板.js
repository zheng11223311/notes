
/**
 * 5月22日
 * 阿涛：656206105
 */

"ui";

ui.layout(
        <vertical>

            {/**
             * 页头 
             * */}
            <appbar>
                <toolbar id="toolbar" title="脚本名称"/>
                <tabs id="tabs"/>
            </appbar>

            {/**
             * 页面内容 
             * */}
            <viewpager id="viewpager">


            {/**
             * 第一页面
             * */}
                <vertical>
                    
                    {/**
                     * 无障碍服务卡片
                     **/}
                    <card w="*" h="40" margin="10" cardCornerRadius="2dp"
                        cardElevation="1dp" gravity="center_vertical">

                        <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" padding="18 8 8 8" textSize="15sp"/>

                        <View bg="#4caf50" h="*" w="10"/>
                    </card>

                    {/**
                     * 功能选择卡片
                     **/}
                    <card w="*" h="40" margin="10 1"    cardCornerRadius="2dp"
                        cardElevation="1dp" gravity="center_vertical">
                        <horizontal>
                            <text text="功能选择" padding="18 8 8 8" textSize="15sp" gravity="center_vertical" textColor="black"/>
                            {/**
                             * 功能选项
                             **/}
                            <spinner id="sp1" entries="自动养号|自动顶贴|自动发帖" textColor="blue" marginLeft="20"/>
                        </horizontal>
                        <View bg="#ff00ff" h="*" w="10"/>
                    </card>

                    {/**
                     * 开始运行 按钮
                     **/}
                    <button id="start" text="开始运行" style="Widget.AppCompat.Button.Colored" w="*" margin="10"/>


                     {/**
                     * 相关配置卡片
                     **/}
                    <card w="*" h="*" margin="10 5" cardCornerRadius="2dp"
                        cardElevation="1dp">
                        <scroll>

                            <vertical padding="10">
                                
                                <checkbox id="cb_signAll" text="全部签到"/>

                                <horizontal w="*" marginTop="10">
                                    <text layout_gravity="bottom" text="话术一:" textColor="black" textSize="16sp" marginTop="10"/>
                                    <input id="input1" marginLeft="10" layout_gravity="bottom" w="150" text=""/>
                                </horizontal>

                                <horizontal w="*" marginTop="10">
                                    <text layout_gravity="bottom" text="话术二:" textColor="black" textSize="16sp" marginTop="10"/>
                                    <input id="input2" marginLeft="10" layout_gravity="bottom" w="150" text=""/>
                                </horizontal>

                                <horizontal w="*" marginTop="10">
                                    <text layout_gravity="bottom" text="话术三:" textColor="black" textSize="16sp" marginTop="10"/>
                                    <input id="input3" marginLeft="10" layout_gravity="bottom" w="150" text=""/>
                                </horizontal>

                                <button id="save" text="保存设置" style="Widget.AppCompat.Button.Colored" w="auto"/>

                            </vertical>

                        </scroll>
                    </card>

                </vertical>

            {/**
             * 第一页面结束
             * */}
               
                {/**
                 * 第二页面开始
                 * */}
                <vertical  padding="15">

                        {/**
                         * 列表头
                         * */}
                        <linear>
                            <input id="addUser" layout_weight="1" textColor="black" textSize="16sp" marginLeft="16"/>
                            
                            <button id="addUserBtn" text="添加账号" style="Widget.AppCompat.Button.Borderless.Colored"/>

                            <button id="clearUser" text="清空" style="Widget.AppCompat.Button.Borderless.Colored"/>
                        </linear>

                        {/**
                         * 列表内容
                         * */}
                        <list id="userList" marginTop="15">
                            
                            <horizontal>

                                <text id="user" textSize="16sp" textColor="#000000" text="{{user}}"/>

                                <text id="usernum" textSize="16sp" textColor="#000000" text="{{num}}" marginLeft="15"/>

                                <button id="deleteItem" text="删除" style="Widget.AppCompat.Button.Borderless.Colored"/>

                            </horizontal>
                        </list>
                        
                    </vertical>

                    {/**
                     * 第二页面结束
                     * */}
                    
                    {/**
                     * 第三页面开始
                     * */}
                    <vertical  padding="15">

                        {/**
                        * 列表头
                        * */}
                        <linear>
                            <input id="addArt" layout_weight="1" textColor="black" textSize="16sp" marginLeft="16"/>
                            
                            <button id="addArtBtn" text="添加帖子" style="Widget.AppCompat.Button.Borderless.Colored"/>

                            <button id="clearArt" text="清空" style="Widget.AppCompat.Button.Borderless.Colored"/>
                        </linear>

                        {/**
                        * 列表内容
                        * */}
                        <list id="artList"  marginTop="15">
                            
                            <horizontal>
                                <text id="art" textSize="16sp" textColor="#000000" text="{{art}}"/>

                                <input id="artUrl" marginLeft="10" layout_gravity="bottom" w="200" text="{{url}}" singleLine="true"/>

                                <button id="deleteItem" text="删除" style="Widget.AppCompat.Button.Borderless.Colored"/>

                            </horizontal>

                        </list>
                        
                    </vertical>

                    {/**
                     * 第三页面结束
                     * */}

                     {/**
                     * 第四页面开始
                     * */}

                    <vertical>

                        

                    </vertical>

                    {/**
                     * 第四页面结束
                     * */}

            </viewpager>
            {/**
            * 页面内容结束
            * */}

        </vertical>
);

/**
 * =========================================
 * *****************************************
 *           模块化对象
 * *****************************************
 * =========================================
 */

//=========================功能模块=============
var fun = {}

//等待出现，文本
fun.wait = function (str) {
    text(str).waitFor()
    sleep(1000)
}

//等待id出现，id
fun.waitId = function (str) {
    id(str).waitFor()
    sleep(1000)
}

//点击文本坐标，文本
fun.点击文本 = function (文本) {
    
    var weight = text(文本).findOne().bounds();

    click(weight.centerX(),weight.centerY())
}

//点击id，id
fun.点击id = function (a) {
    var weight = id(a).findOne().bounds();
    click(weight.centerX(),weight.centerY())
}

//向上滑动，像素 
fun.向上滑动 = function (pixel) {
    swipe(device.width/2,device.height/2,device.width/2,device.height/2 - pixel,500)
    sleep(1000)
}
//向上滑动，像素
fun.向下滑动 = function (pixel) {
    swipe(device.width/2,device.height/2,device.width/2,device.height/2 + pixel,800)
    sleep(1000)
}

//=========================功能模块结束=============

//===================加密模块================






//===================加密模块结束================



 /**
 * =========================================
 * *****************************************
 *           模块化对象结束
 * *****************************************
 * =========================================
 */



/**
 * =========================================
 *    以下内容页面标题可以修改，其他不用动
 * =========================================
 */

//设置滑动页面的标题
ui.viewpager.setTitles(["首页", "账号管理", "帖子管理","关于"]);

//让滑动页面和标签栏联动
ui.tabs.setupWithViewPager(ui.viewpager);

// //开启无障碍服务
ui.autoService.on("check", function(checked) {
    if(checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if(!checked && auto.service != null){
        auto.service.disableSelf();
    }
});

ui.emitter.on("resume", function() {
    ui.autoService.checked = auto.service != null;
});

//开始运行脚本
ui.start.on("click", function(){
    if(auto.service == null) {
        toast("请先开启无障碍服务！");
        return;
    }

    main(ui.sp1.getSelectedItemPosition());
});

//创建储存对象
var storage = storages.create("demo数据");

/**
 * =========================================
 *    以上内容页面标题可以修改，其他不用动
 * =========================================
 */


/**
 * =========================================
 *                授权验证
 * =========================================
 */



/**
 * =========================================
 *                授权验证结束
 * =========================================
 */

/**
 * =========================================
 *         页面配置信息读取和保存
 * =========================================
 */

//===========第一页面配置读取=======
//初始化页面信息

var uiSet = {
    signAll : false,
    sendText : []
};

threads.start(getSet)

//签到选择框

ui.cb_signAll.on("check", (checked)=>{
    if(checked){
        uiSet.signAll = true;
    }else{
        uiSet.signAll = false;
    }
});

//保存按钮点击
ui.save.click(()=>{
    storage.put("input1", ui.input1.text());  
    storage.put("input2", ui.input2.text()); 
    storage.put("input3", ui.input3.text());
    uiSet.sendText.splice(0);
    if(ui.input1.text() != ""){
        uiSet.sendText.push(ui.input1.text())
    }
    if(ui.input2.text() != ""){
        uiSet.sendText.push(ui.input2.text())
    }
    if(ui.input3.text() != ""){
        uiSet.sendText.push(ui.input3.text())
    }
});

//获取评论配置信息
function getSet() {
    var input1 = storage.get("input1");
    if(input1 && input1 != ""){
        ui.input1.setText(input1);
        uiSet.sendText.push(input1)
    }
    var input2 = storage.get("input2");
    if(input2 && input2 != ""){
        ui.input1.setText(input1);
        uiSet.sendText.push(input2);
    }
    var input3 = storage.get("input3");
    if(input3 && input3 != ""){
        ui.input1.setText(input1);
        uiSet.sendText.push(input3);
    }
}

//===========第一页面配置读取结束=======


//========第二页面账号管理=========

var userItems = [];
var userArr = storage.get("userItems");
if(userArr && userArr != ""){
    userItems = userArr
}

ui.userList.setDataSource(userItems);
//删除用户
ui.userList.on("item_bind", function(itemView, itemHolder){
    itemView.deleteItem.on("click", function(){
        let item = itemHolder.item;
        // toast("被删除的人名字为: " + item.name + "，年龄为: " + item.age);
        userItems.splice(itemHolder.position, 1);
        storage.put("userItems", userItems);
    });
})
//添加用户
ui.addUserBtn.click(()=>{
    
    var arrNum = userItems.length + 1 
    var usernum = ui.addUser.text()
    userItems.push({user: "账号"+arrNum+"：", num: usernum});
    ui.addUser.setText("")
    storage.put("userItems", userItems);
});
//清空用户
ui.clearUser.click(()=>{
    userItems.splice(0)
    storage.put("userItems", userItems);
});

//========第二页面账号管理结束=========

//========第三页面帖子管理=========

var artItems = [];
var artArr = storage.get("artItems");
if(artArr && artArr != ""){
    artItems = artArr
}

ui.artList.setDataSource(artItems);

//删除帖子
ui.artList.on("item_bind", function(itemView, itemHolder){
    itemView.deleteItem.on("click", function(){
        let item = itemHolder.item;
        // toast("被删除的人名字为: " + item.name + "，年龄为: " + item.age);
        artItems.splice(itemHolder.position, 1);
        storage.put("artItems", artItems);
    });
})
//添加帖子
ui.addArtBtn.click(()=>{
    
    
    var artUrl = ui.addArt.text();
    artItems.push({art: "帖子：", url: artUrl});
    ui.addArt.setText("")
    storage.put("artItems", artItems);
});
//清空帖子
ui.clearArt.click(()=>{
    artItems.splice(0)
    storage.put("artItems", artItems);
});

//========第三页面帖子管理结束=========


/**
 * =========================================
 *         页面配置信息读取和保存
 * =========================================
 */



 /**
 * =========================================
 *           本脚本实现功能函数
 * =========================================
 */
function main(funIndex) {
    switch(funIndex) {
        case 0:
            threads.start(function(){
                test()
            })
           break;
        case 1:
        //    代码块
           break;
        default:
        //    默认代码块
   } 
}

function test() {
    sleep(1000)
    toast("123")
}


/**
 * =========================================
 *           本脚本实现功能函数结束
 * =========================================
 */
