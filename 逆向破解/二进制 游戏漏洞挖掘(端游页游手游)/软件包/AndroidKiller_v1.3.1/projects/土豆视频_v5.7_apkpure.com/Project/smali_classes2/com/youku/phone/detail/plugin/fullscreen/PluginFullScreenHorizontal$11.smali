.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onFinishInflate()V
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
    .line 1024
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    .line 1034
    const-string v0, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 1038
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBtnPlayOrPause onClick isPlaying = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    const-string v0, "\u64ad\u653e\u9875\u6682\u505c\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6682\u505c\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)V

    goto :goto_0

    .line 1043
    :cond_2
    const-string v0, "\u64ad\u653e\u9875\u64ad\u653e\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u64ad\u653e\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/AnalyticsWrapper;->playContinue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    goto/16 :goto_0
.end method
