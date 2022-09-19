.class Lcom/youku/player/base/MediaPlayerInit$9$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$9;->onTimeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$9;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$9;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$9$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$9$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$9;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/Track;->pauseForIRVideo(Landroid/content/Context;)V

    .line 360
    invoke-static {}, Lcom/youku/player/Track;->pause()V

    .line 361
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$9$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$9;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$9;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$400(Lcom/youku/player/base/MediaPlayerInit;)V

    .line 362
    return-void
.end method
