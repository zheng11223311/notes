.class public Lcom/youku/laifeng/sdk/widget/player/UVideoView;
.super Landroid/widget/RelativeLayout;
.source "UVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;
    }
.end annotation


# instance fields
.field private hornItem1:Landroid/widget/RelativeLayout;

.field private im1:Landroid/widget/ImageView;

.field private mAVSwitch:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCond:Ljava/lang/Object;

.field private mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

.field private mDiff:F

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private mHornInterrupt:Z

.field private mHornList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

.field private mLoadingListener:Lcom/youku/uplayer/OnLoadingStatusListener;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThiz:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

.field private mUrl:Ljava/lang/String;

.field private measuredHeight:I

.field private measuredWidth:I

.field private realHeight:I

.field private realWidth:I

.field private surfaceView:Landroid/view/SurfaceView;

.field private tx1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    .line 41
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHornList:Ljava/util/List;

    .line 43
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mThiz:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 45
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHornInterrupt:Z

    .line 46
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->hornItem1:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->tx1:Landroid/widget/TextView;

    .line 48
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->im1:Landroid/widget/ImageView;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCond:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mDiff:F

    .line 51
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    .line 52
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredHeight:I

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredWidth:I

    .line 53
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realHeight:I

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realWidth:I

    .line 54
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mAVSwitch:Z

    .line 74
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mUrl:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mListener:Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    .line 143
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 157
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mLoadingListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 189
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$3;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$3;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 197
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$4;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$4;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 233
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 58
    iput-object p0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mThiz:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    .line 41
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHornList:Ljava/util/List;

    .line 43
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mThiz:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 45
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHornInterrupt:Z

    .line 46
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->hornItem1:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->tx1:Landroid/widget/TextView;

    .line 48
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->im1:Landroid/widget/ImageView;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCond:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mDiff:F

    .line 51
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    .line 52
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredHeight:I

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredWidth:I

    .line 53
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realHeight:I

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realWidth:I

    .line 54
    iput-boolean v4, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mAVSwitch:Z

    .line 74
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mUrl:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mListener:Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    .line 143
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 157
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mLoadingListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    .line 189
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$3;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$3;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 197
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$4;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$4;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 233
    new-instance v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$5;-><init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 63
    iput-object p0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mThiz:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/sdk/widget/player/UVideoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/player/UVideoView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mDiff:F

    return p1
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mListener:Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/uplayer/MediaPlayerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/laifeng/sdk/widget/player/UVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/player/UVideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private openVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1}, Lcom/youku/uplayer/MediaPlayerProxy;->release()V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 95
    new-instance v1, Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {v1}, Lcom/youku/uplayer/MediaPlayerProxy;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    .line 96
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 97
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mLoadingListener:Lcom/youku/uplayer/OnLoadingStatusListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnLodingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V

    .line 98
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 99
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setHLS(Z)V

    .line 102
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 115
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 116
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->setAudioStreamType(I)V

    .line 117
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1, v3}, Lcom/youku/uplayer/MediaPlayerProxy;->setScreenOnWhilePlaying(Z)V

    .line 118
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1}, Lcom/youku/uplayer/MediaPlayerProxy;->prepareAsync()V

    .line 119
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseUrlFromArgs(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mUrl:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public initPlayer(Landroid/os/Handler;Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    .prologue
    const/4 v3, 0x0

    .line 78
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mListener:Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    .line 81
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "player_surface"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    .line 82
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 85
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 87
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHornInterrupt:Z

    .line 88
    return-void
.end method

.method public mute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0, v1, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->setVolume(FF)V

    .line 68
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredHeight:I

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredWidth:I

    .line 134
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mDiff:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->resize()V

    .line 136
    :cond_0
    return-void
.end method

.method public openVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->parseUrlFromArgs(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->openVideo()V

    .line 141
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->pause()V

    .line 123
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->release()V

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mHornInterrupt:Z

    .line 211
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCond:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCond:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v1

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resize()V
    .locals 4

    .prologue
    .line 174
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 175
    .local v0, "diff1":F
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mDiff:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 176
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredHeight:I

    iput v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realHeight:I

    .line 177
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mDiff:F

    iget v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realWidth:I

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 184
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 185
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void

    .line 179
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredWidth:I

    iput v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realWidth:I

    .line 180
    iget v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->measuredWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mDiff:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->realHeight:I

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v0}, Lcom/youku/uplayer/MediaPlayerProxy;->start()V

    .line 127
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->mCurrentPlayer:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-virtual {v1}, Lcom/youku/uplayer/MediaPlayerProxy;->release()V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 224
    .local v0, "cvs":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 227
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 228
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
