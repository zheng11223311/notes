"ui";
/**
 * 因涉及获取设备界面导航布局，故此函数需要在ui模式下运行,且非ui线程下执行
 * 不同分辨率自动缩放分辨率，判断全面屏与否，做到精准缩放
 * 参数说明
 * @xi 在开发设备里点击的x坐标 
 * @yi 在开发设备里点击的y坐标
 * @centerXY 开发设备的x、y坐标，已数组形式传入例如 [1080,2240]
 * @cho 工作模式：当 cho==1时，将对缩放后的坐标执行点击，当cho==2时，以数组的形式返回缩放后的x、y坐标
 * @布尔值 cho=1时，点击成功返回true，否则返回false， 
 */


/**示例 */
threads.start(function () {// 开启一个新线程
    log(purclick(500, 600, [1080, 2240], 1)) //对缩放后的坐标执行点击
    toastLog(purclick(500, 600, [1080, 2240], 2)) //将缩放后的坐标返回
})


/***缩放点击函数 */
function purclick(xi, yi, centerXY, cho) {
    gethighwide = () => {
        let result = 0;
        const isHasNavigationBar = function () {
            let windowManager = activity.getWindowManager();
            let d = windowManager.getDefaultDisplay();
            let realDisplayMetrics = new android.util.DisplayMetrics();
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.JELLY_BEAN_MR1) {
                d.getRealMetrics(realDisplayMetrics);
            };
            let realHeight = realDisplayMetrics.heightPixels;
            let realWidth = realDisplayMetrics.widthPixels;
            let displayMetrics = new android.util.DisplayMetrics();
            d.getMetrics(displayMetrics);
            let displayHeight = displayMetrics.heightPixels;
            let displayWidth = displayMetrics.widthPixels;
            if ("xiaomi".equalsIgnoreCase(device.brand)) return android.provider.Settings.Global.getInt(activity.getContentResolver(), "force_fsg_nav_bar", 0) == 0;
            return (realWidth - displayWidth) > 0 || (realHeight - displayHeight) > 0;
        };
        let resources = activity.getResources();
        let resourceId = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (resourceId > 0 && isHasNavigationBar(activity)) {
            result = resources.getDimensionPixelSize(resourceId);
        };
        return {
            width: device.width,
            height: device.height - result
        };
    };
    boun = gethighwide()
    if (boun) {
        x = xi / centerXY[0] * boun.width;
        y = yi / centerXY[1] * boun.height;
        if (cho == 1) return click(x, y);
        if (cho == 2) return [x, y];
    }
}