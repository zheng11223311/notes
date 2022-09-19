.class Lcom/youku/player/BaseMediaPlayer$2;
.super Ljava/lang/Object;
.source "BaseMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 508
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v0}, Lcom/youku/player/BaseMediaPlayer;->access$300(Lcom/youku/player/BaseMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v0}, Lcom/youku/player/BaseMediaPlayer;->access$300(Lcom/youku/player/BaseMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v0, v0, Lcom/youku/player/BaseMediaPlayer;->mTargetState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v0, v1, :cond_2

    .line 515
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, v0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 516
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/youku/player/BaseMediaPlayer;->mTargetState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v0, v0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v0, v1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->play()V

    .line 521
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v0}, Lcom/youku/player/BaseMediaPlayer;->access$400(Lcom/youku/player/BaseMediaPlayer;)I

    move-result v0

    if-lez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v1}, Lcom/youku/player/BaseMediaPlayer;->access$400(Lcom/youku/player/BaseMediaPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->seekTo(I)V

    .line 523
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer$2;->this$0:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->access$402(Lcom/youku/player/BaseMediaPlayer;I)I

    goto :goto_0
.end method
