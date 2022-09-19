.class public Lcom/youku/player/ad/pausead/PauseAdAdsage;
.super Lcom/youku/player/ad/pausead/PauseAd;
.source "PauseAdAdsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/pausead/PauseAdAdsage$1;,
        Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;
    }
.end annotation


# instance fields
.field mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

.field private mMobisageContainer:Landroid/widget/LinearLayout;

.field private mMobisageListener:Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;

.field private mParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/pausead/PauseAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 28
    iput-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 35
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_pause_adsage_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mAdView:Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdAdsage;->findView()V

    .line 37
    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_mobisage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    .line 93
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdProductPlacement;->destoryAdView()V

    .line 72
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 74
    :cond_0
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    .line 75
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mActivity:Landroid/app/Activity;

    .line 76
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 77
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 78
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 79
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 80
    return-void
.end method

.method public removeAd()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdProductPlacement;->destoryAdView()V

    .line 86
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 89
    :cond_0
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
    .locals 5
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "request"    # I
    .param p3, "callback"    # Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .prologue
    const/4 v4, 0x1

    .line 41
    iput-object p3, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 42
    iput p2, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mRequest:I

    .line 43
    invoke-virtual {p0}, Lcom/youku/player/ad/pausead/PauseAdAdsage;->removeAd()V

    .line 44
    sget-boolean v1, Lcom/youku/player/ad/imagead/ImageAdAdsage;->isMobiSageSDKInit:Z

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/youku/player/ad/AdVender;->MobiSage_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mobisage/android/MobiSageManager;->setPublisherID(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    sput-boolean v4, Lcom/youku/player/ad/imagead/ImageAdAdsage;->isMobiSageSDKInit:Z

    .line 49
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    new-instance v1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v4}, Lcom/mobisage/android/MobiSageAdProductPlacement;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    .line 54
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageListener:Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;-><init>(Lcom/youku/player/ad/pausead/PauseAdAdsage;Lcom/youku/player/ad/pausead/PauseAdAdsage$1;)V

    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageListener:Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageListener:Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageAdProductPlacement;->setMobiSageAdProductPlacementListener(Lcom/mobisage/android/MobiSageAdProductPlacementListener;)V

    .line 58
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_2

    .line 59
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v2, v2

    mul-int/lit16 v2, v2, 0x12c

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v3, v3

    mul-int/lit16 v3, v3, 0xfa

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mMobisageAd:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 65
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, " start to show adsage pause ad"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
