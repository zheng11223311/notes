.class Lcom/youku/player/base/MediaPlayerInit$10;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnCurrentPositionUpdateListener;


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

.field final synthetic val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field final synthetic val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IPlayerUiControl;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iput-object p3, p0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPositionUpdate(I)V
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/player/ad/MidAdModel;->onPositionUpdate(I)V

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$10$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$10$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$10;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 422
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/youku/player/danmaku/IDanmakuManager;->onPositionChanged(I)V

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getLoopEndTime()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getLoopStartTime()I

    move-result v1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$10;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getLoopEndTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startLoopVideo(II)V

    goto :goto_0
.end method
