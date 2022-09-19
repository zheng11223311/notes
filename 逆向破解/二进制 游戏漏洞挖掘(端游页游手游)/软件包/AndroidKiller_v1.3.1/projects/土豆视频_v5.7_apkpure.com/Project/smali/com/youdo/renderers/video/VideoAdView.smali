.class public Lcom/youdo/renderers/video/VideoAdView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/renderers/video/VideoAdView$MuteState;
    }
.end annotation


# static fields
.field private static final CLASSTAG:Ljava/lang/String; = "VideoAdView"


# instance fields
.field private adUrl:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

.field private isMuted:Lcom/youdo/renderers/video/VideoAdView$MuteState;

.field private mAdHeight:I

.field private mAdWidth:I

.field private mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

.field private mDuration:I

.field private mSeekWhenPrepared:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

.field private mediaController:Landroid/widget/MediaController;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private final preloadEnabled:Z

.field private preloading:Z

.field preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private videoAdController:Lcom/youdo/renderers/video/VideoAdController;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/youdo/renderers/video/VideoAdRenderer;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preloadEnabled:Z

    iput-boolean v1, p0, Lcom/youdo/renderers/video/VideoAdView;->preloading:Z

    new-instance v0, Lcom/youdo/renderers/video/VideoAdView$1;

    invoke-direct {v0, p0}, Lcom/youdo/renderers/video/VideoAdView$1;-><init>(Lcom/youdo/renderers/video/VideoAdView;)V

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/youdo/renderers/video/VideoAdView$2;

    invoke-direct {v0, p0}, Lcom/youdo/renderers/video/VideoAdView$2;-><init>(Lcom/youdo/renderers/video/VideoAdView;)V

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object p2, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdView;->initVideoView()V

    invoke-virtual {p0, p0}, Lcom/youdo/renderers/video/VideoAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->audioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->UNINITIALIZED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->isMuted:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youdo/renderers/video/VideoAdRenderer;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/youdo/renderers/video/VideoAdView;-><init>(Landroid/content/Context;Lcom/youdo/renderers/video/VideoAdRenderer;)V

    const-string v1, "VideoAdView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "with"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " MediaController"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_2

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    const-string v0, "VideoAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/youdo/renderers/video/VideoAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preloadEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "out"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/youdo/renderers/video/VideoAdView;Lorg/openad/constants/IOpenAdContants$VideoState;)Lorg/openad/constants/IOpenAdContants$VideoState;
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youdo/renderers/video/VideoAdView;)Lorg/openad/constants/IOpenAdContants$VideoState;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youdo/renderers/video/VideoAdView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youdo/renderers/video/VideoAdView;Lorg/openad/constants/IOpenAdContants$VideoState;)Lorg/openad/constants/IOpenAdContants$VideoState;
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youdo/renderers/video/VideoAdView;)Lcom/youdo/renderers/video/VideoAdRenderer;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youdo/renderers/video/VideoAdView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preloading:Z

    return v0
.end method

.method static synthetic access$500(Lcom/youdo/renderers/video/VideoAdView;)I
    .locals 1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$600(Lcom/youdo/renderers/video/VideoAdView;)I
    .locals 1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/youdo/renderers/video/VideoAdView;)I
    .locals 1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/youdo/renderers/video/VideoAdView;)I
    .locals 1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/youdo/renderers/video/VideoAdView;)I
    .locals 1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mSurfaceHeight:I

    return v0
.end method

.method private initVideoView()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v2}, Lcom/youdo/renderers/video/VideoAdView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/youdo/renderers/video/VideoAdView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->requestFocus()Z

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-void
.end method

