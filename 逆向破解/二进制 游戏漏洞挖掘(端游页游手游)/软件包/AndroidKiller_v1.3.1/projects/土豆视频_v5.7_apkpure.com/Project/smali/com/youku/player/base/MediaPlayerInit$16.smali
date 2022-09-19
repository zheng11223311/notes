.class Lcom/youku/player/base/MediaPlayerInit$16;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnBufferPercentUpdateListener;


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
    .line 527
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$16;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$16;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPercentUpdate(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 530
    invoke-static {}, Lcom/youku/player/base/MediaPlayerInit;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$16;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$16;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$16;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/PluginManager;->onBufferPercentUpdate(I)V

    goto :goto_0
.end method
