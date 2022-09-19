.class Lcom/youku/player/base/MediaPlayerInit$13;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnMidADPlayListener;


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

.field final synthetic val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

.field final synthetic val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field final synthetic val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$13;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iput-object p3, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    iput-object p4, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndPlayMidAD(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 494
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "onEndPlayMidAD"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IAdPlayerCallback;->onAdEnd(I)Z

    move-result v0

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadingMidADStart()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMidAdLoadingStartListener()V

    .line 504
    return-void
.end method

.method public onStartPlayMidAD(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 475
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "onStartPlayMidAD"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmakuWhenOpen()V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$13$1;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$13$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$13;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IAdPlayerCallback;->onAdStart(I)Z

    move-result v0

    .line 489
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
