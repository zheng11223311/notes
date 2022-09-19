


// 监听窗口变化
auto.registerEvent('windows_changed', e => {


    // log(e.windowChanges)

    // toast('窗口变化了');
    // log(e.windowChanges[0].indexOf('add'))
    // 判断是否有新窗口打开
    if (e.windowChanges[0].indexOf('add') >= 0) {
        // 获取新窗口的id
        let wid = e.windowId;
        log(wid)
        // 遍历窗口，获取新窗口
        let window = auto.windows.filter(w => w.id == wid);
        // 判断新窗口是Auto.js
        if (window.length >= 0 && window[0].title == 'Auto.js') {
            toast("Auto.js被打开了！");
        }
    }
});

setInterval(() => {},1000)

toast('阿涛QQ/微信：656206105')


// AccessibilityEvent(eventType='windows_changed', contentChangeTypes=[], windowChanges=[removed], eventTime=1810930798, packageName=null, movementGranularity=0, action='0', windowId=6758, isChecked=false, isEnabled=false, isPassword=false, isFullScreen=false, isScrollable=false, itemCount=-1, currentItemIndex=-1, fromIndex=-1, toIndex=-1, scrollX=-1, scrollY=-1, scrollDeltaX=0, scrollDeltaY=0, maxScrollX=-1, maxScrollY=-1, addedCount=-1, removedCount=-1, className=null, text=[], beforeText=null, contentDescription=null), source=null


// AccessibilityEvent(eventType='windows_changed', contentChangeTypes=[], windowChanges=[added], eventTime=1810930798, packageName=null, movementGranularity=0, action='0', windowId=1394, isChecked=false, isEnabled=false, isPassword=false, isFullScreen=false, isScrollable=false, itemCount=-1, currentItemIndex=-1, fromIndex=-1, toIndex=-1, scrollX=-1, scrollY=-1, scrollDeltaX=-1, scrollDeltaY=-1, maxScrollX=-1, maxScrollY=-1, addedCount=-1, removedCount=-1, className=null, text=[], beforeText=null, contentDescription=null), source=null



