.class Lcom/youku/player/base/MediaPlayerInit$18$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$18;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$18;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$18;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$18;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$18;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->pauseDanmaku()V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-nez v0, :cond_2

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 644
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isUseCachePath()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$18$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$18;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$18;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->loadingPause()V

    goto :goto_0
.end method
