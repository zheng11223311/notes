.class Lcom/youku/player/base/MediaPlayerInit$18;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit;->execute(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/MediaPlayerInit;

.field final synthetic val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$18;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndLoading()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 653
    invoke-static {}, Lcom/youku/player/base/MediaPlayerInit;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEndLoading"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$18$2;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$18$2;-><init>(Lcom/youku/player/base/MediaPlayerInit$18;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 666
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$1100(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/module/LiveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$1100(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/module/LiveInfo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/youku/player/module/LiveInfo;->endLoadingTime:J

    .line 668
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$1100(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/module/LiveInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/player/Track;->onPlayLoadingEnd(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 672
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iput-boolean v6, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 673
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 674
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->updateVideoId(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v6, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isUseCachePath()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseDuringSeek:Z

    if-nez v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 685
    :cond_2
    return-void
.end method

.method public onStartLoading()V
    .locals 6

    .prologue
    .line 620
    invoke-static {}, Lcom/youku/player/base/MediaPlayerInit;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartLoading"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    new-instance v1, Lcom/youku/player/module/LiveInfo;

    invoke-direct {v1}, Lcom/youku/player/module/LiveInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/youku/player/base/MediaPlayerInit;->access$1102(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/module/LiveInfo;)Lcom/youku/player/module/LiveInfo;

    .line 628
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$1100(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/module/LiveInfo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/youku/player/module/LiveInfo;->startLoadingTime:J

    .line 629
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/youku/player/Track;->onPlayLoadingStart(J)V

    .line 631
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$18$1;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$18$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$18;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
