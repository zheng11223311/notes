.class Lcom/youku/player/base/MediaPlayerInit$14$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$14;->onSpeedUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$14;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$14;I)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$14$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$14;

    iput p2, p0, Lcom/youku/player/base/MediaPlayerInit$14$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$14$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$14;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$14;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget v1, p0, Lcom/youku/player/base/MediaPlayerInit$14$1;->val$count:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginManager;->onNetSpeedChange(I)V

    .line 516
    return-void
.end method
