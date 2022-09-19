.class public Lcom/youku/player/plugin/PluginFullScreenPauseAD;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field containerView:Landroid/view/View;

.field firstLoaded:Z

.field private mADURL:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdType:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOfflinePauseAd:Lcom/youdo/vo/XAdInstance;

.field private mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

.field private mPauseAdContainer:Landroid/widget/FrameLayout;

.field private mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field private mRequest:I

.field private mTestAd:Ljava/lang/String;

.field private mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field protected pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

.field private pauseADcanceled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    .line 51
    iput v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    .line 54
    iput-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mTestAd:Ljava/lang/String;

    .line 81
    const-string v0, "PluginFullScreenPauseAD"

    iput-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->TAG:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 224
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADcanceled:Z

    .line 504
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->firstLoaded:Z

    .line 537
    new-instance v0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;

    invoke-direct {v0, p0, v2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$PauseAdCallback;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 59
    iput-object p2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 60
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 62
    iput-object p4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 64
    new-instance v0, Lcom/youku/player/ad/pausead/PauseAdContext;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/youku/player/ad/pausead/PauseAdContext;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    .line 65
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youdo/vo/XAdInstance;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mOfflinePauseAd:Lcom/youdo/vo/XAdInstance;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Lcom/youdo/vo/XAdInstance;)Lcom/youdo/vo/XAdInstance;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;
    .param p1, "x1"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mOfflinePauseAd:Lcom/youdo/vo/XAdInstance;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mADURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    return v0
.end method

