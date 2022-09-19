.class public Lcom/youku/gamecenter/player/GameVideoPlayer;
.super Ljava/lang/Object;
.source "GameVideoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;,
        Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;
    }
.end annotation


# static fields
.field private static final MONITER:I = 0x1

.field private static final PAUSE:I = 0x4

.field private static final RELEASE:I = 0x2

.field private static final SEEK_TO:I = 0x3

.field private static final START:I = 0x0

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VideoTest"


# instance fields
.field private cancelQuitLooper:Z

.field private looperQuited:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDataSource:Ljava/lang/String;

.field private mDefaultTimeout:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mLastDuration:I

.field private mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErroListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnLoadingListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnTimeoutListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimeout:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private releasing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 31
    iput v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTimeout:I

    .line 32
    const/16 v0, 0x1e

    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mDefaultTimeout:I

    .line 55
    iput v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    .line 56
    iput v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTargetState:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->looperQuited:Z

    .line 94
    iput-boolean v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->releasing:Z

    .line 95
    iput-boolean v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->cancelQuitLooper:Z

    .line 287
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$2;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 296
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$3;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 347
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$4;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 362
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$5;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 370
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$6;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 383
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoPlayer$7;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$7;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 557
    return-void
.end method

.method static synthetic access$002(Lcom/youku/gamecenter/player/GameVideoPlayer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/player/GameVideoPlayer;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->interalHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/youku/gamecenter/player/GameVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTargetState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTargetState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnErroListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1400(Lcom/youku/gamecenter/player/GameVideoPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/player/GameVideoPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->looperPrepared()V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/player/GameVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/player/GameVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$502(Lcom/youku/gamecenter/player/GameVideoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/player/GameVideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/player/GameVideoPlayer;)Lcom/youku/gamecenter/player/GameVideoBottomView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/gamecenter/player/GameVideoPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoPlayer;

    .prologue
    .line 17
    iget v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSeekWhenPrepared:I

    return v0
.end method

.method private interalHandleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->internalStart()V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->moniter()V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->releasing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->looperQuited:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->releasing:Z

    .line 81
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->internalRelease()V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->quitLooper()V

    goto :goto_0

    .line 86
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->internalSeekTo(I)V

    goto :goto_0

    .line 89
    :pswitch_4
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->internalPause()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private internalPause()V
    .locals 4

    .prologue
    .line 184
    const-string v0, "VideoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalPause\u7ebf\u7a0bid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 188
    const/4 v0, 0x4

    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V

    .line 194
    :cond_1
    return-void
.end method

.method private internalRelease()V
    .locals 4

    .prologue
    .line 504
    const-string v0, "VideoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalRelease\u7ebf\u7a0bid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    .line 511
    :cond_0
    return-void
.end method

.method private internalSeekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSeekWhenPrepared:I

    .line 236
    :cond_0
    return-void
.end method

.method private internalStart()V
    .locals 4

    .prologue
    .line 163
    const-string v0, "VideoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalStart\u7ebf\u7a0bid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 166
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V

    .line 172
    :cond_1
    return-void
.end method

.method private declared-synchronized looperPrepared()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->looperQuited:Z

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private moniter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->getCurrentPosition()I

    move-result v0

    .line 263
    .local v0, "duration":I
    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mLastDuration:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    if-ne v1, v4, :cond_6

    .line 264
    :cond_2
    const-string v1, "VideoTest"

    const-string/jumbo v2, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnLoadingListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

    if-eqz v1, :cond_3

    .line 266
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnLoadingListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;->onStartLoading()V

    .line 268
    :cond_3
    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTimeout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTimeout:I

    .line 276
    :goto_1
    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mLastDuration:I

    .line 278
    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTimeout:I

    iget v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mDefaultTimeout:I

    if-le v1, v2, :cond_5

    .line 279
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnTimeoutListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;

    if-eqz v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnTimeoutListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;->onTimeout()V

    .line 282
    :cond_4
    iput v3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTimeout:I

    .line 284
    :cond_5
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 270
    :cond_6
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnLoadingListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

    if-eqz v1, :cond_7

    .line 271
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnLoadingListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;->onEndLoading()V

    .line 273
    :cond_7
    iput v3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTimeout:I

    goto :goto_1
.end method

.method private openVideo()V
    .locals 2

    .prologue
    .line 429
    const-string v0, "VideoTest"

    const-string v1, "===openVideo==="

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mDataSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->release(Z)V

    .line 438
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->prepareLooper()V

    .line 439
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 440
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->setMediaListener()V

    .line 441
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/player/GameVideoPlayer$8;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$8;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private declared-synchronized prepareLooper()V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->releasing:Z

    if-eqz v1, :cond_1

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->cancelQuitLooper:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->looperQuited:Z

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/youku/gamecenter/player/GameVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/player/GameVideoPlayer$1;-><init>(Lcom/youku/gamecenter/player/GameVideoPlayer;)V

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    .line 495
    if-eqz p1, :cond_0

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTargetState:I

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    :cond_1
    return-void
.end method

.method private setMediaListener()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 484
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 485
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 486
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 487
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 488
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 489
    return-void
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 515
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 516
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnErroListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 517
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnTimeoutListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;

    .line 518
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnLoadingListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

    .line 519
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 246
    iget v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentBufferPercentage:I

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastDuration()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mLastDuration:I

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 176
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_0
    iput v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTargetState:I

    .line 180
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V

    .line 181
    return-void
.end method

.method protected declared-synchronized quitLooper()V
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->cancelQuitLooper:Z

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->cancelQuitLooper:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->releasing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->looperQuited:Z

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->releasing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "msec"    # I

    .prologue
    const/4 v2, 0x3

    .line 220
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 221
    iput p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSeekWhenPrepared:I

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 227
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 228
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mDataSource:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 410
    return-void
.end method

.method public setOnErroListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnErroListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 414
    return-void
.end method

.method public setOnLoadingListener(Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnLoadingListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;

    .line 418
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 399
    return-void
.end method

.method public setOnTimeoutListener(Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mOnTimeoutListener:Lcom/youku/gamecenter/player/GameVideoPlayer$OnTimeoutListener;

    .line 422
    return-void
.end method

.method public setmMediaController(Lcom/youku/gamecenter/player/GameVideoBottomView;)V
    .locals 0
    .param p1, "bottomView"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    .line 149
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 154
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTargetState:I

    .line 160
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 530
    const-string v1, "VideoTest"

    const-string/jumbo v2, "surfaceChanged"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iput p3, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSurfaceWidth:I

    .line 532
    iput p4, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSurfaceHeight:I

    .line 533
    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mTargetState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 534
    .local v0, "isValidState":Z
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 535
    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSeekWhenPrepared:I

    if-eqz v1, :cond_0

    .line 536
    iget v1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSeekWhenPrepared:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->seekTo(I)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->start()V

    .line 540
    :cond_1
    return-void

    .line 533
    .end local v0    # "isValidState":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 523
    const-string v0, "VideoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated, holder hascode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 526
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->openVideo()V

    .line 527
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 543
    const-string v0, "VideoTest"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 546
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoPlayer;->mMediaController:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->hide()V

    .line 547
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->release(Z)V

    .line 548
    return-void
.end method
