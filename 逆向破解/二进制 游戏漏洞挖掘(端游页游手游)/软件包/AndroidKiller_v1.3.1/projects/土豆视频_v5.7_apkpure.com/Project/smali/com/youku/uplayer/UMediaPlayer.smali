.class public Lcom/youku/uplayer/UMediaPlayer;
.super Lcom/youku/uplayer/OriginalMediaPlayer;
.source "UMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/uplayer/UMediaPlayer$EventHandler;,
        Lcom/youku/uplayer/UMediaPlayer$MsgID;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static Versions:[I


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mEventHandler:Lcom/youku/uplayer/UMediaPlayer$EventHandler;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mNativeContext:I

.field private mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

.field private mOnADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

.field private mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

.field private mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

.field private mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

.field private mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

.field private mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

.field private mOnMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

.field private mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

.field private mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

.field private mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

.field private mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

.field private mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScreenOnWhilePlaying:Z

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field whyStartTwice:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    const-class v2, Lcom/youku/uplayer/UMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    .line 43
    sget-object v2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/libmanager/SoUpgradeStatics;->getFfmpegSo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "ffmpegPath":Ljava/lang/String;
    sget-object v2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/libmanager/SoUpgradeStatics;->getUplayer23So(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "uplayer23Path":Ljava/lang/String;
    const-string v2, "netcache"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Lcom/youku/libmanager/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System.load("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-static {v1}, Lcom/youku/libmanager/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System.load("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 70
    :goto_1
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->native_init()V

    .line 991
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/youku/uplayer/UMediaPlayer;->Versions:[I

    return-void

    .line 54
    :cond_0
    const-string v2, "SoUpgradeService"

    const-string v3, "System.loadLibrary(uffmpeg)"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v2, "uffmpeg"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v2, "SoUpgradeService"

    const-string v3, "System.loadLibrary(uplayer23)"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "uplayer23"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    .line 991
    :array_0
    .array-data 4
        0x3e8
        0x3fe
        0x3ff
        0x406
        0x410
        0x411
        0x412
        0x413
        0x414
        0x41a
        0x44b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 486
    invoke-direct {p0}, Lcom/youku/uplayer/OriginalMediaPlayer;-><init>()V

    .line 167
    iput v2, p0, Lcom/youku/uplayer/UMediaPlayer;->mNativeContext:I

    .line 168
    iput-object v3, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 169
    iput-object v3, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 170
    iput-object v3, p0, Lcom/youku/uplayer/UMediaPlayer;->mEventHandler:Lcom/youku/uplayer/UMediaPlayer$EventHandler;

    .line 171
    iput-boolean v2, p0, Lcom/youku/uplayer/UMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 172
    iput-boolean v2, p0, Lcom/youku/uplayer/UMediaPlayer;->mStayAwake:Z

    .line 173
    iput-object v3, p0, Lcom/youku/uplayer/UMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 595
    const/4 v2, 0x1

    iput v2, p0, Lcom/youku/uplayer/UMediaPlayer;->whyStartTwice:I

    .line 487
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 488
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 489
    new-instance v2, Lcom/youku/uplayer/UMediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Lcom/youku/uplayer/UMediaPlayer$EventHandler;-><init>(Lcom/youku/uplayer/UMediaPlayer;Lcom/youku/uplayer/UMediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/youku/uplayer/UMediaPlayer;->mEventHandler:Lcom/youku/uplayer/UMediaPlayer$EventHandler;

    .line 496
    :goto_0
    :try_start_0
    new-instance v2, Lcom/youku/uplayer/RegisterCodec;

    invoke-direct {v2}, Lcom/youku/uplayer/RegisterCodec;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/youku/uplayer/UMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 502
    return-void

    .line 491
    :cond_0
    iput-object v3, p0, Lcom/youku/uplayer/UMediaPlayer;->mEventHandler:Lcom/youku/uplayer/UMediaPlayer$EventHandler;

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "Error: failed to register codecs!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/youku/uplayer/UMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnCurrentPositionUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnVideoIndexUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnNetworkSpeedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnRealVideoStartListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADCountListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnTimeoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHwDecodeErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnConnectDelayListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnHttp302DelayListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnQualityChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/uplayer/UMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnLoadingStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnADPlayListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/uplayer/UMediaPlayer;)Lcom/youku/uplayer/OnMidADPlayListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/UMediaPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    return-object v0
.end method

.method public static native getCpuCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native getFFmpegVersionCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native getFFmpegVersionName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static synchronized native declared-synchronized getFileDuration(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public static getSDKVersionNumber()I
    .locals 3

    .prologue
    .line 77
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    .local v1, "sdkVersion":I
    :goto_0
    return v1

    .line 78
    .end local v1    # "sdkVersion":I
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1    # "sdkVersion":I
    goto :goto_0
.end method

.method public static native getUplayerVersionCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native getUplayerVersionName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private static final native native_set_egl_path(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private native native_suspend_resume(Z)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x64

    .line 819
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/uplayer/UMediaPlayer;

    .line 820
    .local v1, "mp":Lcom/youku/uplayer/UMediaPlayer;
    if-nez v1, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v2, v1, Lcom/youku/uplayer/UMediaPlayer;->mEventHandler:Lcom/youku/uplayer/UMediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, v1, Lcom/youku/uplayer/UMediaPlayer;->mEventHandler:Lcom/youku/uplayer/UMediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, "m":Landroid/os/Message;
    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 978
    :goto_1
    iget-object v2, v1, Lcom/youku/uplayer/UMediaPlayer;->mEventHandler:Lcom/youku/uplayer/UMediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lcom/youku/uplayer/UMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 828
    :sswitch_0
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video frame rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 831
    :sswitch_1
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio frame rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 835
    :sswitch_2
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PREPARED is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 839
    :sswitch_3
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_COMPLETED is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 844
    :sswitch_4
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_DATA_SOURCE_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iput v4, v0, Landroid/os/Message;->what:I

    .line 846
    const/16 v2, 0x3ee

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 847
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 851
    :sswitch_5
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PREPARE_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iput v4, v0, Landroid/os/Message;->what:I

    .line 853
    const/16 v2, 0x3ef

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 854
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 858
    :sswitch_6
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_NETWORK_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iput v4, v0, Landroid/os/Message;->what:I

    .line 860
    const/16 v2, 0x3f0

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 861
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 865
    :sswitch_7
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_NETWORK_DISSCONNECTED is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iput v4, v0, Landroid/os/Message;->what:I

    .line 867
    const/16 v2, 0x3ed

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 868
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 871
    :sswitch_8
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_SEEK_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iput v4, v0, Landroid/os/Message;->what:I

    .line 873
    const/16 v2, 0x3f1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 874
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 877
    :sswitch_9
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PREPARE_TIMEOUT_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iput v4, v0, Landroid/os/Message;->what:I

    .line 879
    const/16 v2, 0x3f2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 880
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 883
    :sswitch_a
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_AD_HTTP_ERROR_4XX is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iput v4, v0, Landroid/os/Message;->what:I

    .line 885
    const/16 v2, 0x456

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 886
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 889
    :sswitch_b
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_VIDEO_HTTP_ERROR_4XX is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iput v4, v0, Landroid/os/Message;->what:I

    .line 891
    const/16 v2, 0x457

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 892
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 895
    :sswitch_c
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_SET_VIDEO_SIZE is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 897
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 898
    iput p3, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 901
    :sswitch_d
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_BUFFERING_UPDATE is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 903
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 904
    iput p3, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 907
    :sswitch_e
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_NETWORK_SPEED_UPDATE is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const/16 v2, 0x7d6

    iput v2, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 911
    :sswitch_f
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PRE_AD_START is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const/16 v2, 0x3f3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 913
    iput p2, v0, Landroid/os/Message;->arg1:I

    goto/16 :goto_1

    .line 916
    :sswitch_10
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PRE_AD_END is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/16 v2, 0x3f4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 918
    iput p2, v0, Landroid/os/Message;->arg1:I

    goto/16 :goto_1

    .line 922
    :sswitch_11
    const/16 v2, 0x7d0

    iput v2, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 926
    :sswitch_12
    const/16 v2, 0x3f9

    iput v2, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 930
    :sswitch_13
    const/16 v2, 0x3fa

    iput v2, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 934
    :sswitch_14
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_AD_COUNT_DOWN is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const/16 v2, 0x410

    iput v2, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 938
    :sswitch_15
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PREPARED_AD_CHECK is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iput v4, v0, Landroid/os/Message;->what:I

    .line 940
    const/16 v2, 0x7d5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 941
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 944
    :sswitch_16
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PREPARED_MID_AD_CHECK is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iput v4, v0, Landroid/os/Message;->what:I

    .line 946
    const/16 v2, 0x898

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 947
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 950
    :sswitch_17
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_MIDAD_DATA_SOURCE_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iput v4, v0, Landroid/os/Message;->what:I

    .line 952
    const/16 v2, 0x899

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 953
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 956
    :sswitch_18
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_PLAYERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iput v4, v0, Landroid/os/Message;->what:I

    .line 958
    const/16 v2, 0x3ea

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 959
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 962
    :sswitch_19
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_NETWORK_CHECK is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iput v4, v0, Landroid/os/Message;->what:I

    .line 964
    const/16 v2, 0x7d4

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 965
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 968
    :sswitch_1a
    const/16 v2, 0x413

    iput v2, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 971
    :sswitch_1b
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_HW_DECODE_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 974
    :sswitch_1c
    sget-object v2, Lcom/youku/uplayer/UMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_INFO_HW_PLAYER_ERROR is received"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 826
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_18
        0x3ed -> :sswitch_7
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_5
        0x3f0 -> :sswitch_6
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_9
        0x3f3 -> :sswitch_f
        0x3f4 -> :sswitch_10
        0x3f9 -> :sswitch_12
        0x3fa -> :sswitch_13
        0x406 -> :sswitch_c
        0x407 -> :sswitch_d
        0x410 -> :sswitch_14
        0x413 -> :sswitch_1a
        0x456 -> :sswitch_a
        0x457 -> :sswitch_b
        0x7d0 -> :sswitch_11
        0x7d4 -> :sswitch_19
        0x7d5 -> :sswitch_15
        0x7d6 -> :sswitch_e
        0x898 -> :sswitch_16
        0x899 -> :sswitch_17
        0x7530 -> :sswitch_1b
        0x7531 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static native registerAVcodec()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 586
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 587
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 524
    :cond_0
    return-void

    .line 522
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native addPostADUrl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native changeVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native enableVoice(I)V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->native_finalize()V

    .line 582
    return-void
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getSoVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public native getVoiceStatus()I
.end method

.method public native isPlaying()Z
.end method

.method public native isSeeking()Z
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/uplayer/UMediaPlayer;->stayAwake(Z)V

    .line 541
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->_pause()V

    .line 542
    return-void
.end method

.method public native playMidADConfirm(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareMidAD()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 560
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/uplayer/UMediaPlayer;->stayAwake(Z)V

    .line 561
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->updateSurfaceScreenOn()V

    .line 562
    iput-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 563
    iput-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 564
    iput-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 565
    iput-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 566
    iput-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 567
    iput-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 568
    iput-object v1, p0, Lcom/youku/uplayer/UMediaPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 570
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->_release()V

    .line 571
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/uplayer/UMediaPlayer;->stayAwake(Z)V

    .line 576
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->_reset()V

    .line 577
    return-void
.end method

.method public native screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 507
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-static {v0}, Lcom/youku/uplayer/EGLUtil;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 509
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 511
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/youku/uplayer/UMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 517
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->updateSurfaceScreenOn()V

    .line 518
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public native setEnhanceMode(ZF)V
.end method

.method public native setHttpUserAgent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setMidADDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setNightMode(FF)V
.end method

.method public setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnADCountListener;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnADCountListener:Lcom/youku/uplayer/OnADCountListener;

    .line 370
    return-void
.end method

.method public setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnADPlayListener;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnADPlayListener:Lcom/youku/uplayer/OnADPlayListener;

    .line 406
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 453
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 447
    return-void
.end method

.method public setOnConnectDelayListener(Lcom/youku/uplayer/OnConnectDelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnConnectDelayListener;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnConnectDelayListener:Lcom/youku/uplayer/OnConnectDelayListener;

    .line 349
    return-void
.end method

.method public setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnCurrentPositionUpdateListener:Lcom/youku/uplayer/OnCurrentPositionUpdateListener;

    .line 425
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 472
    return-void
.end method

.method public setOnHttp302DelayListener(Lcom/youku/uplayer/OnHttp302DelayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHttp302DelayListener;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnHttp302DelayListener:Lcom/youku/uplayer/OnHttp302DelayListener;

    .line 353
    return-void
.end method

.method public setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnHwDecodeErrorListener:Lcom/youku/uplayer/OnHwDecodeErrorListener;

    .line 345
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 478
    return-void
.end method

.method public setOnLodingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnLoadingStatusListener;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnLodingStatusListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 397
    return-void
.end method

.method public setOnMidADPlayListener(Lcom/youku/uplayer/OnMidADPlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnMidADPlayListener;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnMidADPlayListener:Lcom/youku/uplayer/OnMidADPlayListener;

    .line 415
    return-void
.end method

.method public setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnNetworkSpeedListener;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnNetworkSpeedListener:Lcom/youku/uplayer/OnNetworkSpeedListener;

    .line 379
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 441
    return-void
.end method

.method public setOnQualityChangeListener(Lcom/youku/uplayer/OnQualityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnQualityChangeListener;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnQualityChangeListener:Lcom/youku/uplayer/OnQualityChangeListener;

    .line 483
    return-void
.end method

.method public setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnRealVideoStartListener;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnRealVideoStartListener:Lcom/youku/uplayer/OnRealVideoStartListener;

    .line 388
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 459
    return-void
.end method

.method public setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnVideoIndexUpdateListener:Lcom/youku/uplayer/OnVideoIndexUpdateListener;

    .line 435
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 466
    return-void
.end method

.method public native setPlayRate(I)V
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/youku/uplayer/UMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    .line 547
    iput-boolean p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 548
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->updateSurfaceScreenOn()V

    .line 550
    :cond_0
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "mSurfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 984
    return-void
.end method

.method public setTimeout(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sec"    # I

    .prologue
    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/youku/uplayer/UMediaPlayer;->set_timeout(II)V

    .line 555
    return-void
.end method

.method public native setVideoOrientation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native set_timeout(II)V
.end method

.method public setmOnTimeoutListener(Lcom/youku/uplayer/OnTimeoutListener;)V
    .locals 0
    .param p1, "mOnTimeoutListener"    # Lcom/youku/uplayer/OnTimeoutListener;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer;->mOnTimeoutListener:Lcom/youku/uplayer/OnTimeoutListener;

    .line 361
    return-void
.end method

.method public native skipCurPreAd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/uplayer/UMediaPlayer;->stayAwake(Z)V

    .line 529
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->_start()V

    .line 530
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
    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/uplayer/UMediaPlayer;->stayAwake(Z)V

    .line 535
    invoke-direct {p0}, Lcom/youku/uplayer/UMediaPlayer;->_stop()V

    .line 536
    return-void
.end method

.method public native switchDataSource(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
