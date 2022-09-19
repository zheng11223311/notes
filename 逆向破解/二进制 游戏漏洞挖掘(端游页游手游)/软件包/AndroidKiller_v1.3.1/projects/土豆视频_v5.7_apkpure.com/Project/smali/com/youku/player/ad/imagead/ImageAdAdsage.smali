.class public Lcom/youku/player/ad/imagead/ImageAdAdsage;
.super Lcom/youku/player/ad/imagead/ImageAd;
.source "ImageAdAdsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;
    }
.end annotation


# static fields
.field public static isMobiSageSDKInit:Z


# instance fields
.field private mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

.field private mMobisageContainer:Landroid/widget/LinearLayout;

.field private mMobisageListener:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

.field mParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->isMobiSageSDKInit:Z

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

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/imagead/ImageAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 28
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 35
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_image_adsage_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mAdView:Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdAdsage;->findView()V

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/ad/imagead/ImageAdAdsage;)Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdAdsage;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageListener:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_mobisage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    .line 41
    return-void
.end method

.method private startMobisageAd()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 108
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdProductPlacement;->destoryAdView()V

    .line 110
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/youku/player/ad/imagead/ImageAdAdsage;->disposeAdLoss(I)V

    .line 151
    :goto_0
    return-void

    .line 116
    :cond_2
    sget-boolean v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->isMobiSageSDKInit:Z

    if-nez v0, :cond_3

    .line 117
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/youku/player/ad/AdVender;->MobiSage_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mobisage/android/MobiSageManager;->setPublisherID(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    sput-boolean v4, Lcom/youku/player/ad/imagead/ImageAdAdsage;->isMobiSageSDKInit:Z

    .line 121
    :cond_3
    new-instance v0, Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v4}, Lcom/mobisage/android/MobiSageAdProductPlacement;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 122
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageListener:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    if-nez v0, :cond_4

    .line 123
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;-><init>(Lcom/youku/player/ad/imagead/ImageAdAdsage;Lcom/youku/player/ad/imagead/ImageAdAdsage$1;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageListener:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageListener:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->isGetFeedBack:Z

    .line 126
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageListener:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdProductPlacement;->setMobiSageAdProductPlacementListener(Lcom/mobisage/android/MobiSageAdProductPlacementListener;)V

    .line 127
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_5

    .line 128
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdProductPlacement;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "start to show adsage ad"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 135
    sget-object v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdAdsage;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdProductPlacement;->destoryAdView()V

    .line 65
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 68
    :cond_0
    return-void
.end method

.method public isAutoPlayAfterClick()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveOnOrientChange()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveOnResume()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public pauseTimer()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdProductPlacement;->destoryAdView()V

    .line 54
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 55
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 57
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->isMobiSageSDKInit:Z

    .line 58
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 59
    return-void
.end method

.method public setAutoPlayAfterClick(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 93
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;Lcom/youku/player/ad/imagead/IImageAdCallback;)V
    .locals 0
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "callback"    # Lcom/youku/player/ad/imagead/IImageAdCallback;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 46
    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    .line 47
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdAdsage;->startMobisageAd()V

    .line 48
    return-void
.end method

.method public startTimer()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
