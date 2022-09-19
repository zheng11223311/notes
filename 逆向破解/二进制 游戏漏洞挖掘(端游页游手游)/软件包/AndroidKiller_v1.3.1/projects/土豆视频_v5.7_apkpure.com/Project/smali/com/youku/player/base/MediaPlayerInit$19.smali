.class Lcom/youku/player/base/MediaPlayerInit$19;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;


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
    .line 688
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayHeartSixtyInterval()V
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {v0, v1, v2}, Lcom/youku/player/Track;->trackPlayHeart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Z)V

    .line 697
    :cond_0
    return-void
.end method

.method public onPlayHeartTwentyInterval()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$19;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$19$1;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$19$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$19;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method
