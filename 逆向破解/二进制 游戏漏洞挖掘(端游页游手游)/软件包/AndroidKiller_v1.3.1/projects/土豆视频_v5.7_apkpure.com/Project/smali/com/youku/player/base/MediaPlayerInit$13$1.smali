.class Lcom/youku/player/base/MediaPlayerInit$13$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$13;->onStartPlayMidAD(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$13;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$13;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$13$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$13$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$13;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$13;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onADplaying()V

    .line 483
    return-void
.end method
