.class public Lcom/youku/uplayer/MediaPlayerProxy;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerProxy.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/uplayer/MediaPlayerProxy$MPS;,
        Lcom/youku/uplayer/MediaPlayerProxy$MPAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerProxy"

.field public static freq:I

.field private static isCpuinfoReaded:Z

.field private static isUplayerSupported:Z

.field private static sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;


# instance fields
.field private isDRM:Z

.field private isHLS:Z

.field private isReleased:Z

.field private mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

.field private mAudioStreamType:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentOrientation:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mInnerDisplaySet:Z

.field private mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

.field private mMPLastState:I

.field private mMPState:I

.field private mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

.field private mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

.field private mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

.field private mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

.field private mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

.field private mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

.field private mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

.field private mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

.field private mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

.field private mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

.field private mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

.field private mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

.field private mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

.field private mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

.field private mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOuterPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mPath:Ljava/lang/String;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private useHardwareDecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/uplayer/MediaPlayerProxy;->sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    .line 838
    sput-boolean v1, Lcom/youku/uplayer/MediaPlayerProxy;->isCpuinfoReaded:Z

    .line 840
    sput-boolean v1, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 790
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    .line 74
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    .line 75
    iput-boolean v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerDisplaySet:Z

    .line 76
    iput v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    .line 77
    iput v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 78
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPath:Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mAudioStreamType:I

    .line 85
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 86
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 87
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 88
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 89
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 90
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 91
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 314
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$3;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$3;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 325
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$4;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$4;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 337
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$5;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$5;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 351
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$6;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$6;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 362
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$7;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$7;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 372
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$8;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$8;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 384
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$9;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$9;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 919
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$10;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$10;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    .line 933
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$11;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$11;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    .line 982
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$12;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$12;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .line 991
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$13;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$13;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 1013
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$14;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$14;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    .line 1021
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$15;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$15;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    .line 1029
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$16;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$16;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .line 1036
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$17;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$17;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .line 1043
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$18;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$18;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    .line 1051
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$19;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$19;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .line 1059
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$20;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$20;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

    .line 1072
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$21;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$21;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .line 1085
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$22;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$22;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    .line 1097
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$23;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$23;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    .line 1105
    new-instance v0, Lcom/youku/uplayer/MediaPlayerProxy$24;

    invoke-direct {v0, p0}, Lcom/youku/uplayer/MediaPlayerProxy$24;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    iput-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    .line 791
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    .line 792
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    .line 793
    iput-boolean v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerDisplaySet:Z

    .line 794
    iput-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPath:Ljava/lang/String;

    .line 796
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 798
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    const-string v0, "MediaPlayerProxy"

    const-string v1, "UPlayer is supported."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_0
    return-void

    .line 801
    :cond_0
    const-string v0, "MediaPlayerProxy"

    const-string v1, "UPlyaer may not be supported."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _prepare()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 497
    :try_start_0
    iget v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mAudioStreamType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 498
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setAudioStreamType(I)V

    .line 503
    :goto_0
    iget-boolean v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerDisplaySet:Z

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 507
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v1}, Lcom/youku/uplayer/OriginalMediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_1
    iput v5, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    .line 513
    return-void

    .line 500
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_1
.end method

.method private _prepareAsync()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 525
    :try_start_0
    iget v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mAudioStreamType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 526
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setAudioStreamType(I)V

    .line 531
    :goto_0
    iget-boolean v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerDisplaySet:Z

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 535
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v1}, Lcom/youku/uplayer/OriginalMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_1
    iput v5, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    .line 541
    return-void

    .line 528
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_1
.end method

.method private _release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 207
    :cond_0
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 208
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 209
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 210
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 211
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 212
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 213
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 214
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    .line 215
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    .line 216
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .line 217
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 218
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    .line 219
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    .line 220
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .line 221
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .line 222
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    .line 223
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .line 225
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 226
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 227
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 228
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 229
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 230
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 231
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 232
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .line 233
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    .line 234
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

    .line 235
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    .line 236
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    .line 237
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V

    .line 242
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V

    .line 243
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnLodingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V

    .line 244
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V

    .line 245
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V

    .line 246
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V

    .line 247
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V

    .line 248
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setmOnTimeoutListener(Lcom/youku/uplayer/OnTimeoutListener;)V

    .line 249
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V

    .line 251
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->release()V

    .line 252
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/youku/uplayer/UMediaPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 255
    :cond_1
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    .line 258
    :cond_2
    iput-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/youku/uplayer/MediaPlayerProxy;)Lcom/youku/uplayer/OriginalMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/uplayer/MediaPlayerProxy;Lcom/youku/uplayer/OriginalMediaPlayer;)Lcom/youku/uplayer/OriginalMediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;
    .param p1, "x1"    # Lcom/youku/uplayer/OriginalMediaPlayer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/uplayer/MediaPlayerProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isDRM:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/uplayer/MediaPlayerProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/uplayer/MediaPlayerProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    return p1
