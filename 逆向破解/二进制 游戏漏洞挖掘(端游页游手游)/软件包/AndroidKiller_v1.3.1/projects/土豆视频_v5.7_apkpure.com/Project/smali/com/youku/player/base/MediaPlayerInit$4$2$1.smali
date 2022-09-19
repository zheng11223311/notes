.class Lcom/youku/player/base/MediaPlayerInit$4$2$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/player/base/MediaPlayerInit$4$2;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$4$2;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$4$2$1;->this$2:Lcom/youku/player/base/MediaPlayerInit$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2$1;->this$2:Lcom/youku/player/base/MediaPlayerInit$4$2;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2$1;->this$2:Lcom/youku/player/base/MediaPlayerInit$4$2;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2$1;->this$2:Lcom/youku/player/base/MediaPlayerInit$4$2;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 238
    :cond_0
    return-void
.end method
