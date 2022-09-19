.class Lcom/youku/player/base/MediaPlayerInit$7;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$7;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 312
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "onSeekComplete"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/youku/player/Track;->onSeekComplete()V

    .line 314
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$7;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$7;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 316
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$7;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isSeeking:Z

    .line 318
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/youku/player/Track;->setTrackPlayLoading(Z)V

    .line 319
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$7;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-nez v0, :cond_1

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$7;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$7$1;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$7$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
