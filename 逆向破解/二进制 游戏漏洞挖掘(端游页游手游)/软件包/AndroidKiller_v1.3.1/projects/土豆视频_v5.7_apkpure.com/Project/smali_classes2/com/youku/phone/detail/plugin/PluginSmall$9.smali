.class Lcom/youku/phone/detail/plugin/PluginSmall$9;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->initEndPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 829
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    if-nez v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->enableOrientation()V

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 839
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 840
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/AnalyticsWrapper;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 848
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_4

    .line 849
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v3}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 851
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 852
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/youku/player/danmaku/IDanmakuManager;->seekToDanmaku(I)V

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onRePlay()V

    .line 856
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->showLoading(Z)V

    .line 857
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$9;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1500(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    goto/16 :goto_0
.end method