.method static synthetic access$102(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mADURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/apiservice/IPlayerAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/apiservice/IPlayerUiControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    return v0
.end method

.method static synthetic access$202(Lcom/youku/player/plugin/PluginFullScreenPauseAD;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    return p1
.end method

.method static synthetic access$300(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/ad/pausead/PauseAdContext;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/plugin/PluginFullScreenPauseAD;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->disposeAdLoss(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->removeAllAd()V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADcanceled:Z

    return v0
.end method

.method private disposeAdLoss(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v2, "mp"

    invoke-static {v0, p1, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->play_middle_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContainer:Landroid/widget/FrameLayout;

    .line 78
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method private getAdvInfo()Lcom/youku/player/goplay/AdvInfo;
    .locals 2

    .prologue
    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-object v0

    .line 456
    :catch_0
    move-exception v0

    .line 458
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_plugin_player_popup_ad:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->addView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->findView()V

    .line 73
    return-void
.end method

.method private isLocalVideo(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 2
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isVideoNoAdv()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 228
    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 229
    .local v1, "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v4, v1, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v4, v5, :cond_0

    move v0, v2

    .line 231
    .local v0, "notFromYouku":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 232
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "PluginImageAD->isVideoNoAdv = true"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_1
    return v2

    .end local v0    # "notFromYouku":Z
    :cond_0
    move v0, v3

    .line 229
    goto :goto_0

    .line 236
    .restart local v0    # "notFromYouku":Z
    :cond_1
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "PluginImageAD->isVideoNoAdv = false"

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 237
    goto :goto_1
.end method

.method private removeAllAd()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAdContext;->removeAllAd()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 597
    :cond_1
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 2
    .param p1, "currentPosition"    # I

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->firstLoaded:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->firstLoaded:Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    :cond_1
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 110
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public dismissPauseAD()V
    .locals 3

    .prologue
    .line 465
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADcanceled:Z

    .line 466
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/plugin/PluginFullScreenPauseAD$5;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$5;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 474
    iget v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    if-nez v1, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    .line 476
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1, v2, v0}, Lcom/youku/player/util/AnalyticsWrapper;->adPlayEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedSUE(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 483
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public onCompletionListener()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onLoadedListener()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onLoadingListener()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 514
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public onPluginAdded()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 206
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    return-void
.end method

.method public onRealVideoStart()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onVideoChange()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->firstLoaded:Z

    .line 178
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 0
    .param p1, "needRetry"    # Z

    .prologue
    .line 192
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onVolumnDown()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onVolumnUp()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    invoke-virtual {v0}, Lcom/youku/player/ad/pausead/PauseAdContext;->release()V

    .line 530
    iput-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    .line 532
    :cond_0
    iput-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 533
    iput-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 534
    iput-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 535
    return-void
.end method

.method public setTestAd(Ljava/lang/String;)V
    .locals 0
    .param p1, "testAd"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mTestAd:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->dismissPauseAD()V

    goto :goto_0
.end method

.method protected showADImage()V
    .locals 7

    .prologue
    .line 412
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->disposeAdLoss(I)V

    .line 442
    :cond_2
    :goto_0
    return-void

    .line 418
    :cond_3
    const/4 v0, 0x0

    .line 421
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :try_start_0
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    .line 422
    if-nez v0, :cond_4

    .line 423
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u6682\u505c\u5e7f\u544a\u663e\u793a SUS:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    if-eqz v0, :cond_2

    .line 431
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6682\u505c\u5e7f\u544aSDK --->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->removeAllAd()V

    .line 433
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/pausead/PauseAdContext;->setType(I)V

    .line 434
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/pausead/PauseAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 435
    iget v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    .line 436
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    iget-object v5, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/player/ad/pausead/PauseAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V

    .line 437
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v2, :cond_2

    .line 438
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->releaseInvestigate()V

    goto :goto_0

    .line 430
    :cond_4
    if-eqz v0, :cond_2

    .line 431
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6682\u505c\u5e7f\u544aSDK --->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->removeAllAd()V

    .line 433
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/pausead/PauseAdContext;->setType(I)V

    .line 434
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/pausead/PauseAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 435
    iget v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    .line 436
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    iget-object v5, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/player/ad/pausead/PauseAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V

    .line 437
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v2, :cond_2

    .line 438
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->releaseInvestigate()V

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u6682\u505c\u5e7f\u544a\u663e\u793a SUS\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    if-eqz v0, :cond_2

    .line 431
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6682\u505c\u5e7f\u544aSDK --->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->removeAllAd()V

    .line 433
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/pausead/PauseAdContext;->setType(I)V

    .line 434
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/pausead/PauseAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 435
    iget v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    .line 436
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    iget-object v5, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/player/ad/pausead/PauseAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V

    .line 437
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v2, :cond_2

    .line 438
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->releaseInvestigate()V

    goto/16 :goto_0

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 431
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6682\u505c\u5e7f\u544aSDK --->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->removeAllAd()V

    .line 433
    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mAdType:I

    invoke-virtual {v3, v4}, Lcom/youku/player/ad/pausead/PauseAdContext;->setType(I)V

    .line 434
    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lcom/youku/player/ad/pausead/PauseAdContext;->setContainer(Landroid/view/ViewGroup;)V

    .line 435
    iget v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    .line 436
    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdContext:Lcom/youku/player/ad/pausead/PauseAdContext;

    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    iget v5, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mRequest:I

    iget-object v6, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-virtual {v3, v4, v5, v6}, Lcom/youku/player/ad/pausead/PauseAdContext;->show(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V

    .line 437
    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v3, :cond_5

    .line 438
    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->releaseInvestigate()V

    :cond_5
    throw v2
.end method

.method public showPauseAD()V
    .locals 10

    .prologue
    .line 254
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6682\u505c\u5e7f\u544ashowPauseAD id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->isVideoNoAdv()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->isLocalVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v4

    .line 267
    .local v4, "isOfflineAd":Z
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADcanceled:Z

    .line 274
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IUserInfo;->isVip()Z

    move-result v1

    if-nez v1, :cond_4

    .line 277
    :cond_3
    new-instance v1, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V

    invoke-static {v1}, Lcom/youku/player/ad/OfflineAdSDK;->getPauserollAd(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;)V

    goto :goto_0

    .line 306
    :cond_4
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :cond_5
    new-instance v9, Lcom/youku/player/goplay/GetVideoAdvService;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v9, v1}, Lcom/youku/player/goplay/GetVideoAdvService;-><init>(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 310
    .local v9, "getVideoAdvService":Lcom/youku/player/goplay/GetVideoAdvService;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    new-instance v0, Lcom/youku/player/ad/AdGetInfo;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, v6, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v8, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v8}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/youku/player/apiservice/IPlayerUiControl;->isVerticalFullScreen()Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/youku/player/ad/AdGetInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Z)V

    .line 315
    .local v0, "adGetInfo":Lcom/youku/player/ad/AdGetInfo;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mTestAd:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mTestAd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 316
    :cond_6
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V

    invoke-virtual {v9, v0, v1, v2}, Lcom/youku/player/goplay/GetVideoAdvService;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto/16 :goto_0

    .line 359
    :cond_7
    iget-object v1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->mTestAd:Ljava/lang/String;

    new-instance v3, Lcom/youku/player/plugin/PluginFullScreenPauseAD$4;

    invoke-direct {v3, p0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD$4;-><init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/youku/player/goplay/GetVideoAdvService;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto/16 :goto_0
.end method
