.class Lcom/youku/player/base/MediaPlayerInit$14;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnNetworkSpeedListener;


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
    .line 508
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$14;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedUpdate(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$14;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$14;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$14$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$14$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$14;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 519
    :cond_0
    return-void
.end method
