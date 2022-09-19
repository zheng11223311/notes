.class Lcom/youku/uplayer/MediaPlayerProxy$4;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 325
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$4;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$4;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->access$402(Lcom/youku/uplayer/MediaPlayerProxy;I)I

    .line 329
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$4;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$500(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$4;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$500(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy$4;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$4;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->release()V

    goto :goto_0
.end method
