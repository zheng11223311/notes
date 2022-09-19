.class Lcom/youku/uplayer/MediaPlayerProxy$6;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 351
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$6;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$6;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$700(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$6;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->access$700(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy$6;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
