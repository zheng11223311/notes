.class public Lcom/youku/uplayer/SystemMediaPlayer;
.super Lcom/youku/uplayer/OriginalMediaPlayer;
.source "SystemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/uplayer/SystemMediaPlayer$SMPState;,
        Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static RELEASE_TIMEOUT:I = 0x0

.field private static final SEEKING_DELAYED:I = 0x2

.field private static final SEEKING_IN_PROGRESS:I = 0x1

.field private static final SEEKING_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentItemIndex:I

.field private mCurrentPlayer:Landroid/media/MediaPlayer;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsPlaylistPrepared:Z

.field private mLastSeekPositionInMills:I

.field private mNeedAnotherSeek:Z

.field private mPath:Ljava/lang/String;

.field private mPlayerState:I

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekPositionInMills:I

.field private mSeekingState:I

.field private mTotalDurationInMills:I

.field private mUrlList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private released:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/youku/uplayer/SystemMediaPlayer;->$assertionsDisabled:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/youku/uplayer/SystemMediaPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    const/16 v0, 0xa

    sput v0, Lcom/youku/uplayer/SystemMediaPlayer;->RELEASE_TIMEOUT:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/uplayer/SystemMediaPlayer;->TAG:Ljava/lang/String;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 190
    invoke-direct {p0}, Lcom/youku/uplayer/OriginalMediaPlayer;-><init>()V

    .line 32
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPlayerState:I

    .line 35
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentItemIndex:I

    .line 36
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mTotalDurationInMills:I

    .line 37
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekPositionInMills:I

    .line 38
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mLastSeekPositionInMills:I

    .line 39
    iput-boolean v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mNeedAnotherSeek:Z

    .line 40
    iput-boolean v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mIsPlaylistPrepared:Z

    .line 45
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekingState:I

    .line 47
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 48
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPath:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 55
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 56
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 57
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 58
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 59
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 60
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 100
    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$1;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 109
    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$2;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 127
    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$3;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 137
    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$4;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 146
    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$5;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 164
    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$6;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 180
    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$7;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$7;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 191
    sget-object v1, Lcom/youku/uplayer/SystemMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "init wait"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    sget-object v1, Lcom/youku/uplayer/SystemMediaPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget v2, Lcom/youku/uplayer/SystemMediaPlayer;->RELEASE_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/youku/uplayer/ReleaseTimeoutException;

    const-string v2, "SystemMediaPlayer release timeout"

    invoke-direct {v1, v2}, Lcom/youku/uplayer/ReleaseTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/youku/uplayer/SystemMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    sget-object v1, Lcom/youku/uplayer/SystemMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "init wait over"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "SystemMediaPlayer() "

    invoke-direct {p0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 204
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentItemIndex:I

    .line 205
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPlayerState:I

    .line 206
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekingState:I

    .line 207
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekPositionInMills:I

    .line 208
    iput v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mLastSeekPositionInMills:I

    .line 209
    iput-boolean v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mNeedAnotherSeek:Z

    .line 210
    iput-boolean v5, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mIsPlaylistPrepared:Z

    .line 212
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 214
    invoke-virtual {p0}, Lcom/youku/uplayer/SystemMediaPlayer;->setListeners()V

    .line 215
    return-void

    .line 196
    :cond_0
    :try_start_1
    sget-object v1, Lcom/youku/uplayer/SystemMediaPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private _seekTo(I)V
    .locals 2
    .param p1, "posInMills"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekPositionInMills:I

    .line 373
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekingState:I

    .line 374
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekPositionInMills:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/youku/uplayer/SystemMediaPlayer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/youku/uplayer/SystemMediaPlayer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/youku/uplayer/SystemMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/youku/uplayer/SystemMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youku/uplayer/SystemMediaPlayer;->resetData()V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/uplayer/SystemMediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mIsPlaylistPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/youku/uplayer/SystemMediaPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mIsPlaylistPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/uplayer/SystemMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekingState:I

    return v0
.end method

.method static synthetic access$702(Lcom/youku/uplayer/SystemMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekingState:I

    return p1
.end method

.method static synthetic access$800(Lcom/youku/uplayer/SystemMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekPositionInMills:I

    return v0
.end method

.method static synthetic access$900(Lcom/youku/uplayer/SystemMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/youku/uplayer/SystemMediaPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/youku/uplayer/SystemMediaPlayer;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private calcSeekCoord(I)I
    .locals 2
    .param p1, "posInMills"    # I

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mUrlList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mUrlList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;

    iget v1, v1, Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;->offset:I

    if-ge v1, p1, :cond_0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method private changeVideo()V
    .locals 4

    .prologue
    .line 80
    sget-boolean v2, Lcom/youku/uplayer/SystemMediaPlayer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mUrlList:Ljava/util/Vector;

    iget v3, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentItemIndex:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;

    iget-object v1, v2, Lcom/youku/uplayer/SystemMediaPlayer$PlayListItem;->url:Ljava/lang/String;

    .line 87
    .local v1, "strPath":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    iput v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPlayerState:I

    .line 88
    iget-object v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 89
    iget-object v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 91
    iget-object v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPlayerState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/youku/uplayer/SystemMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private myLogger(Ljava/lang/String;)V
    .locals 3
    .param p1, "strLog"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/youku/uplayer/SystemMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 316
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPath:Ljava/lang/String;

    .line 317
    iput-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mUrlList:Ljava/util/Vector;

    .line 318
    iput v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentItemIndex:I

    .line 319
    iput v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mTotalDurationInMills:I

    .line 320
    iput v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekPositionInMills:I

    .line 321
    iput v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mLastSeekPositionInMills:I

    .line 322
    iput-boolean v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mNeedAnotherSeek:Z

    .line 323
    iput-boolean v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mIsPlaylistPrepared:Z

    .line 325
    iput v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPlayerState:I

    .line 326
    iput v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekingState:I

    .line 327
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "pos":I
    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 252
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 253
    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 258
    const-string v0, "getDuration "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 270
    const-string v0, "getVideoHeight "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 276
    const-string v0, "getVideoWidth "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 282
    const-string v0, "isLooping "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 290
    .local v1, "isPlaying":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v1    # "isPlaying":Z
    :goto_0
    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

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
    .line 299
    const-string v0, "pause "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 301
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
    .line 305
    const-string v0, "prepare "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 307
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
    .line 311
    const-string v0, "prepareAsync "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 313
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->released:Z

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->released:Z

    .line 334
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer$8;

    invoke-direct {v1, p0}, Lcom/youku/uplayer/SystemMediaPlayer$8;-><init>(Lcom/youku/uplayer/SystemMediaPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 357
    const-string/jumbo v0, "reset "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 359
    invoke-direct {p0}, Lcom/youku/uplayer/SystemMediaPlayer;->resetData()V

    .line 360
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "locationInMills"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seekTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/youku/uplayer/SystemMediaPlayer;->_seekTo(I)V

    .line 403
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamtype"    # I

    .prologue
    .line 407
    const-string/jumbo v0, "setAudioStreamType "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 409
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 414
    const-string/jumbo v0, "setDataSource "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 415
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPath:Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 463
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 467
    const-string/jumbo v0, "setDisplay "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 468
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mHolder:Landroid/view/SurfaceHolder;

    .line 469
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 470
    return-void
.end method

.method setListeners()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 71
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 72
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 73
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 74
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 75
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 76
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 77
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 237
    const-string/jumbo v0, "setLooping "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 239
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 474
    const-string/jumbo v0, "setOnBufferingUpdateListener "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 475
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 476
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 480
    const-string/jumbo v0, "setOnCompletionListener "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 481
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 482
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 486
    const-string/jumbo v0, "setOnErrorListener "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 487
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 488
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 492
    const-string/jumbo v0, "setOnInfoListener "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 493
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 494
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 498
    const-string/jumbo v0, "setOnPreparedListener "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 499
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 500
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 504
    const-string/jumbo v0, "setOnSeekCompleteListener "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 505
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 506
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 511
    const-string/jumbo v0, "setOnVideoSizeChangedListener "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 512
    iput-object p1, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 513
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 231
    const-string/jumbo v0, "setScreenOnWhilePlaying "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 233
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 243
    const-string/jumbo v0, "setVolume "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 245
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 225
    const-string/jumbo v0, "setWakeMode "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 227
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
    .line 517
    const-string/jumbo v0, "start "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 519
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
    .line 523
    const-string/jumbo v0, "stop "

    invoke-direct {p0, v0}, Lcom/youku/uplayer/SystemMediaPlayer;->myLogger(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/youku/uplayer/SystemMediaPlayer;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 525
    return-void
.end method
