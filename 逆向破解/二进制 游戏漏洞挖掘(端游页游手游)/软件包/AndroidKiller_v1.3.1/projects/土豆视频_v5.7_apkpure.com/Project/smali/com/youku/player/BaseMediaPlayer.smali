.class public Lcom/youku/player/BaseMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "BaseMediaPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;,
        Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;,
        Lcom/youku/player/BaseMediaPlayer$HEARTINTERVAL;,
        Lcom/youku/player/BaseMediaPlayer$MESSAGE;,
        Lcom/youku/player/BaseMediaPlayer$STATE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_HANDLER:Ljava/lang/String; = "BaseMediaPlayer_Handler"

.field protected static volatile mHandler:Landroid/os/Handler;

.field protected static mediaPlayer:Lcom/youku/player/BaseMediaPlayer;


# instance fields
.field private cancelQuitLooper:Z

.field error:Z

.field private heartBeat:I

.field private internalOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private internalOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private internalOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field protected internalPrepared:Z

.field private interval:I

.field protected lastMoniterdPostion:I

.field private looperQuited:Z

.field private mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

.field public mCurrentPlayer:Landroid/media/MediaPlayer;

.field protected mCurrentPosition:I

.field protected mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

.field protected mDefaultPlayerState:Lcom/youku/player/BaseMediaPlayer$STATE;

.field private mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

.field private mMidAdUrl:Ljava/lang/String;

.field private mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

.field private mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

.field private mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

.field protected mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

.field private mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

.field private mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

.field private mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

.field private mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

.field private mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

.field private mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnUplayerPreparedListener:Lcom/youku/uplayer/OnUplayerPreparedListener;

.field private mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field protected mPlayHeartListener:Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;

.field protected mSeekWhenPrepared:I

.field private mSeekWhenSeekComplete:I

.field public mSegPlayer1:Landroid/media/MediaPlayer;

.field protected mSegPlayer1State:Lcom/youku/player/BaseMediaPlayer$STATE;

.field public mSegPlayer2:Landroid/media/MediaPlayer;

.field protected mSegPlayer2State:Lcom/youku/player/BaseMediaPlayer$STATE;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mTargetState:Lcom/youku/player/BaseMediaPlayer$STATE;

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field protected onErrorCount:I

.field onSwitch:I

.field protected onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

.field private onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

.field private releasing:Z

.field protected reprepareCount:I

.field protected timeout:I

.field public videoInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    .line 468
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/player/BaseMediaPlayer;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 55
    iput-object v2, p0, Lcom/youku/player/BaseMediaPlayer;->mMidAdUrl:Ljava/lang/String;

    .line 498
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->lastMoniterdPostion:I

    .line 500
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    .line 502
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    .line 504
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->heartBeat:I

    .line 506
    const/16 v0, 0x3c

    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->interval:I

    .line 508
    new-instance v0, Lcom/youku/player/BaseMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/youku/player/BaseMediaPlayer$2;-><init>(Lcom/youku/player/BaseMediaPlayer;)V

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 530
    new-instance v0, Lcom/youku/player/BaseMediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/youku/player/BaseMediaPlayer$3;-><init>(Lcom/youku/player/BaseMediaPlayer;)V

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 545
    new-instance v0, Lcom/youku/player/BaseMediaPlayer$4;

    invoke-direct {v0, p0}, Lcom/youku/player/BaseMediaPlayer$4;-><init>(Lcom/youku/player/BaseMediaPlayer;)V

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 565
    iput-boolean v1, p0, Lcom/youku/player/BaseMediaPlayer;->error:Z

    .line 568
    iput-object v2, p0, Lcom/youku/player/BaseMediaPlayer;->mSegPlayer1:Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/youku/player/BaseMediaPlayer;->mSegPlayer2:Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 647
    iput-boolean v1, p0, Lcom/youku/player/BaseMediaPlayer;->internalPrepared:Z

    .line 649
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I

    .line 651
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenSeekComplete:I

    .line 653
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoHeight:I

    .line 655
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoWidth:I

    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->looperQuited:Z

    iput-boolean v1, p0, Lcom/youku/player/BaseMediaPlayer;->releasing:Z

    iput-boolean v1, p0, Lcom/youku/player/BaseMediaPlayer;->cancelQuitLooper:Z

    .line 963
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->reprepareCount:I

    .line 965
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->onErrorCount:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/BaseMediaPlayer;Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;
    .param p1, "x1"    # Landroid/media/MediaPlayer;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/youku/player/BaseMediaPlayer;->fireError(Landroid/media/MediaPlayer;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/BaseMediaPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mMidAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/player/BaseMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mMidAdUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/BaseMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/BaseMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenSeekComplete:I

    return v0
