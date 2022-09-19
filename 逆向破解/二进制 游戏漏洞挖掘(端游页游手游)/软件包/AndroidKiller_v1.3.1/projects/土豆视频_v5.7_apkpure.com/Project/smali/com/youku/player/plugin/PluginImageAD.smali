.class public Lcom/youku/player/plugin/PluginImageAD;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginImageAD.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;
.implements Lcom/youku/player/apiservice/ILifeCycle;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field containerView:Landroid/view/View;

.field firstLoaded:Z

.field public isOnClick:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdContainer:Landroid/widget/FrameLayout;

.field private mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

.field private mAdType:I

.field mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

.field private mImageAdCallback:Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;

.field private mIsStartToShow:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field protected mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

.field private mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "delegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 47
    iput v1, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdType:I

    .line 49
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginImageAD;->isOnClick:Z

    .line 50
    iput-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 52
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    .line 76
    const-string v0, "PluginImageAD"

    iput-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->TAG:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 412
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginImageAD;->firstLoaded:Z

    .line 497
    new-instance v0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;

    invoke-direct {v0, p0, v2}, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;-><init>(Lcom/youku/player/plugin/PluginImageAD;Lcom/youku/player/plugin/PluginImageAD$1;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mImageAdCallback:Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;

    .line 57
    iput-object p2, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 58
    iput-object p1, p0, Lcom/youku/player/plugin/PluginImageAD;->mActivity:Landroid/app/Activity;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p3, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 61
    iput-object p4, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 62
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/youku/player/ad/imagead/ImageAdContext;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    .line 63
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginImageAD;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/apiservice/IPlayerAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/plugin/PluginImageAD;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginImageAD;->setImageAdShowing(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/youku/player/plugin/PluginImageAD;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/plugin/PluginImageAD;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginImageAD;->updateImageAdPlugin()V

    return-void
.end method

.method static synthetic access$600(Lcom/youku/player/plugin/PluginImageAD;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginImageAD;->setPluginHolderPaddingZero()V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/player/plugin/PluginImageAD;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/player/plugin/PluginImageAD;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginImageAD;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginImageAD;->disposeAdLoss(I)V

    return-void
.end method

.method private disposeAdLoss(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v2, "mf"

    invoke-static {v0, p1, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method private getAdvInfo()Lcom/youku/player/goplay/AdvInfo;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_plugin_image_ad:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->containerView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->containerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginImageAD;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->findView()V

    .line 70
    return-void
.end method

.method private isVideoNoAdv()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 214
    iget-object v6, p0, Lcom/youku/player/plugin/PluginImageAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 215
    .local v3, "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v6, v3, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v7, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v6, v7, :cond_0

    move v2, v4

    .line 217
    .local v2, "notFromYouku":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 218
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v6, "PluginImageAD->isVideoNoAdv = true"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    return v4

    .end local v2    # "notFromYouku":Z
    :cond_0
    move v2, v5

    .line 215
    goto :goto_0

    .line 222
    .restart local v2    # "notFromYouku":Z
    :cond_1
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v1

    .line 223
    .local v1, "isWifi":Z
    iget-object v6, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v7, "local"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    .local v0, "isLocalVideo":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 227
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v6, "PluginImageAD->isVideoNoAdv = true"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_2
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v6, "PluginImageAD->isVideoNoAdv = false"

    invoke-static {v4, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 232
    goto :goto_1
.end method

.method private setImageAdShowing(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 384
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IPlayerAdControl;->setImageAdShowing(Z)V

    .line 387
    :cond_0
    return-void
.end method

.method private setPluginHolderPaddingZero()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setPluginHolderPaddingZero()V

    .line 381
    :cond_0
    return-void
.end method

.method private updateImageAdPlugin()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 2
    .param p1, "currentPosition"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginImageAD$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginImageAD$1;-><init>(Lcom/youku/player/plugin/PluginImageAD;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 105
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public dismissImageAD()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginImageAD$2;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginImageAD$2;-><init>(Lcom/youku/player/plugin/PluginImageAD;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    invoke-static {}, Lcom/youku/player/Track;->onImageAdEnd()V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->dismiss()V

    .line 346
    :cond_2
    invoke-direct {p0, v2}, Lcom/youku/player/plugin/PluginImageAD;->setImageAdShowing(Z)V

    .line 347
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 349
    return-void
.end method

.method public findView()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->play_middle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContainer:Landroid/widget/FrameLayout;

    .line 74
    return-void
.end method

.method public getAdType()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdType:I

    return v0
.end method

.method public isSaveOnOrientChange()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->isSaveOnOrientChange()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartToShow()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    return v0
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onBaseConfigurationChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 479
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->isAutoPlayAfterClick()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->isSaveOnOrientChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginImageAD;->updateImageAdPlugin()V

    .line 486
    invoke-virtual {p0, v1}, Lcom/youku/player/plugin/PluginImageAD;->setVisible(Z)V

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginImageAD;->setVisibility(I)V

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->isStartToShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->isSaveOnOrientChange()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    :cond_3
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 491
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 492
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    goto :goto_0
.end method

.method public onBaseResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->isSaveOnResume()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginImageAD;->updateImageAdPlugin()V

    .line 457
    invoke-virtual {p0, v2}, Lcom/youku/player/plugin/PluginImageAD;->setVisible(Z)V

    .line 458
    invoke-virtual {p0, v1}, Lcom/youku/player/plugin/PluginImageAD;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->onResume()V

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 463
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 464
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    goto :goto_0

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->isAutoPlayAfterClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdContext;->setAutoPlayAfterClick(Z)V

    .line 472
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 473
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    goto :goto_0
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onCompletionListener()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onLoadedListener()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onLoadingListener()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 161
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->pauseTimer()V

    .line 410
    :cond_0
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 421
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public onPluginAdded()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 195
    return-void
.end method

.method public onRealVideoStart()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->onStop()V

    .line 355
    :cond_0
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onVideoChange()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginImageAD;->firstLoaded:Z

    .line 166
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 0
    .param p1, "needRetry"    # Z

    .prologue
    .line 180
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onVolumnDown()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onVolumnUp()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 358
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/youku/player/Track;->onImageAdEnd()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdContext;->release()V

    .line 364
    iput-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    .line 366
    :cond_1
    invoke-direct {p0, v1}, Lcom/youku/player/plugin/PluginImageAD;->setImageAdShowing(Z)V

    .line 367
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    .line 368
    iput-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 369
    return-void
.end method

.method public setAdType(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdType:I

    .line 430
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x4

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD;->containerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/youku/player/plugin/PluginImageAD;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAD(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 5
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-boolean v2, p0, Lcom/youku/player/plugin/PluginImageAD;->firstLoaded:Z

    if-nez v2, :cond_0

    .line 243
    :cond_0
    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginImageAD;->isOnClick:Z

    .line 244
    iput-object p1, p0, Lcom/youku/player/plugin/PluginImageAD;->mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 246
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginImageAD;->isVideoNoAdv()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v2, :cond_6

    .line 251
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 252
    .local v1, "size":I
    if-nez v1, :cond_3

    .line 254
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u5e7f\u544aVC:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 256
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-static {v2}, Lcom/youku/player/util/AdUtil;->isAdvVideoType(Lcom/youku/player/goplay/VideoAdvInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 263
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-static {v2}, Lcom/youku/player/util/AdUtil;->getAdvImageTypePosition(Lcom/youku/player/goplay/VideoAdvInfo;)I

    move-result v0

    .line 264
    .local v0, "i":I
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iput-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 265
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v2, v2, Lcom/youku/player/goplay/AdvInfo;->SDKID:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 267
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    const/16 v2, 0x63

    invoke-virtual {p0, v2}, Lcom/youku/player/plugin/PluginImageAD;->setAdType(I)V

    .line 274
    :goto_1
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->showADImage()V

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {p0, v4}, Lcom/youku/player/plugin/PluginImageAD;->setAdType(I)V

    goto :goto_1

    .line 277
    :cond_5
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v2, v2, Lcom/youku/player/goplay/AdvInfo;->SDKID:I

    invoke-virtual {p0, v2}, Lcom/youku/player/plugin/PluginImageAD;->setAdType(I)V

    .line 278
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->showADImage()V

    goto/16 :goto_0

    .line 282
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_6
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 283
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    goto/16 :goto_0
.end method

.method protected showADImage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 292
    const/4 v0, 0x0

    .line 295
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginImageAD;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    .line 296
    if-nez v0, :cond_1

    .line 297
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u5e7f\u544a\u663e\u793a SUS:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    iput-boolean v5, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    .line 308
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdType:I

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->setType(I)V

    .line 309
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 310
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mImageAdCallback:Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;

    invoke-virtual {v2, v0, v5, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/imagead/IImageAdCallback;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-eqz v0, :cond_0

    .line 305
    iput-boolean v5, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    .line 308
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdType:I

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->setType(I)V

    .line 309
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 310
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mImageAdCallback:Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;

    invoke-virtual {v2, v0, v5, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/imagead/IImageAdCallback;)V

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u5e7f\u544a\u663e\u793a SUS\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    iput-boolean v5, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    .line 308
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdType:I

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->setType(I)V

    .line 309
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 310
    iget-object v2, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mImageAdCallback:Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;

    invoke-virtual {v2, v0, v5, v3}, Lcom/youku/player/ad/imagead/ImageAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/imagead/IImageAdCallback;)V

    goto :goto_0

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 305
    iput-boolean v5, p0, Lcom/youku/player/plugin/PluginImageAD;->mIsStartToShow:Z

    .line 308
    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget v4, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdType:I

    invoke-virtual {v3, v4}, Lcom/youku/player/ad/imagead/ImageAdContext;->setType(I)V

    .line 309
    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v4, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lcom/youku/player/ad/imagead/ImageAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 310
    iget-object v3, p0, Lcom/youku/player/plugin/PluginImageAD;->mAdContext:Lcom/youku/player/ad/imagead/ImageAdContext;

    iget-object v4, p0, Lcom/youku/player/plugin/PluginImageAD;->mImageAdCallback:Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;

    invoke-virtual {v3, v0, v5, v4}, Lcom/youku/player/ad/imagead/ImageAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/imagead/IImageAdCallback;)V

    :cond_2
    throw v2
.end method
