.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->init()V
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
    .line 1540
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1543
    const-string v1, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v4, 0x190

    invoke-static {v1, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1563
    :goto_0
    return-void

    .line 1546
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/widget/SwitchButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 1547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1548
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/widget/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1549
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "detail.player.u.plus.state"

    invoke-static {v1, v3, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 1550
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->openEnhanceModeWithAnim()V

    .line 1554
    const-string v1, "type"

    const-string v2, "\u5f00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    const-string v1, "\u6b63\u5728\u5f00\u542fU+\u6a21\u5f0f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1562
    :goto_2
    const-string v1, "t1.detail_player.U+click"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1546
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1557
    .restart local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "detail.player.u.plus.state"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 1558
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->closeEnhanceMode()V

    .line 1559
    const-string v1, "type"

    const-string v2, "\u5173"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const-string v1, "\u5df2\u5173\u95edU+\u6a21\u5f0f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2
.end method
