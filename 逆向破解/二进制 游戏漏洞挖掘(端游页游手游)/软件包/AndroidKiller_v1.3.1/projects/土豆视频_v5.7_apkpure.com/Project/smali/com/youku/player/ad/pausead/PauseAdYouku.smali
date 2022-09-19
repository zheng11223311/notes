.class public Lcom/youku/player/ad/pausead/PauseAdYouku;
.super Lcom/youku/player/ad/pausead/PauseAd;
.source "PauseAdYouku.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mADClickURL:Ljava/lang/String;

.field private mADURL:Ljava/lang/String;

.field private mAdImageView:Landroid/widget/ImageView;

.field private mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/pausead/PauseAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 37
    iput-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 49
    sget v0, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_pause_youku_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdView:Landroid/view/View;

    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdYouku;->findView()V

    .line 56
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_pause_tudou_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdView:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/ad/pausead/PauseAdYouku;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdYouku;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdYouku;->showADImageWhenLoaded()V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/player/ad/pausead/PauseAdYouku;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdYouku;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/ad/pausead/PauseAdYouku;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdYouku;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADClickURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/ad/pausead/PauseAdYouku;)Lcom/youku/player/goplay/AdvInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdYouku;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/player/ad/pausead/PauseAdYouku;Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdYouku;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/youku/player/ad/pausead/PauseAdYouku;->creatSelectDownloadDialog(Landroid/app/Activity;Z)V

    return-void
.end method

.method private creatSelectDownloadDialog(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isWifi"    # Z

    .prologue
    .line 226
    new-instance v0, Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {v0, p1}, Lcom/youku/player/ui/widget/YpYoukuDialog;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, "downLoadDialog":Lcom/youku/player/ui/widget/YpYoukuDialog;
    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_cancel:I

    new-instance v2, Lcom/youku/player/ad/pausead/PauseAdYouku$4;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/ad/pausead/PauseAdYouku$4;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku;Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 235
    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_ok:I

    new-instance v2, Lcom/youku/player/ad/pausead/PauseAdYouku$5;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/ad/pausead/PauseAdYouku$5;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku;Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 254
    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdYouku$6;

    invoke-direct {v1, p0, v0}, Lcom/youku/player/ad/pausead/PauseAdYouku$6;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku;Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 260
    if-eqz p2, :cond_0

    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_message_wifi:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setMessage(I)V

    .line 261
    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdYouku$7;

    invoke-direct {v1, p0, v0}, Lcom/youku/player/ad/pausead/PauseAdYouku$7;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku;Lcom/youku/player/ui/widget/YpYoukuDialog;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 270
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setCanceledOnTouchOutside(Z)V

    .line 271
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :goto_1
    return-void

    .line 260
    :cond_0
    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_message_3g:I

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->show()V

    .line 275
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-interface {v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->onDownloadDialogShow(Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_1
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->btn_close_pausead:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mCloseBtn:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->plugin_pause_ad_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdImageView:Landroid/widget/ImageView;

    .line 106
    return-void
.end method

.method private init(Lcom/youku/player/goplay/AdvInfo;)V
    .locals 3
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 84
    if-eqz p1, :cond_1

    .line 85
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 86
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADURL:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->CU:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADClickURL:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADURL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/AnalyticsWrapper;->adPlayStart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 95
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedVC(Lcom/youku/player/goplay/AdvInfo;)V

    .line 99
    :cond_1
    return-void
.end method

.method private initClickListener()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mCloseBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdYouku$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/pausead/PauseAdYouku$1;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private loadImage()V
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "pause ad loadImage start"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADURL:Ljava/lang/String;

    new-instance v2, Lcom/youku/player/ad/pausead/PauseAdYouku$2;

    invoke-direct {v2, p0}, Lcom/youku/player/ad/pausead/PauseAdYouku$2;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 177
    :cond_1
    return-void
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 218
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showADImageWhenLoaded()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADClickURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mADClickURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdYouku$3;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/pausead/PauseAdYouku$3;-><init>(Lcom/youku/player/ad/pausead/PauseAdYouku;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideWebView()V

    .line 209
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideInteractivePopWindow()V

    .line 211
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/player/ad/pausead/PauseAdYouku;->setVisible(Z)V

    .line 212
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    iget v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mRequest:I

    invoke-interface {v0, v1}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdPresent(I)V

    .line 215
    :cond_1
    return-void

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 72
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 73
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 74
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 75
    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 76
    return-void
.end method

.method public removeAd()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mAdView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
    .locals 2
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "request"    # I
    .param p3, "callback"    # Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .prologue
    .line 60
    iput-object p3, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 61
    iput p2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mRequest:I

    .line 62
    invoke-direct {p0, p1}, Lcom/youku/player/ad/pausead/PauseAdYouku;->init(Lcom/youku/player/goplay/AdvInfo;)V

    .line 63
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdYouku;->initClickListener()V

    .line 64
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "start show youku pause ad"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdYouku;->loadImage()V

    .line 66
    return-void
.end method
