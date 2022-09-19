function 权限申请() {
    if (!floaty.checkPermission()) {
        _toast("请开启悬浮窗和后台弹出界面权限");
        floaty.requestPermission();
        return
    }
    if (auto.service == null) {
        _toast("请开启无障碍服务");
        app.startActivity({ action: "android.settings.ACCESSIBILITY_SETTINGS" });
        return
    }
}
权限申请()