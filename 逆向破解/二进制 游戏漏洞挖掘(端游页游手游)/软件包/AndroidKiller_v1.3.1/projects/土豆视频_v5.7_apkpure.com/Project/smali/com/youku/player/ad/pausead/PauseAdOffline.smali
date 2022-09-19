.class public Lcom/youku/player/ad/pausead/PauseAdOffline;
.super Lcom/youku/player/ad/pausead/PauseAd;
.source "PauseAdOffline.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mADURL:Ljava/lang/String;

.field private mAdImageView:Landroid/widget/ImageView;

.field private mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mOfflineAdInstance:Lcom/youdo/vo/XAdInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youdo/vo/XAdInstance;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;
    .param p5, "offlineAdInstance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/pausead/PauseAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 27
    iput-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 39
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_pause_youku_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdView:Landroid/view/View;

    .line 40
    iput-object p5, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mOfflineAdInstance:Lcom/youdo/vo/XAdInstance;

    .line 41
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdOffline;->findView()V

    .line 42
    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/ad/pausead/PauseAdOffline;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdOffline;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdOffline;->showADImageWhenLoaded()V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/player/ad/pausead/PauseAdOffline;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdOffline;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->btn_close_pausead:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mCloseBtn:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->plugin_pause_ad_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdImageView:Landroid/widget/ImageView;

    .line 89
    return-void
.end method

.method private init(Lcom/youku/player/goplay/AdvInfo;)V
    .locals 3
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 70
    if-eqz p1, :cond_1

    .line 71
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 72
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mADURL:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mADURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mADURL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mADURL:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mADURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mADURL:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mOfflineAdInstance:Lcom/youdo/vo/XAdInstance;

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflinePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Lcom/youdo/vo/XAdInstance;)V

    .line 82
    :cond_1
    return-void
.end method

.method private initClickListener()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mCloseBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdOffline$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/pausead/PauseAdOffline$1;-><init>(Lcom/youku/player/ad/pausead/PauseAdOffline;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private loadImage()V
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "pause ad loadImage start"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mADURL:Ljava/lang/String;

    new-instance v2, Lcom/youku/player/ad/pausead/PauseAdOffline$2;

    invoke-direct {v2, p0}, Lcom/youku/player/ad/pausead/PauseAdOffline$2;-><init>(Lcom/youku/player/ad/pausead/PauseAdOffline;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 155
    :cond_1
    return-void
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 170
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showADImageWhenLoaded()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideWebView()V

    .line 161
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideInteractivePopWindow()V

    .line 163
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/player/ad/pausead/PauseAdOffline;->setVisible(Z)V

    .line 164
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    iget v1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mRequest:I

    invoke-interface {v0, v1}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdPresent(I)V

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 58
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 59
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 60
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 61
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 62
    return-void
.end method

.method public removeAd()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mAdView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
    .locals 2
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "request"    # I
    .param p3, "callback"    # Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .prologue
    .line 46
    iput-object p3, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 47
    iput p2, p0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mRequest:I

    .line 48
    invoke-direct {p0, p1}, Lcom/youku/player/ad/pausead/PauseAdOffline;->init(Lcom/youku/player/goplay/AdvInfo;)V

    .line 49
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdOffline;->initClickListener()V

    .line 50
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "start show offline pause ad"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdOffline;->loadImage()V

    .line 52
    return-void
.end method
