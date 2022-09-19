.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initClingUPlus()V
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
    .line 2988
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2991
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2992
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "\u7acb\u5373\u4f53\u9a8c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2993
    const-string v1, "t1.detail_player.U+guide"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2994
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1, v3}, Lcom/tudou/ui/activity/DetailActivity;->dismissUPlusCling(Z)V

    .line 2995
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 2996
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "detail.player.u.plus.state"

    invoke-static {v1, v2, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 2997
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->openEnhanceModeWithAnim()V

    .line 2998
    const-string v1, "\u6b63\u5728\u5f00\u542fU+\u6a21\u5f0f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 2999
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 3000
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-boolean v4, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 3001
    return-void
.end method
