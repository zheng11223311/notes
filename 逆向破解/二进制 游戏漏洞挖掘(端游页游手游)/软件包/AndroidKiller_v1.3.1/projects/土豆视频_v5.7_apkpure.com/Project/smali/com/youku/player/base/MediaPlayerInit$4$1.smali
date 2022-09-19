.class Lcom/youku/player/base/MediaPlayerInit$4$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$4;->processExternalVideoError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$4;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$4;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$4$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isEncyptError:Z

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 216
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 218
    :cond_1
    return-void
.end method
