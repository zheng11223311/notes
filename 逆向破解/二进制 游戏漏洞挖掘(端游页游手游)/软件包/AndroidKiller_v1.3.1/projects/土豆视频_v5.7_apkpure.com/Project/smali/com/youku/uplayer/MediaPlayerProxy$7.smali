.class Lcom/youku/uplayer/MediaPlayerProxy$7;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 362
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$7;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$7;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->access$402(Lcom/youku/uplayer/MediaPlayerProxy;I)I

    .line 366
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$7;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$800(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$7;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$800(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy$7;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 369
    :cond_0
    return-void
.end method