.method private openVideo()V
    .locals 5

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youdo/renderers/video/VideoAdView;->release(Z)V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->adUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PREPARING:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdView;->prepareMediaController()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoAdView"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "INFO_KEY_ERROR_CODE"

    const-string v3, "ERROR_INVALID_VALUE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INFO_KEY_ERROR_INFO"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdVideoViewError(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "INFO_KEY_ERROR_CODE"

    const-string v3, "ERROR_IO"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INFO_KEY_ERROR_INFO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youdo/renderers/video/VideoAdView;->adUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdVideoViewError(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private prepareMediaController()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/youdo/renderers/video/VideoAdController;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, p0, v2}, Lcom/youdo/renderers/video/VideoAdController;-><init>(Lcom/youdo/renderers/video/VideoAdRenderer;Lcom/youdo/renderers/video/VideoAdView;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->videoAdController:Lcom/youdo/renderers/video/VideoAdController;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->videoAdController:Lcom/youdo/renderers/video/VideoAdController;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-eqz p1, :cond_0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    :cond_0
    return-void
.end method

.method private startPreloadedVideo()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PREPARED:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdView;->prepareMediaController()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "INFO_KEY_ERROR_CODE"

    const-string v2, "ERROR_UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "INFO_KEY_ERROR_INFO"

    const-string v2, "MediaPlayer should in prepared state when start play"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v1, v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdVideoViewError(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private toggleMediaControlsVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "VideoAdView"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youdo/renderers/video/VideoAdView;->release(Z)V

    return-void
.end method

.method public getDuration()D
    .locals 2

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    int-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    int-to-double v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mDuration:I

    int-to-double v0, v0

    goto :goto_0
.end method

.method public getPlayheadTime()D
    .locals 2

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method protected isInPlaybackState()Z
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PREPARING:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preloading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadContent()V
    .locals 5

    const-string v0, "VideoAdView"

    const-string v1, "loadContent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->adUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PREPARING:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preloading:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VideoAdView"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "INFO_KEY_ERROR_CODE"

    const-string v3, "ERROR_INVALID_VALUE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INFO_KEY_ERROR_INFO"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdVideoViewError(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "INFO_KEY_ERROR_CODE"

    const-string v3, "ERROR_IO"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INFO_KEY_ERROR_INFO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youdo/renderers/video/VideoAdView;->adUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdVideoViewError(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdView;->toggleMediaControlsVisibility()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdViewClicked()V

    goto :goto_0

    :cond_1
    const-string v0, "VideoAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore click if not in playback state, current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "VideoAdView"

    const-string/jumbo v1, "video completion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYBACK_COMPLETED:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYBACK_COMPLETED:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdVideoViewComplete()V

    return-void
.end method

.method protected onImprTimer()V
    .locals 4

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const-string v1, "VideoAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->isMuted:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    sget-object v2, Lcom/youdo/renderers/video/VideoAdView$MuteState;->MUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    if-ne v1, v2, :cond_2

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdUnMuted()V

    :cond_0
    :goto_0
    if-lez v0, :cond_3

    sget-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->UNMUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    :goto_1
    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->isMuted:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->videoAdController:Lcom/youdo/renderers/video/VideoAdController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->videoAdController:Lcom/youdo/renderers/video/VideoAdController;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdController;->onImprTimer()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->isMuted:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    sget-object v2, Lcom/youdo/renderers/video/VideoAdView$MuteState;->UNMUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdMuted()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/youdo/renderers/video/VideoAdView$MuteState;->MUTED:Lcom/youdo/renderers/video/VideoAdView$MuteState;

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    invoke-static {v0, p1}, Lcom/youdo/renderers/video/VideoAdView;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    invoke-static {v0, p2}, Lcom/youdo/renderers/video/VideoAdView;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    div-int/2addr v0, v2

    :cond_0
    :goto_0
    const-string v2, "VideoAdView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/youdo/renderers/video/VideoAdView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    iget v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    const-string v0, "VideoAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    iget v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "VideoAdView"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mSeekWhenPrepared:I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PAUSED:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    :cond_0
    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PAUSED:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-void
.end method

.method public resize(II)V
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYING:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PAUSED:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-ne v0, v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    iput p2, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    const-string v0, "VideoAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mSeekWhenPrepared:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/youdo/renderers/video/VideoAdView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setAdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdView;->adUrl:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "VideoAdView"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYING:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    :cond_0
    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYING:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-void
.end method

.method public startPlayback()V
    .locals 2

    const-string v0, "VideoAdView"

    const-string/jumbo v1, "startPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->start()V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdViewStart()V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoAdView"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mCurrentState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "VideoAdView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceChanged w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/youdo/renderers/video/VideoAdView;->mSurfaceWidth:I

    iput p4, p0, Lcom/youdo/renderers/video/VideoAdView;->mSurfaceHeight:I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mTargetState:Lorg/openad/constants/IOpenAdContants$VideoState;

    sget-object v3, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYING:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdWidth:I

    if-ne v3, p3, :cond_3

    iget v3, p0, Lcom/youdo/renderers/video/VideoAdView;->mAdHeight:I

    if-ne v3, p4, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mSeekWhenPrepared:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mSeekWhenPrepared:I

    invoke-virtual {p0, v0}, Lcom/youdo/renderers/video/VideoAdView;->seekTo(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->start()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "VideoAdView"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preloading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdView;->preloading:Z

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdView;->startPreloadedVideo()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdView;->openVideo()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "VideoAdView"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView;->hostRenderer:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdViewSurfaceDestroyed()V

    :cond_1
    invoke-virtual {p0}, Lcom/youdo/renderers/video/VideoAdView;->dispose()V

    return-void
.end method
