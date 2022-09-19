.class Lcom/youku/player/base/MediaPlayerInit$17$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$17;->onRealVideoStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$17;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$17;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$17$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$17$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$17;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 587
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$17$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$17;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onRealVideoStart()V

    .line 588
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$17$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$17;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoaded()V

    .line 589
    return-void
.end method
