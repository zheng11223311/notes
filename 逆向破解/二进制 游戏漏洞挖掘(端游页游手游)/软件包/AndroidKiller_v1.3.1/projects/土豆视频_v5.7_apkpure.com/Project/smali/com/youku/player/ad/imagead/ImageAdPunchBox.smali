.class public Lcom/youku/player/ad/imagead/ImageAdPunchBox;
.super Lcom/youku/player/ad/imagead/ImageAd;
.source "ImageAdPunchBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;
    }
.end annotation


# instance fields
.field private mPunchBoxListener:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

.field private mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

.field private mPunchboxContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/imagead/ImageAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 27
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 28
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    .line 32
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_image_punchbox_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mAdView:Landroid/view/View;

    .line 33
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->findView()V

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_punchbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    .line 38
    return-void
.end method

.method private startPunchBoxAd()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/punchbox/ads/InterstitialAd;->dismiss()V

    .line 105
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->disposeAdLoss(I)V

    .line 145
    :goto_0
    return-void

    .line 111
    :cond_2
    new-instance v1, Lcom/punchbox/ads/InterstitialAd;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/punchbox/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 112
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    if-nez v1, :cond_3

    .line 113
    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;-><init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox;Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;)V

    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    .line 117
    :goto_1
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    invoke-virtual {v1, v2}, Lcom/punchbox/ads/InterstitialAd;->setAdListener(Lcom/punchbox/listener/AdListener;)V

    .line 118
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v1, v4}, Lcom/punchbox/ads/InterstitialAd;->setCloseMode(I)V

    .line 119
    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    iget v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mSavedCount:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mSavedCount:I

    :goto_2
    invoke-virtual {v2, v1}, Lcom/punchbox/ads/InterstitialAd;->setDisplayTime(I)V

    .line 121
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/punchbox/ads/InterstitialAd;->donotReloadAfterClose()V

    .line 122
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v1, v3}, Lcom/punchbox/ads/InterstitialAd;->setBackgroundColor(I)V

    .line 123
    new-instance v0, Lcom/punchbox/ads/AdRequest;

    invoke-direct {v0}, Lcom/punchbox/ads/AdRequest;-><init>()V

    .line 124
    .local v0, "adRequest":Lcom/punchbox/ads/AdRequest;
    invoke-virtual {v0, v4}, Lcom/punchbox/ads/AdRequest;->setOrientation(I)V

    .line 125
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/punchbox/ads/InterstitialAd;->loadAd(Lcom/punchbox/ads/AdRequest;)V

    .line 127
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "start to show punchbox fullscreen ad"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 129
    sget-object v1, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;

    invoke-direct {v2, p0}, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 115
    .end local v0    # "adRequest":Lcom/punchbox/ads/AdRequest;
    :cond_3
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    iput-boolean v3, v1, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->isGetFeedBack:Z

    goto :goto_1

    .line 119
    :cond_4
    const/4 v1, 0x5

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/punchbox/ads/InterstitialAd;->destroy()V

    .line 62
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 65
    :cond_0
    return-void
.end method

.method public isAutoPlayAfterClick()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveOnOrientChange()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveOnResume()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public pauseTimer()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/punchbox/ads/InterstitialAd;->destroy()V

    .line 52
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 55
    :cond_0
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 56
    return-void
.end method

.method public setAutoPlayAfterClick(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;Lcom/youku/player/ad/imagead/IImageAdCallback;)V
    .locals 1
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "callback"    # Lcom/youku/player/ad/imagead/IImageAdCallback;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 43
    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    .line 44
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v0, v0, Lcom/youku/player/goplay/AdvInfo;->AL:I

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mSavedCount:I

    .line 45
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->startPunchBoxAd()V

    .line 46
    return-void
.end method

.method public startTimer()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
