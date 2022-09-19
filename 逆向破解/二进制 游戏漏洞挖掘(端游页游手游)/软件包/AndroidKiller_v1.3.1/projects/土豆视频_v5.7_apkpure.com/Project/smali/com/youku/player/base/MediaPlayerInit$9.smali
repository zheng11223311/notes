.class Lcom/youku/player/base/MediaPlayerInit$9;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnTimeoutListener;


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
    .line 347
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyChangeVideoQuality()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "onNotifyChangeVideoQuality"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onNotifyChangeVideoQuality()V

    goto :goto_0
.end method

.method public onTimeOut()V
    .locals 4

    .prologue
    .line 351
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    .line 383
    :goto_0
    return-void

    .line 353
    :cond_0
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v3, "onTimeOut"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 355
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/youku/player/base/MediaPlayerInit$9$1;

    invoke-direct {v3, p0}, Lcom/youku/player/base/MediaPlayerInit$9$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$9;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$200(Lcom/youku/player/base/MediaPlayerInit;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->trackPlayError()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getWeburl()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "videoUrl":Ljava/lang/String;
    new-instance v0, Lcom/youku/statistics/TaskSendPlayBreak;

    invoke-direct {v0, v1}, Lcom/youku/statistics/TaskSendPlayBreak;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "task":Lcom/youku/statistics/TaskSendPlayBreak;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/statistics/TaskSendPlayBreak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/player/base/MediaPlayerInit;->access$202(Lcom/youku/player/base/MediaPlayerInit;Z)Z

    .line 376
    .end local v0    # "task":Lcom/youku/statistics/TaskSendPlayBreak;
    .end local v1    # "videoUrl":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/youku/player/base/MediaPlayerInit$9$2;

    invoke-direct {v3, p0}, Lcom/youku/player/base/MediaPlayerInit$9$2;-><init>(Lcom/youku/player/base/MediaPlayerInit$9;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
