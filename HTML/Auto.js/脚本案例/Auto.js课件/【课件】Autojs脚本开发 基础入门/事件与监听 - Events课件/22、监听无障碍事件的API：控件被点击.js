



// 监听控件被点击：view_clicked、view_long_clicked
// auto.registerEvent('view_clicked', e => {

//     // toast('控件被单击')
//     if(e.source.desc() == "文件"){
//         toast('文件被单击')
//     }
    
// });



auto.registerEvent('view_long_clicked', e => {

    toast('控件被长按')
    log(e)
    
    
});


setInterval(()=>{},1000)




toast('阿涛QQ/微信：656206105')


// AccessibilityEvent(eventType='view_clicked', contentChangeTypes=[], windowChanges=[], eventTime=1916039636, packageName=org.autojs.autojspro, movementGranularity=0, action='0', windowId=7109, isChecked=false, isEnabled=true, isPassword=false, isFullScreen=false, isScrollable=false, itemCount=-1, currentItemIndex=-1, fromIndex=-1, toIndex=-1, scrollX=-1, scrollY=-1, scrollDeltaX=0, scrollDeltaY=0, maxScrollX=-1, maxScrollY=-1, addedCount=-1, removedCount=-1, className=androidx.appcompat.app.ActionBar$Tab, text=[文件], beforeText=null, contentDescription=文件),

// source=UiObject(id=null, sourceNodeId=-4294967169, packageName=org.autojs.autojspro, className=androidx.appcompat.app.ActionBar$Tab, text=null, desc=文件, indexInParent=0, boundsInParent=[0,0][198,132], boundsInScreen=[0,198][198,330], checkable=false, checked=false, focusable=true, focused=false, selected=true, clickable=true, longClickable=false, enabled=true, password=false, scrollable=false)









