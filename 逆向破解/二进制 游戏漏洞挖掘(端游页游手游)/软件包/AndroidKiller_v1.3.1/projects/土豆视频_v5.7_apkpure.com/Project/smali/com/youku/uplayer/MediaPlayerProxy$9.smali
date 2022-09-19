.class Lcom/youku/uplayer/MediaPlayerProxy$9;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/MediaPlayerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/MediaPlayerProxy;


# direct methods
.method constructor <init>(Lcom/youku/uplayer/MediaPlayerProxy;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$9;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$9;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$1100(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$9;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$1100(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy$9;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 392
    :cond_0
    return-void
.end method