.end method

.method static synthetic access$500(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/uplayer/MediaPlayerProxy;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/uplayer/MediaPlayerProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/MediaPlayerProxy;

    .prologue
    .line 28
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    return v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Landroid/view/SurfaceHolder;)Lcom/youku/uplayer/MediaPlayerProxy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 808
    :try_start_0
    new-instance v1, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {v1}, Lcom/youku/uplayer/MediaPlayerProxy;-><init>()V

    sput-object v1, Lcom/youku/uplayer/MediaPlayerProxy;->sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    .line 809
    if-eqz p2, :cond_0

    .line 810
    sget-object v1, Lcom/youku/uplayer/MediaPlayerProxy;->sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1, p2}, Lcom/youku/uplayer/MediaPlayerProxy;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 812
    :cond_0
    sget-object v1, Lcom/youku/uplayer/MediaPlayerProxy;->sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1, p1}, Lcom/youku/uplayer/MediaPlayerProxy;->setDataSource(Ljava/lang/String;)V

    .line 813
    sget-object v1, Lcom/youku/uplayer/MediaPlayerProxy;->sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1}, Lcom/youku/uplayer/MediaPlayerProxy;->prepare()V

    .line 815
    sget-object v1, Lcom/youku/uplayer/MediaPlayerProxy;->sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 826
    :goto_0
    return-object v1

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "MediaPlayerProxy"

    const-string v2, "failed to create MediaPlayerProxy:"

    invoke-static {v1, v2, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 819
    :catch_1
    move-exception v0

    .line 820
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayerProxy"

    const-string v2, "failed to create MediaPlayerProxy:"

    invoke-static {v1, v2, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 822
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 823
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "MediaPlayerProxy"

    const-string v2, "failed to create MediaPlayerProxy:"

    invoke-static {v1, v2, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private createInnerPlayer()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Lcom/youku/uplayer/PlayerChooser;

    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/uplayer/PlayerChooser;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "pc":Lcom/youku/uplayer/PlayerChooser;
    new-instance v1, Lcom/youku/uplayer/MediaPlayerProxy$2;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/MediaPlayerProxy$2;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/PlayerChooser;->addAlternative(Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;)Lcom/youku/uplayer/PlayerChooser;

    move-result-object v1

    new-instance v2, Lcom/youku/uplayer/MediaPlayerProxy$1;

    invoke-direct {v2, p0}, Lcom/youku/uplayer/MediaPlayerProxy$1;-><init>(Lcom/youku/uplayer/MediaPlayerProxy;)V

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/PlayerChooser;->addAlternative(Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;)Lcom/youku/uplayer/PlayerChooser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/uplayer/PlayerChooser;->decide()V

    .line 168
    iget-boolean v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isReleased:Z

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 171
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 172
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 173
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 174
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 175
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 176
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 177
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V

    .line 178
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnMidADPlayListener(Lcom/youku/uplayer/OnMidADPlayListener;)V

    .line 179
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V

    .line 181
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnLodingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V

    .line 182
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V

    .line 183
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V

    .line 184
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnNetworkSpeedPerMinute(Lcom/youku/uplayer/OnNetworkSpeedPerMinute;)V

    .line 185
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnBufferPercentUpdateListener(Lcom/youku/uplayer/OnBufferPercentUpdateListener;)V

    .line 186
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V

    .line 187
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V

    .line 188
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setmOnTimeoutListener(Lcom/youku/uplayer/OnTimeoutListener;)V

    .line 189
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V

    .line 190
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnConnectDelayListener(Lcom/youku/uplayer/OnConnectDelayListener;)V

    .line 191
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnHttp302DelayListener(Lcom/youku/uplayer/OnHttp302DelayListener;)V

    .line 192
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setOnQualityChangeListener(Lcom/youku/uplayer/OnQualityChangeListener;)V

    goto/16 :goto_0
.end method

.method public static isHD2Supported()Z
    .locals 2

    .prologue
    .line 830
    sget v0, Lcom/youku/uplayer/MediaPlayerProxy;->freq:I

    const/16 v1, 0x4b0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUplayerSupported()Z
    .locals 16

    .prologue
    const/4 v15, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 843
    sget-boolean v12, Lcom/youku/uplayer/MediaPlayerProxy;->isCpuinfoReaded:Z

    if-eqz v12, :cond_0

    .line 844
    sget-boolean v11, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported:Z

    .line 916
    .local v0, "ARMV7A":Ljava/lang/String;
    .local v5, "hasNeon":Z
    :goto_0
    return v11

    .line 845
    .end local v0    # "ARMV7A":Ljava/lang/String;
    .end local v5    # "hasNeon":Z
    :cond_0
    sput-boolean v10, Lcom/youku/uplayer/MediaPlayerProxy;->isCpuinfoReaded:Z

    .line 846
    const-string v12, "MediaPlayerProxy"

    const-string v13, "--------------------------------------------"

    invoke-static {v12, v13}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v12, "MediaPlayerProxy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CPU_ABI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v12, "MediaPlayerProxy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CPU_ABI2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v0, "armeabi-v7a"

    .line 853
    .restart local v0    # "ARMV7A":Ljava/lang/String;
    const/4 v5, 0x0

    .line 854
    .restart local v5    # "hasNeon":Z
    sget-object v12, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "x86"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 855
    sput-boolean v10, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported:Z

    .line 856
    sget-boolean v11, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported:Z

    goto :goto_0

    .line 858
    :cond_1
    sget-object v12, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "armeabi-v7a"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 860
    .local v7, "isArmv7a":Z
    const/4 v4, 0x0

    .line 861
    .local v4, "freq":I
    const/4 v8, 0x0

    .line 864
    .local v8, "sdkVersion":I
    :try_start_0
    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 869
    :goto_1
    const/16 v12, 0x8

    if-ge v8, v12, :cond_2

    .line 870
    const-string v10, "MediaPlayerProxy"

    const-string v12, "Android version is less than 2.2, not supported by Uplayer!!"

    invoke-static {v10, v12}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    :catch_0
    move-exception v3

    .line 866
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    goto :goto_1

    .line 875
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v1, ""

    .line 877
    .local v1, "cpuInfo":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    const-string v13, "/proc/cpuinfo"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 879
    .local v2, "cpuinfoReader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "strLine":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 880
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 883
    const-string v12, "FEATURES"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 884
    const/16 v12, 0x3a

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 885
    .local v6, "idx":I
    if-eq v6, v15, :cond_3

    .line 886
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 887
    const-string v12, "NEON"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v15, :cond_4

    move v5, v10

    :goto_3
    goto :goto_2

    :cond_4
    move v5, v11

    goto :goto_3

    .line 892
    .end local v6    # "idx":I
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 893
    const/4 v2, 0x0

    .line 895
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    new-instance v12, Ljava/io/FileReader;

    const-string v13, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 897
    .restart local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 898
    if-eqz v9, :cond_6

    .line 899
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 900
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 901
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "cpu0 max frequency: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 904
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 910
    .end local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    .end local v9    # "strLine":Ljava/lang/String;
    :goto_4
    const-string v12, "MediaPlayerProxy"

    invoke-static {v12, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    add-int/lit16 v4, v4, 0x270f

    .line 913
    div-int/lit16 v4, v4, 0x3e8

    .line 914
    sput v4, Lcom/youku/uplayer/MediaPlayerProxy;->freq:I

    .line 915
    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    :goto_5
    sput-boolean v10, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported:Z

    .line 916
    sget-boolean v11, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported:Z

    goto/16 :goto_0

    .line 906
    :catch_1
    move-exception v3

    .line 907
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "MediaPlayerProxy"

    invoke-static {v12, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    move v10, v11

    .line 915
    goto :goto_5
.end method

.method public static supportH265()Z
    .locals 1

    .prologue
    .line 834
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isHD2Supported()Z

    move-result v0

    return v0
.end method

.method private verifyState(I)V
    .locals 7
    .param p1, "mCurrentAction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "illegal":Z
    sparse-switch p1, :sswitch_data_0

    .line 309
    :goto_0
    :sswitch_0
    if-eqz v0, :cond_10

    .line 310
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 265
    :sswitch_1
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-ne v3, v5, :cond_0

    move v0, v1

    .line 266
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 265
    goto :goto_1

    .line 268
    :sswitch_2
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v1, :cond_1

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    .line 269
    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    .line 268
    goto :goto_2

    .line 272
    :sswitch_3
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-ne v3, v5, :cond_3

    move v0, v1

    .line 273
    :goto_3
    goto :goto_0

    :cond_3
    move v0, v2

    .line 272
    goto :goto_3

    .line 275
    :sswitch_4
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-ne v3, v5, :cond_4

    move v0, v1

    .line 276
    :goto_4
    goto :goto_0

    :cond_4
    move v0, v2

    .line 275
    goto :goto_4

    .line 278
    :sswitch_5
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v1, :cond_5

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    :cond_5
    move v0, v1

    .line 282
    :goto_5
    goto :goto_0

    :cond_6
    move v0, v2

    .line 278
    goto :goto_5

    .line 285
    :sswitch_6
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v4, :cond_7

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v6, :cond_7

    move v0, v1

    .line 286
    :goto_6
    goto :goto_0

    :cond_7
    move v0, v2

    .line 285
    goto :goto_6

    .line 291
    :sswitch_7
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v1, :cond_8

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v6, :cond_8

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-ne v3, v5, :cond_9

    :cond_8
    move v0, v1

    .line 293
    :goto_7
    goto :goto_0

    :cond_9
    move v0, v2

    .line 291
    goto :goto_7

    .line 295
    :sswitch_8
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-ne v3, v5, :cond_a

    move v0, v1

    .line 296
    :goto_8
    goto :goto_0

    :cond_a
    move v0, v2

    .line 295
    goto :goto_8

    .line 298
    :sswitch_9
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v1, :cond_b

    move v0, v1

    .line 299
    :goto_9
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 298
    goto :goto_9

    .line 301
    :sswitch_a
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v1, :cond_c

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v4, :cond_c

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v6, :cond_c

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-ne v3, v5, :cond_d

    :cond_c
    move v0, v1

    .line 303
    :goto_a
    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 301
    goto :goto_a

    .line 305
    :sswitch_b
    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v1, :cond_e

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-eq v3, v4, :cond_e

    iget v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    if-ne v3, v5, :cond_f

    :cond_e
    move v0, v1

    :goto_b
    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto :goto_b

    .line 312
    :cond_10
    return-void

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_1
        0x23 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2d -> :sswitch_3
        0x32 -> :sswitch_4
        0x37 -> :sswitch_5
        0x3c -> :sswitch_6
        0x41 -> :sswitch_6
        0x46 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_7
        0x55 -> :sswitch_8
        0x5a -> :sswitch_9
        0x5f -> :sswitch_a
        0x64 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public changeVideoSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/OriginalMediaPlayer;->changeVideoSize(II)V

    goto :goto_0
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
    .line 442
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/OriginalMediaPlayer;->enableVoice(I)V

    .line 443
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 404
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 405
    iget v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 415
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 416
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 467
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 468
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoOrientation()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mCurrentOrientation:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 458
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 459
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getVoiceStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->getVoiceStatus()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-nez v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 479
    iget v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 482
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public isUsingUMediaplayer()Z
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_0

    .line 1193
    const/4 v0, 0x1

    .line 1197
    :goto_0
    return v0

    .line 1195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1197
    :cond_1
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 488
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 490
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->pause()V

    .line 491
    const/4 v0, 0x6

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 492
    return-void
.end method

.method public playMidADConfirm(II)V
    .locals 2
    .param p1, "videoTime"    # I
    .param p2, "adTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 702
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "mid ad start to play"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/UMediaPlayer;->playMidADConfirm(II)V

    .line 706
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 517
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 519
    invoke-direct {p0}, Lcom/youku/uplayer/MediaPlayerProxy;->_prepare()V

    .line 520
    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 545
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 547
    invoke-direct {p0}, Lcom/youku/uplayer/MediaPlayerProxy;->_prepareAsync()V

    .line 548
    return-void
.end method

.method public prepareMidAD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/UMediaPlayer;->prepareMidAD()V

    .line 699
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isReleased:Z

    .line 558
    invoke-direct {p0}, Lcom/youku/uplayer/MediaPlayerProxy;->_release()V

    .line 559
    const/16 v0, 0x8

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 561
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/uplayer/MediaPlayerProxy;->sPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    .line 562
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->reset()V

    .line 568
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 569
    return-void
.end method

.method public screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
    .locals 12
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
    .line 780
    const-string v1, "PlayFlow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screenShotOneFrame outPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , logoPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v1, v1, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v1, Lcom/youku/uplayer/UMediaPlayer;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/youku/uplayer/UMediaPlayer;->screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I

    move-result v1

    .line 785
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 573
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 578
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/OriginalMediaPlayer;->seekTo(I)V

    .line 579
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 581
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 584
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 585
    iget v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 586
    iput p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mAudioStreamType:I

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/OriginalMediaPlayer;->setAudioStreamType(I)V

    goto :goto_0
.end method

.method public setDRM(Z)V
    .locals 0
    .param p1, "isDRM"    # Z

    .prologue
    .line 1209
    iput-boolean p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isDRM:Z

    .line 1210
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v5, 0x9

    const/16 v2, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 610
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 612
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPath:Ljava/lang/String;

    .line 613
    invoke-direct {p0}, Lcom/youku/uplayer/MediaPlayerProxy;->createInnerPlayer()V

    .line 614
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_f

    .line 615
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v3

    .line 616
    .local v4, "sysVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 617
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v7

    .line 643
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isHLS:Z

    if-eqz v1, :cond_e

    :goto_1
    iget-boolean v5, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isHLS:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/youku/uplayer/UMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 649
    .end local v4    # "sysVersion":I
    :goto_2
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "useHardwareDecode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->useHardwareDecode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isHLS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isHLS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iput v6, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v6, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 652
    return-void

    .line 618
    .restart local v4    # "sysVersion":I
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 619
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v5

    goto :goto_0

    .line 620
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    .line 622
    :cond_3
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v2

    goto :goto_0

    .line 623
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 624
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x7

    aget v4, v0, v1

    goto :goto_0

    .line 625
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 626
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x6

    aget v4, v0, v1

    goto/16 :goto_0

    .line 627
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    .line 628
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x5

    aget v4, v0, v1

    goto/16 :goto_0

    .line 629
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_9

    .line 631
    :cond_8
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x4

    aget v4, v0, v1

    goto/16 :goto_0

    .line 632
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 635
    :cond_a
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x3

    aget v4, v0, v1

    goto/16 :goto_0

    .line 636
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v7, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_d

    .line 638
    :cond_c
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v6

    goto/16 :goto_0

    .line 639
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_0

    .line 640
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x1

    aget v4, v0, v1

    goto/16 :goto_0

    .line 643
    :cond_e
    iget-boolean v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->useHardwareDecode:Z

    goto/16 :goto_1

    .line 648
    .end local v4    # "sysVersion":I
    :cond_f
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/OriginalMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    .line 594
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "MediaPlayerProxy"

    const-string v1, "<********> mInnerPlayer.setDisplay(mHolder)"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/youku/uplayer/OriginalMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerDisplaySet:Z

    .line 606
    :cond_0
    return-void
.end method

.method public setEnhanceMode(ZF)V
    .locals 3
    .param p1, "isEnhance"    # Z
    .param p2, "percent"    # F

    .prologue
    .line 765
    const-string v0, "nightMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnhanceMode isEnhance :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / percent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/UMediaPlayer;->setEnhanceMode(ZF)V

    .line 769
    :cond_0
    return-void
.end method

.method public setHLS(Z)V
    .locals 0
    .param p1, "isHLS"    # Z

    .prologue
    .line 1201
    iput-boolean p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isHLS:Z

    .line 1202
    return-void
.end method

.method public setHardwareDecode(Z)V
    .locals 0
    .param p1, "useHardwareDecode"    # Z

    .prologue
    .line 1205
    iput-boolean p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->useHardwareDecode:Z

    .line 1206
    return-void
.end method

.method public setHttpUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/OriginalMediaPlayer;->setHttpUserAgent(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setMidADDataSource(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x15

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 656
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mPath:Ljava/lang/String;

    .line 657
    invoke-direct {p0}, Lcom/youku/uplayer/MediaPlayerProxy;->createInnerPlayer()V

    .line 658
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_1

    .line 659
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v3

    .line 660
    .local v4, "sysVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_2

    .line 661
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v6

    .line 686
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isHLS:Z

    if-eqz v1, :cond_f

    :goto_1
    iget-boolean v5, p0, Lcom/youku/uplayer/MediaPlayerProxy;->isHLS:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/youku/uplayer/UMediaPlayer;->setMidADDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 693
    .end local v4    # "sysVersion":I
    :cond_1
    return-void

    .line 662
    .restart local v4    # "sysVersion":I
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_3

    .line 663
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v5

    goto :goto_0

    .line 664
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 666
    :cond_4
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    aget v4, v0, v2

    goto :goto_0

    .line 667
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_6

    .line 668
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x7

    aget v4, v0, v1

    goto :goto_0

    .line 669
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_7

    .line 670
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x6

    aget v4, v0, v1

    goto :goto_0

    .line 671
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 672
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x5

    aget v4, v0, v1

    goto :goto_0

    .line 673
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_a

    .line 675
    :cond_9
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x4

    aget v4, v0, v1

    goto :goto_0

    .line 676
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 679
    :cond_b
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x3

    aget v4, v0, v1

    goto/16 :goto_0

    .line 680
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v6, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_e

    .line 682
    :cond_d
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x2

    aget v4, v0, v1

    goto/16 :goto_0

    .line 683
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_0

    .line 684
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    const/4 v1, 0x1

    aget v4, v0, v1

    goto/16 :goto_0

    .line 686
    :cond_f
    iget-boolean v3, p0, Lcom/youku/uplayer/MediaPlayerProxy;->useHardwareDecode:Z

    goto/16 :goto_1
.end method

.method public setNightMode(FF)V
    .locals 1
    .param p1, "lumRatio"    # F
    .param p2, "colorRatio"    # F

    .prologue
    .line 772
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/UMediaPlayer;->setNightMode(FF)V

    .line 775
    :cond_0
    return-void
.end method

.method public setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnADCountListener;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    .line 1131
    return-void
.end method

.method public setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnADPlayListener;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    .line 958
    return-void
.end method

.method public setOnBufferPercentUpdateListener(Lcom/youku/uplayer/OnBufferPercentUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnBufferPercentUpdateListener:Lcom/youku/uplayer/OnBufferPercentUpdateListener;

    .line 1148
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 737
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 741
    return-void
.end method

.method public setOnConnectDelayListener(Lcom/youku/uplayer/OnConnectDelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnConnectDelayListener;

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    .line 1184
    return-void
.end method

.method public setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .line 977
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 745
    return-void
.end method

.method public setOnHttp302DelayListener(Lcom/youku/uplayer/OnHttp302DelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHttp302DelayListener;

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    .line 1188
    return-void
.end method

.method public setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .line 1180
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 749
    return-void
.end method

.method public setOnLodingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnLoadingStatusListener;

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 1011
    return-void
.end method

.method public setOnMidADPlayListener(Lcom/youku/uplayer/OnMidADPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnMidADPlayListener;

    .prologue
    .line 966
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    .line 967
    return-void
.end method

.method public setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnNetworkSpeedListener;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    .line 1140
    return-void
.end method

.method public setOnNetworkSpeedPerMinute(Lcom/youku/uplayer/OnNetworkSpeedPerMinute;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnNetworkSpeedPerMinute:Lcom/youku/uplayer/OnNetworkSpeedPerMinute;

    .line 1144
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 753
    return-void
.end method

.method public setOnQualityChangeListener(Lcom/youku/uplayer/OnQualityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnQualityChangeListener;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    .line 1122
    return-void
.end method

.method public setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnRealVideoStartListener;

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    .line 1157
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 757
    return-void
.end method

.method public setOnTimeoutListener(Lcom/youku/uplayer/OnTimeoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnTimeoutListener;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

    .line 1171
    return-void
.end method

.method public setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .line 1167
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 762
    return-void
.end method

.method public setPlayRate(I)V
    .locals 1
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/OriginalMediaPlayer;->setPlayRate(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public setTimeout(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "sec"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setTimeout(II)V

    .line 554
    :cond_0
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 428
    iput p1, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mCurrentOrientation:I

    .line 429
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/OriginalMediaPlayer;->setVideoOrientation(I)V

    .line 430
    return-void
.end method

.method public skipCurPreAd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->skipCurPreAd()V

    .line 732
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 719
    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 720
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->start()V

    .line 721
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 722
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 725
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/youku/uplayer/MediaPlayerProxy;->verifyState(I)V

    .line 726
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/uplayer/OriginalMediaPlayer;->stop()V

    .line 727
    const/4 v0, 0x7

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPState:I

    iput v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mMPLastState:I

    .line 728
    return-void
.end method

.method public switchDataSource(Ljava/lang/String;)I
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 710
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "switch data source"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    instance-of v0, v0, Lcom/youku/uplayer/UMediaPlayer;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy;->mInnerPlayer:Lcom/youku/uplayer/OriginalMediaPlayer;

    check-cast v0, Lcom/youku/uplayer/UMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/uplayer/UMediaPlayer;->switchDataSource(Ljava/lang/String;)I

    move-result v0

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