.end method

.method static synthetic access$402(Lcom/youku/player/BaseMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenSeekComplete:I

    return p1
.end method

.method static synthetic access$500(Lcom/youku/player/BaseMediaPlayer;)Lcom/youku/uplayer/OnUplayerPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnUplayerPreparedListener:Lcom/youku/uplayer/OnUplayerPreparedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/BaseMediaPlayer;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/player/BaseMediaPlayer;->interalHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/player/BaseMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/BaseMediaPlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/BaseMediaPlayer;->looperPrepared()V

    return-void
.end method

.method private fireError(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I

    .prologue
    .line 562
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/player/BaseMediaPlayer;->fireError(Landroid/media/MediaPlayer;II)V

    .line 563
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youku/player/BaseMediaPlayer;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/youku/player/BaseMediaPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/youku/player/BaseMediaPlayer;

    invoke-direct {v0}, Lcom/youku/player/BaseMediaPlayer;-><init>()V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    .line 61
    :cond_0
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private interalHandleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 351
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 378
    :goto_0
    :pswitch_0
    return-void

    .line 353
    :pswitch_1
    invoke-direct {p0}, Lcom/youku/player/BaseMediaPlayer;->internalStart()V

    goto :goto_0

    .line 356
    :pswitch_2
    invoke-direct {p0}, Lcom/youku/player/BaseMediaPlayer;->moniter()V

    goto :goto_0

    .line 359
    :pswitch_3
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->quitLooper()V

    goto :goto_0

    .line 362
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/youku/player/BaseMediaPlayer;->internalSeekTo(I)V

    goto :goto_0

    .line 365
    :pswitch_5
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->internalPause()V

    goto :goto_0

    .line 369
    :pswitch_6
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/player/BaseMediaPlayer;->internalSwitchDataSource(Ljava/lang/String;)I

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private internalStart()V
    .locals 2

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalPrepared:Z

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->internalPrepare()V

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v0, v1, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->play()V

    goto :goto_0

    .line 583
    :cond_1
    sget-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mTargetState:Lcom/youku/player/BaseMediaPlayer$STATE;

    goto :goto_0
.end method

.method private internalSwitchDataSource(Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 1227
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v1, v1, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 1232
    :goto_0
    return v1

    .line 1230
    :cond_1
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v1, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1, p1}, Lcom/youku/uplayer/MediaPlayerProxy;->switchDataSource(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 1232
    goto :goto_0
.end method

.method private declared-synchronized looperPrepared()V
    .locals 1

    .prologue
    .line 937
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->looperQuited:Z

    .line 938
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    monitor-exit p0

    return-void

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private moniter()V
    .locals 9

    .prologue
    const/16 v2, 0x14

    const/4 v8, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 381
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->heartBeat:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->heartBeat:I

    .line 382
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->interval:I

    .line 386
    :cond_0
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->heartBeat:I

    iget v3, p0, Lcom/youku/player/BaseMediaPlayer;->interval:I

    if-lt v1, v3, :cond_2

    .line 387
    iput v8, p0, Lcom/youku/player/BaseMediaPlayer;->heartBeat:I

    .line 388
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mPlayHeartListener:Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v1, :cond_8

    .line 390
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mPlayHeartListener:Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;

    invoke-interface {v1}, Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;->onPlayHeartTwentyInterval()V

    .line 394
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->getCurrentPosition()I

    move-result v1

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->addIntervalHistory(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 401
    :cond_2
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCurrentPositionUpdate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baseproject/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isNeedLoadedNotify()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_3
    sget-boolean v1, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget v1, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 404
    :cond_5
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 405
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 459
    :cond_6
    :goto_2
    return-void

    .line 383
    :cond_7
    const/16 v1, 0x3c

    goto/16 :goto_0

    .line 392
    :cond_8
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mPlayHeartListener:Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;

    invoke-interface {v1}, Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;->onPlayHeartSixtyInterval()V

    goto/16 :goto_1

    .line 408
    :cond_9
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v3, :cond_a

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mTargetState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v3, :cond_b

    .line 410
    :cond_a
    iput v8, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    .line 411
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->notifyLoaded()V

    .line 412
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 413
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 417
    :cond_b
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v3, :cond_c

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v3, :cond_d

    .line 418
    :cond_c
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->getRealPosition()I

    move-result v1

    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v3, :cond_e

    .line 424
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_e

    .line 425
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v3, :cond_10

    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    iget v3, p0, Lcom/youku/player/BaseMediaPlayer;->lastMoniterdPostion:I

    if-le v1, v3, :cond_10

    .line 431
    iput v8, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    .line 432
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->notifyLoaded()V

    .line 434
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v2, :cond_f

    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    iget v2, p0, Lcom/youku/player/BaseMediaPlayer;->lastMoniterdPostion:I

    sub-int/2addr v1, v2

    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_f

    .line 436
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    if-eqz v1, :cond_f

    .line 437
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    iget v2, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/youku/uplayer/OnCurrentPositionUpdateListener;->onCurrentPositionUpdate(I)V

    .line 455
    :cond_f
    :goto_4
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->lastMoniterdPostion:I

    .line 456
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 457
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 441
    :cond_10
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    .line 442
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_11

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v3, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v3, :cond_11

    .line 443
    invoke-direct {p0}, Lcom/youku/player/BaseMediaPlayer;->notifyChangeVideoQuality()V

    .line 446
    :cond_11
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    if-lt v1, v2, :cond_12

    .line 447
    invoke-direct {p0}, Lcom/youku/player/BaseMediaPlayer;->notifyTimeOut()V

    goto/16 :goto_2

    .line 451
    :cond_12
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    if-lez v1, :cond_f

    .line 452
    invoke-direct {p0}, Lcom/youku/player/BaseMediaPlayer;->notifyLoading()V

    goto :goto_4
.end method

.method private notifyChangeVideoQuality()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

    invoke-interface {v0}, Lcom/youku/uplayer/OnTimeoutListener;->onNotifyChangeVideoQuality()V

    .line 464
    :cond_0
    return-void
.end method

.method private notifyLoading()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    invoke-interface {v0}, Lcom/youku/uplayer/OnLoadingStatusListener;->onStartLoading()V

    .line 900
    :cond_0
    return-void
.end method

.method private notifyTimeOut()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

    invoke-interface {v0}, Lcom/youku/uplayer/OnTimeoutListener;->onTimeOut()V

    .line 905
    :cond_0
    return-void
.end method

.method private declared-synchronized prepareLooper()V
    .locals 4

    .prologue
    .line 908
    monitor-enter p0

    :try_start_0
    const-string v1, "BaseMediaPlayer_Handler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareLooper releasing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/youku/player/BaseMediaPlayer;->releasing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  looperQuited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/youku/player/BaseMediaPlayer;->looperQuited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-boolean v1, p0, Lcom/youku/player/BaseMediaPlayer;->releasing:Z

    if-eqz v1, :cond_1

    .line 910
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/player/BaseMediaPlayer;->cancelQuitLooper:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 912
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/youku/player/BaseMediaPlayer;->looperQuited:Z

    if-eqz v1, :cond_0

    .line 913
    new-instance v1, Lcom/youku/player/BaseMediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/youku/player/BaseMediaPlayer$5;-><init>(Lcom/youku/player/BaseMediaPlayer;)V

    invoke-virtual {v1}, Lcom/youku/player/BaseMediaPlayer$5;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 908
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public changeVideoSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/MediaPlayerProxy;->changeVideoSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 991
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 992
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 993
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 994
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 995
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 996
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

    .line 997
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    .line 1000
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1001
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    .line 1002
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    .line 1003
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    .line 1004
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    .line 1005
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .line 1006
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .line 1007
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 1008
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .line 1009
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    .line 1010
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mPlayHeartListener:Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;

    .line 1011
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .line 1012
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .line 1013
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    .line 1014
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnUplayerPreparedListener:Lcom/youku/uplayer/OnUplayerPreparedListener;

    .line 1015
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    .line 1016
    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    .line 1017
    return-void
.end method

.method public enableVoice(I)V
    .locals 1
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/MediaPlayerProxy;->enableVoice(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected fireError(Landroid/media/MediaPlayer;II)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 558
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->error:Z

    .line 559
    return-void
.end method

.method public getAdvDuration()I
    .locals 4

    .prologue
    .line 1103
    const/4 v1, 0x0

    .line 1104
    .local v1, "duration":I
    iget-object v3, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-nez v3, :cond_1

    :cond_0
    move v3, v1

    .line 1109
    :goto_0
    return v3

    .line 1106
    :cond_1
    iget-object v3, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v3, v3, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 1107
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    iget v3, v0, Lcom/youku/player/goplay/AdvInfo;->AL:I

    add-int/2addr v1, v3

    .line 1108
    goto :goto_1

    .line 1109
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_2
    mul-int/lit16 v3, v1, 0x3e8

    goto :goto_0
.end method

.method protected getCurrentPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 671
    :goto_0
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    goto :goto_0
.end method

.method protected getDataSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    const-string v0, ""

    .line 228
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    sget v1, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    sget v1, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getFinnalUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 756
    :goto_0
    return v0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    goto :goto_0

    .line 756
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRealPosition()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 129
    :goto_0
    return v1

    .line 126
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getTimeOut()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1034
    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoOrientation()I
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->getVideoOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public getVoiceStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return v1

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->getVoiceStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected internalPause()V
    .locals 1

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 213
    sget-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected internalPrepare()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;->onSmall(Landroid/view/SurfaceHolder;)V

    .line 142
    :cond_0
    sget-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 143
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->play()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalPrepared:Z

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected internalRelease()V
    .locals 2

    .prologue
    .line 973
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I

    .line 974
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mDefaultPlayerState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 975
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 976
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 978
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected internalSeekTo(I)V
    .locals 3
    .param p1, "msec"    # I

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v2, :cond_2

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 98
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 99
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mDefaultPlayerState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v2, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->play()V

    .line 102
    iput p1, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v2, :cond_4

    .line 104
    iput p1, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I

    goto :goto_0

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 107
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 108
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mDefaultPlayerState:Lcom/youku/player/BaseMediaPlayer$STATE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isListenerInit()Z
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPause()Z
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 763
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreparing()Z
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatePlay()Z
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingUMediaplayer()Z
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->isUsingUMediaplayer()Z

    move-result v0

    .line 1166
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyLoaded()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    invoke-interface {v0}, Lcom/youku/uplayer/OnLoadingStatusListener;->onEndLoading()V

    .line 895
    :cond_0
    return-void
.end method

.method protected onPlayError()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v2, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 253
    :cond_0
    return-void
.end method

.method protected onPlayerError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/youku/player/BaseMediaPlayer;->onErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->onErrorCount:I

    .line 193
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, p2, p3}, Lcom/youku/player/BaseMediaPlayer;->fireError(Landroid/media/MediaPlayer;II)V

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 158
    sget-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARED:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 159
    iget v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I

    if-lez v0, :cond_2

    .line 161
    sget v0, Lcom/youku/player/goplay/Profile;->playerType:I

    sget v1, Lcom/youku/player/goplay/Profile;->PLAYER_OUR:I

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 164
    :cond_0
    sget-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 165
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mTargetState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v0, v1, :cond_3

    .line 169
    sget-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mTargetState:Lcom/youku/player/BaseMediaPlayer$STATE;

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->play()V

    .line 173
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isNeedLoadedNotify()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    invoke-interface {v0}, Lcom/youku/uplayer/OnRealVideoStartListener;->onRealVideoStart()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 691
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 692
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    :cond_0
    return-void
.end method

.method protected play()V
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v2, :cond_0

    .line 645
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARED:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    if-ne v1, v2, :cond_3

    .line 626
    :cond_1
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 629
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->playCallback()V

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/youku/player/BaseMediaPlayer;->fireError(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 636
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

    iput-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentState:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 638
    :try_start_1
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->preparePlayer()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 639
    :catch_1
    move-exception v0

    .line 640
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->onPlayError()V

    goto :goto_1
.end method

.method protected playCallback()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public playMidADConfirm(II)V
    .locals 1
    .param p1, "videoTime"    # I
    .param p2, "adTime"    # I

    .prologue
    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/MediaPlayerProxy;->playMidADConfirm(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public prepareMidAD()V
    .locals 1

    .prologue
    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->prepareMidAD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected preparePlayer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 261
    iput v2, p0, Lcom/youku/player/BaseMediaPlayer;->mSeekWhenPrepared:I

    .line 262
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v2, v2}, Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;->onLarge(Landroid/view/SurfaceHolder;II)V

    .line 264
    :cond_0
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {v0}, Lcom/youku/uplayer/MediaPlayerProxy;-><init>()V

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 265
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/youku/player/BaseMediaPlayer;->setMediaListener(Landroid/media/MediaPlayer;)V

    .line 266
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/player/BaseMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/youku/player/BaseMediaPlayer$1;-><init>(Lcom/youku/player/BaseMediaPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    return-void
.end method

.method protected declared-synchronized quitLooper()V
    .locals 3

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseMediaPlayer_Handler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quitLooper, cancelQuitLooper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/player/BaseMediaPlayer;->cancelQuitLooper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->cancelQuitLooper:Z

    if-eqz v0, :cond_0

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->cancelQuitLooper:Z

    .line 945
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->releasing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :goto_0
    monitor-exit p0

    return-void

    .line 949
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalPrepared:Z

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    .line 951
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 952
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 953
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 954
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->looperQuited:Z

    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->releasing:Z

    .line 957
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/player/BaseMediaPlayer;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 713
    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalPrepared:Z

    .line 714
    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->error:Z

    .line 715
    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPosition:I

    .line 716
    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->lastMoniterdPostion:I

    .line 717
    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->timeout:I

    .line 718
    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->heartBeat:I

    .line 719
    iget-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->releasing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->looperQuited:Z

    if-nez v0, :cond_0

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/BaseMediaPlayer;->releasing:Z

    .line 721
    invoke-virtual {p0}, Lcom/youku/player/BaseMediaPlayer;->internalRelease()V

    .line 723
    :cond_0
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 724
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 725
    :cond_1
    return-void
.end method

.method public resetSurfaceHolder()V
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 988
    return-void
.end method

.method public screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
    .locals 11
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "outFmt"    # I
    .param p6, "logoPath"    # Ljava/lang/String;
    .param p7, "logoWidth"    # I
    .param p8, "logoHeight"    # I
    .param p9, "logoLeft"    # I
    .param p10, "logoTop"    # I

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/youku/uplayer/MediaPlayerProxy;->screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I

    move-result v0

    .line 1314
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    const/4 v2, 0x3

    .line 679
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 687
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-static {}, Lcom/youku/player/Track;->onSeek()V

    .line 682
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 685
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 686
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 768
    return-void
.end method

.method public setEnhanceMode(ZF)V
    .locals 1
    .param p1, "isEnhance"    # Z
    .param p2, "percent"    # F

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/MediaPlayerProxy;->setEnhanceMode(ZF)V

    .line 1281
    :cond_0
    return-void
.end method

.method public setMediaListener(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 588
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 589
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 590
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 591
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 592
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->internalOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 593
    instance-of v0, p1, Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 594
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V

    move-object v0, p1

    .line 595
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnMidADPlayListener(Lcom/youku/uplayer/OnMidADPlayListener;)V

    move-object v0, p1

    .line 596
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V

    move-object v0, p1

    .line 598
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V

    move-object v0, p1

    .line 600
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnNetworkSpeedPerMinute(Lcom/youku/uplayer/OnNetworkSpeedPerMinute;)V

    move-object v0, p1

    .line 602
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnBufferPercentUpdateListener(Lcom/youku/uplayer/OnBufferPercentUpdateListener;)V

    move-object v0, p1

    .line 604
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V

    move-object v0, p1

    .line 606
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnLodingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V

    move-object v0, p1

    .line 608
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V

    move-object v0, p1

    .line 610
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V

    move-object v0, p1

    .line 612
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnTimeoutListener(Lcom/youku/uplayer/OnTimeoutListener;)V

    move-object v0, p1

    .line 613
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V

    move-object v0, p1

    .line 614
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnConnectDelayListener(Lcom/youku/uplayer/OnConnectDelayListener;)V

    move-object v0, p1

    .line 615
    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnQualityChangeListener(Lcom/youku/uplayer/OnQualityChangeListener;)V

    .line 616
    check-cast p1, Lcom/youku/uplayer/MediaPlayerProxy;

    .end local p1    # "player":Landroid/media/MediaPlayer;
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    invoke-virtual {p1, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnHttp302DelayListener(Lcom/youku/uplayer/OnHttp302DelayListener;)V

    .line 618
    :cond_0
    return-void
.end method

.method public setMidADDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/MediaPlayerProxy;->setMidADDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMidAdUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mMidAdUrl:Ljava/lang/String;

    .line 1245
    :cond_0
    return-void
.end method

.method public setNightMode(FF)V
    .locals 1
    .param p1, "lumRatio"    # F
    .param p2, "colorRatio"    # F

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/MediaPlayerProxy;->setNightMode(FF)V

    .line 1292
    :cond_0
    return-void
.end method

.method public setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V
    .locals 0
    .param p1, "mOnADCountListener"    # Lcom/youku/uplayer/OnADCountListener;

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    .line 1073
    return-void
.end method

.method public setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V
    .locals 0
    .param p1, "mADPlayListener"    # Lcom/youku/uplayer/OnADPlayListener;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    .line 1055
    return-void
.end method

.method public setOnBufferPercentUpdateListener(Lcom/youku/uplayer/OnBufferPercentUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .line 1086
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 795
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 781
    return-void
.end method

.method public setOnConnectDelayListener(Lcom/youku/uplayer/OnConnectDelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnConnectDelayListener;

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    .line 1118
    return-void
.end method

.method public setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V
    .locals 0
    .param p1, "onCurrentPositionUpdateListener"    # Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .line 882
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 840
    return-void
.end method

.method public setOnHttp302DelayListener(Lcom/youku/uplayer/OnHttp302DelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHttp302DelayListener;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    .line 1126
    return-void
.end method

.method public setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .line 1114
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V
    .locals 0
    .param p1, "mOnLodingStatusListener"    # Lcom/youku/uplayer/OnLoadingStatusListener;

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnLoadingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 1069
    return-void
.end method

.method public setOnMidADPlayListener(Lcom/youku/uplayer/OnMidADPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnMidADPlayListener;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    .line 1059
    return-void
.end method

.method public setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V
    .locals 0
    .param p1, "mOnNetworkSpeedListener"    # Lcom/youku/uplayer/OnNetworkSpeedListener;

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    .line 1078
    return-void
.end method

.method public setOnNetworkSpeedPerMinute(Lcom/youku/uplayer/OnNetworkSpeedPerMinute;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .line 1082
    return-void
.end method

.method public setOnPlayHeartListener(Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;)V
    .locals 0
    .param p1, "onPlayheartListener"    # Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mPlayHeartListener:Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;

    .line 875
    return-void
.end method

.method public setOnQualityChangeListener(Lcom/youku/uplayer/OnQualityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnQualityChangeListener;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    .line 1122
    return-void
.end method

.method public setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V
    .locals 0
    .param p1, "mOnRealVideoStartListener"    # Lcom/youku/uplayer/OnRealVideoStartListener;

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    .line 1091
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 810
    return-void
.end method

.method public setOnSwitchListener(Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;)V
    .locals 0
    .param p1, "onSwitchListener"    # Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    .line 890
    return-void
.end method

.method public setOnTimeOutListener(Lcom/youku/uplayer/OnTimeoutListener;)V
    .locals 0
    .param p1, "onTimeOutListener"    # Lcom/youku/uplayer/OnTimeoutListener;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->onTimeOutListener:Lcom/youku/uplayer/OnTimeoutListener;

    .line 886
    return-void
.end method

.method public setOnUplayerPreparedListener(Lcom/youku/uplayer/OnUplayerPreparedListener;)V
    .locals 0
    .param p1, "onUplayerPreparedListener"    # Lcom/youku/uplayer/OnUplayerPreparedListener;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnUplayerPreparedListener:Lcom/youku/uplayer/OnUplayerPreparedListener;

    .line 1100
    return-void
.end method

.method public setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .line 1096
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 825
    return-void
.end method

.method public setPlayRate(I)V
    .locals 1
    .param p1, "rate"    # I

    .prologue
    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/MediaPlayerProxy;->setPlayRate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeout(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "sec"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/MediaPlayerProxy;->setTimeout(II)V

    .line 661
    :cond_0
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/MediaPlayerProxy;->setVideoOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public skipCurPreAd()V
    .locals 1

    .prologue
    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/MediaPlayerProxy;

    if-nez v0, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    check-cast v0, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->skipCurPreAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 697
    invoke-direct {p0}, Lcom/youku/player/BaseMediaPlayer;->prepareLooper()V

    .line 698
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 700
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 703
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 707
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 708
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 709
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 473
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 476
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->onSwitchListener:Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;

    invoke-interface {v0, p3, p4}, Lcom/youku/player/BaseMediaPlayer$OnSwitchListener;->onResizeCurrent(II)V

    .line 479
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 483
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 485
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 487
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 491
    sget-object v0, Lcom/youku/player/BaseMediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 493
    return-void
.end method

.method public switchDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x7

    .line 1216
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1218
    :cond_0
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1219
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1220
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1221
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1222
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateWidthAndHeight(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 738
    iput p2, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoHeight:I

    .line 739
    iput p1, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoWidth:I

    .line 740
    return-void
.end method

.method public updateWidthAndHeightFromNative()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoHeight:I

    .line 745
    iget-object v0, p0, Lcom/youku/player/BaseMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/youku/player/BaseMediaPlayer;->mVideoWidth:I

    .line 747
    :cond_0
    return-void
.end method
