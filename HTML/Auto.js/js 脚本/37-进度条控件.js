"ui";  //这里需要带上;

ui.layout(
    <vertical>
        <text text="处理中..."></text>
        {/* 加载中loading 图标 */}
        <progressbar/>

        <text text="直线无限进度条"></text>
        {/* 加载中loading 图标 */}
        {/* indeterminate="true"  无限从左到右的动画 indeterminate=>不明确*/}
        {/* style="@style/Base.Widget.AppCompat.ProgressBar.Horizontal"  显示直线 */}
        <progressbar indeterminate="true" style="@style/Base.Widget.AppCompat.ProgressBar.Horizontal"/>

        <text text="可调节进度条"></text>
        {/*  progress="20" 初始值,没有为0 */}
        <seekbar />
        <seekbar progress="20"/>

        <horizontal>
        <text text="0"></text>
        <progressbar id='pro' w="*" margin="8" style="@style/Base.Widget.AppCompat.ProgressBar.Horizontal"/>
        </horizontal>
        <button id="dw">开始下载</button>


    </vertical>
);


ui.dw.click(()=>{
    // 定时增加
    // 获取值
    toast(ui.pro.getProgress())
    // 设置值
    ui.pro.setProgress(60)
})


toast('启动')

