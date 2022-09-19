.class Lcom/youku/gamecenter/player/GameVideoPlayer$3;
.super Ljava/lang/Object;
.source "GameVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/player/GameVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x3

    .line 298
    const-string v1, "VideoTest"

    const-string v2, "===GameVideoPlayer onPrepared==="

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "VideoTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared\u7ebf\u7a0b\u7684id \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 302
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$600(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$600(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/player/GameVideoBottomView;->setEnabled(Z)V

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$302(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 309
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$402(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 311
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$900(Lcom/youku/gamecenter/player/GameVideoPlayer;)I

    move-result v0

    .line 312
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 313
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->seekTo(I)V

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$300(Lcom/youku/gamecenter/player/GameVideoPlayer;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$400(Lcom/youku/gamecenter/player/GameVideoPlayer;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 316
    const-string v1, "VideoTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===GameVideoPlayer mVideoWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v3}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$300(Lcom/youku/gamecenter/player/GameVideoPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVideoHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v3}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$400(Lcom/youku/gamecenter/player/GameVideoPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1000(Lcom/youku/gamecenter/player/GameVideoPlayer;)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 323
    const-string v1, "VideoTest"

    const-string v2, "(mTargetState == STATE_PLAYING),GameVideoPlayer start()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->start()V

    .line 325
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 326
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show()V

    .line 344
    :cond_3
    :goto_0
    return-void

    .line 328
    :cond_4
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 330
    :cond_5
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show(I)V

    goto :goto_0

    .line 339
    :cond_6
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1000(Lcom/youku/gamecenter/player/GameVideoPlayer;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 340
    const-string v1, "VideoTest"

    const-string v2, "(mTargetState == STATE_PLAYING)2,GameVideoPlayer start()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->start()V

    goto :goto_0
.end method
