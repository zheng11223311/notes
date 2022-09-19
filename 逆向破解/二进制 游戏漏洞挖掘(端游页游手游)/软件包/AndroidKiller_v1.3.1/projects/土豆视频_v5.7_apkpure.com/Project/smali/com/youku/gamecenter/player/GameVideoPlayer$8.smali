.class Lcom/youku/gamecenter/player/GameVideoPlayer$8;
.super Ljava/lang/Object;
.source "GameVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/player/GameVideoPlayer;->openVideo()V
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
    .line 442
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 446
    :try_start_0
    const-string v1, "VideoTest"

    const-string v2, "===mHandler post runnable==="

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v1, "VideoTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runnable\u7ebf\u7a0b\u7684id \uff1a "

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

    .line 448
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1302(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 449
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1400(Lcom/youku/gamecenter/player/GameVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1500(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 451
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 452
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 453
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 457
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 476
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "VideoTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v3}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1400(Lcom/youku/gamecenter/player/GameVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1, v6}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 461
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1, v6}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1002(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 462
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1600(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2, v7, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 464
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 465
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "VideoTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v3}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1400(Lcom/youku/gamecenter/player/GameVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1, v6}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 467
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1, v6}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1002(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 468
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1600(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2, v7, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 470
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 471
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "VideoTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v3}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1400(Lcom/youku/gamecenter/player/GameVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1, v6}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 473
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1, v6}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1002(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I

    .line 474
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$1600(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer$8;->this$0:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-static {v2}, Lcom/youku/gamecenter/player/GameVideoPlayer;->access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2, v7, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method
