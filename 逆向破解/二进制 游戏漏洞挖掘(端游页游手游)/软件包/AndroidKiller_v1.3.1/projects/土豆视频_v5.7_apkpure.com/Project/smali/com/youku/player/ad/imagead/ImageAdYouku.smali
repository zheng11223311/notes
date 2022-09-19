.class public Lcom/youku/player/ad/imagead/ImageAdYouku;
.super Lcom/youku/player/ad/imagead/ImageAd;
.source "ImageAdYouku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;
    }
.end annotation


# instance fields
.field private adImageView:Landroid/widget/ImageView;

.field private closeBtn:Landroid/view/View;

.field private isOnClick:Z

.field private mADClickURL:Ljava/lang/String;

.field private mADURL:Ljava/lang/String;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

.field private mTimerText:Landroid/widget/TextView;

.field private mTimerWrap:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/imagead/ImageAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 36
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->isOnClick:Z

    .line 49
    sget v0, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_image_youku_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdView:Landroid/view/View;

    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->findView()V

    .line 56
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_image_tudou_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdView:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/youku/player/ad/imagead/ImageAdYouku;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYouku;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->adImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/ad/imagead/ImageAdYouku;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYouku;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->showADImageWhenLoaded()V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/player/ad/imagead/ImageAdYouku;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYouku;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mADClickURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/player/ad/imagead/ImageAdYouku;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYouku;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->isOnClick:Z

    return p1
.end method

.method static synthetic access$600(Lcom/youku/player/ad/imagead/ImageAdYouku;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYouku;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimerText:Landroid/widget/TextView;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->btn_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->closeBtn:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->plugin_full_ad_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->adImageView:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->closeBtn:Landroid/view/View;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYouku$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdYouku$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->adImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->image_ad_timer_wrap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimerWrap:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->image_ad_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimerText:Landroid/widget/TextView;

    .line 77
    return-void
.end method

.method private loadImage()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mADURL:Ljava/lang/String;

    new-instance v2, Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    invoke-direct {v2, p0}, Lcom/youku/player/ad/imagead/ImageAdYouku$2;-><init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 194
    :cond_1
    return-void
.end method

.method private showADImageWhenLoaded()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mADClickURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mADClickURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->adImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYouku$3;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdYouku$3;-><init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :goto_0
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 249
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onChangeVideo()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->disposeAdLoss(I)V

    .line 265
    :goto_1
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->adImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdPresent()V

    .line 259
    :cond_3
    sget-object v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYouku$4;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdYouku$4;-><init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->cancel()V

    .line 116
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 122
    :cond_1
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 124
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    .line 125
    return-void
.end method

.method public isAutoPlayAfterClick()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->isOnClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->isDownLoadDialogNotShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveOnOrientChange()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public isSaveOnResume()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public pauseTimer()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->cancel()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    .line 273
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->cancel()V

    .line 100
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 106
    :cond_1
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 108
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    .line 109
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 110
    return-void
.end method

.method public setAutoPlayAfterClick(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->isOnClick:Z

    .line 296
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;Lcom/youku/player/ad/imagead/IImageAdCallback;)V
    .locals 3
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "callback"    # Lcom/youku/player/ad/imagead/IImageAdCallback;

    .prologue
    const/4 v2, 0x0

    .line 81
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 82
    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    .line 83
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mADURL:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->CU:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mADClickURL:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v0, v0, Lcom/youku/player/goplay/AdvInfo;->AL:I

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    .line 86
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimerText:Landroid/widget/TextView;

    iget v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimerWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    :goto_0
    iput-boolean v2, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->isOnClick:Z

    .line 93
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->loadImage()V

    .line 94
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimerWrap:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 277
    iget v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    iget v1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mSavedCount:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;-><init>(Lcom/youku/player/ad/imagead/ImageAdYouku;JJ)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    .line 279
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku$AdCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 281
    :cond_0
    return-void
.end method
