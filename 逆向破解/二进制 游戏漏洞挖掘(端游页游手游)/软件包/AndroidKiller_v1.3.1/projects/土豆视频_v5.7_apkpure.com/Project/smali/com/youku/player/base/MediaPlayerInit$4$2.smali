.class Lcom/youku/player/base/MediaPlayerInit$4$2;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$4;->processP2PError()V
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
    .line 224
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "p2p error, retry"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 231
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$600(Lcom/youku/player/base/MediaPlayerInit;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4$2;->this$1:Lcom/youku/player/base/MediaPlayerInit$4;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$600(Lcom/youku/player/base/MediaPlayerInit;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$4$2$1;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$4$2$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$4$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_1
    return-void
.end method
