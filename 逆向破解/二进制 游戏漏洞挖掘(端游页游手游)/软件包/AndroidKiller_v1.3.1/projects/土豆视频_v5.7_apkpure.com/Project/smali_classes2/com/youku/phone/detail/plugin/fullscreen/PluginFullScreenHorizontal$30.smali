.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initPointView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 1859
    const-string v0, "hotpoint"

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "pointview click"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 1867
    new-array v7, v4, [I

    .line 1868
    .local v7, "loc":[I
    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1869
    new-array v8, v4, [I

    .line 1870
    .local v8, "locs":[I
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1871
    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget v4, v8, v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/player/goplay/Point;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$1900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;-><init>(Landroid/content/Context;Landroid/os/Handler;IILcom/youku/player/goplay/Point;Landroid/widget/SeekBar;)V

    invoke-static {v9, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    .line 1872
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->show(Landroid/view/View;)V

    goto :goto_0
.end method
