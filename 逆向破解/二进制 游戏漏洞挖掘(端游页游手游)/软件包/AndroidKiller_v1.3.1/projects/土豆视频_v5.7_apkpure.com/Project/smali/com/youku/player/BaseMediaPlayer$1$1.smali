.class Lcom/youku/player/BaseMediaPlayer$1$1;
.super Ljava/lang/Object;
.source "BaseMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/BaseMediaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/BaseMediaPlayer$1;

.field final synthetic val$dataSource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/player/BaseMediaPlayer$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iput-object p2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->val$dataSource:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 284
    :try_start_0
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8bbe\u7f6e\u64ad\u653e\u5730\u5740-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->val$dataSource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->val$dataSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v3, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v3, v3, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v3, v3, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    const/16 v4, 0x3ee

    invoke-static {v2, v3, v4}, Lcom/youku/player/BaseMediaPlayer;->access$000(Lcom/youku/player/BaseMediaPlayer;Landroid/media/MediaPlayer;I)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v2, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v5, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v5, :cond_4

    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Lcom/youku/uplayer/MediaPlayerProxy;->setHLS(Z)V

    .line 294
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v2, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v5, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v5, :cond_5

    move v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Lcom/youku/uplayer/MediaPlayerProxy;->setDRM(Z)V

    .line 297
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v2, Lcom/youku/uplayer/MediaPlayerProxy;

    sget-object v5, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/player/goplay/Profile;->useHardwareDecode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v5, :cond_6

    :cond_2
    :goto_3
    invoke-virtual {v2, v3}, Lcom/youku/uplayer/MediaPlayerProxy;->setHardwareDecode(Z)V

    .line 301
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMidADDataSource"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v4, v4, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v4}, Lcom/youku/player/BaseMediaPlayer;->access$100(Lcom/youku/player/BaseMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v2}, Lcom/youku/player/BaseMediaPlayer;->access$100(Lcom/youku/player/BaseMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 303
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v3, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v3, v3, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v3}, Lcom/youku/player/BaseMediaPlayer;->access$100(Lcom/youku/player/BaseMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/player/BaseMediaPlayer;->setMidADDataSource(Ljava/lang/String;)V

    .line 305
    :cond_3
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->val$dataSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 306
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 307
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "release message in handler, return"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/youku/uplayer/ReleaseTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lcom/youku/uplayer/ReleaseTimeoutException;
    invoke-static {}, Lcom/youku/player/BaseMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    new-instance v1, Landroid/util/LogPrinter;

    const-string v2, "BaseMediaPlayer_Handler"

    invoke-direct {v1, v7, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 323
    .local v1, "logPrinter":Landroid/util/LogPrinter;
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 324
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const-string v3, "BaseMediaPlayer_Handler"

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 325
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 326
    invoke-static {}, Lcom/youku/player/BaseMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "release message in handler, return"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v0    # "e":Lcom/youku/uplayer/ReleaseTimeoutException;
    .end local v1    # "logPrinter":Landroid/util/LogPrinter;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    goto/16 :goto_1

    .line 294
    :cond_5
    iget-object v5, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v5

    goto/16 :goto_2

    .line 297
    :cond_6
    iget-object v5, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v5, v5, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v5, :cond_2

    :cond_7
    move v3, v4

    goto/16 :goto_3

    .line 310
    :cond_8
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v3, v3, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v3, v3, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 311
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 313
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 314
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 315
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-static {v2}, Lcom/youku/player/BaseMediaPlayer;->access$100(Lcom/youku/player/BaseMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 316
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->prepareMidAD()V

    .line 317
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/player/BaseMediaPlayer;->access$102(Lcom/youku/player/BaseMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    :cond_9
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v3, v2, Lcom/youku/player/BaseMediaPlayer;->mDefaultPlayerState:Lcom/youku/player/BaseMediaPlayer$STATE;
    :try_end_1
    .catch Lcom/youku/uplayer/ReleaseTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 331
    :catch_1
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/youku/player/BaseMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->onPlayError()V

    goto/16 :goto_0

    .line 329
    .local v0, "e":Lcom/youku/uplayer/ReleaseTimeoutException;
    .restart local v1    # "logPrinter":Landroid/util/LogPrinter;
    :cond_a
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1$1;->this$1:Lcom/youku/player/BaseMediaPlayer$1;

    iget-object v2, v2, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->onPlayError()V

    goto/16 :goto_0
.end method
