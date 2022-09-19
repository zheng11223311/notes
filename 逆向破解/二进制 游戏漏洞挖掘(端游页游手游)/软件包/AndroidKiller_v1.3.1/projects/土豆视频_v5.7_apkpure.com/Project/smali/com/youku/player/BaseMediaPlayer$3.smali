.class Lcom/youku/player/BaseMediaPlayer$3;
.super Ljava/lang/Object;
.source "BaseMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/BaseMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/BaseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/BaseMediaPlayer;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcom/youku/player/BaseMediaPlayer;->mVideoHeight:I

    .line 535
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lcom/youku/player/BaseMediaPlayer;->mVideoWidth:I

    .line 536
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget v0, v0, Lcom/youku/player/BaseMediaPlayer;->mVideoWidth:I

    sput v0, Lcom/youku/player/Track;->width:I

    .line 537
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget v0, v0, Lcom/youku/player/BaseMediaPlayer;->mVideoHeight:I

    sput v0, Lcom/youku/player/Track;->height:I

    .line 538
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->isUsingUMediaplayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v0}, Lcom/youku/player/BaseMediaPlayer;->access$500(Lcom/youku/player/BaseMediaPlayer;)Lcom/youku/uplayer/OnUplayerPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v0}, Lcom/youku/player/BaseMediaPlayer;->access$500(Lcom/youku/player/BaseMediaPlayer;)Lcom/youku/uplayer/OnUplayerPreparedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/uplayer/OnUplayerPreparedListener;->OnUplayerPrepared()V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$3;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 542
    return-void
.end method
