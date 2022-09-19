.class public Lcom/youku/player/ad/pausead/PauseAdDomob;
.super Lcom/youku/player/ad/pausead/PauseAd;
.source "PauseAdDomob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;
    }
.end annotation


# instance fields
.field private mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

.field private mDomobContainer:Landroid/widget/RelativeLayout;

.field private mDomobListener:Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/pausead/PauseAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 27
    iput-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    .line 28
    iput-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobListener:Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;

    .line 33
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_pause_domob_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mAdView:Landroid/view/View;

    .line 34
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdDomob;->findView()V

    .line 35
    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_domobContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    .line 87
    return-void
.end method

.method private getSceneInfo()Lcn/domob/android/ads/SceneInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v2, Lcn/domob/android/ads/SceneInfo;

    invoke-direct {v2}, Lcn/domob/android/ads/SceneInfo;-><init>()V

    .line 136
    .local v2, "sceneInfo":Lcn/domob/android/ads/SceneInfo;
    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/SceneInfo;->setContext(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v2, v4}, Lcn/domob/android/ads/SceneInfo;->setCoordinatesX(I)V

    .line 138
    invoke-virtual {v2, v4}, Lcn/domob/android/ads/SceneInfo;->setCoordinatesY(I)V

    .line 139
    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/SceneInfo;->setParentViewGroup(Landroid/view/ViewGroup;)V

    .line 140
    const-string/jumbo v3, "sceneId"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/SceneInfo;->setSceneId(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    .local v1, "frameWidth":I
    iget-object v3, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    .local v0, "frameHeight":I
    invoke-virtual {v2, v1}, Lcn/domob/android/ads/SceneInfo;->setSecureAreaWidth(I)V

    .line 144
    invoke-virtual {v2, v0}, Lcn/domob/android/ads/SceneInfo;->setSecureAreaHeight(I)V

    .line 145
    return-object v2
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    invoke-virtual {v0}, Lcn/domob/android/ads/VideoInterstitialAd;->closeVideoInterstitialAd()V

    .line 66
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 67
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    .line 69
    :cond_0
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mActivity:Landroid/app/Activity;

    .line 70
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 71
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 73
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 74
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 75
    return-void
.end method

.method public removeAd()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    invoke-virtual {v0}, Lcn/domob/android/ads/VideoInterstitialAd;->closeVideoInterstitialAd()V

    .line 81
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 83
    :cond_0
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
    .locals 7
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "request"    # I
    .param p3, "callback"    # Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .prologue
    .line 39
    iput-object p3, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 40
    iput p2, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mRequest:I

    .line 41
    invoke-virtual {p0}, Lcom/youku/player/ad/pausead/PauseAdDomob;->removeAd()V

    .line 42
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcn/domob/android/ads/VideoInterstitialAd;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mActivity:Landroid/app/Activity;

    const-string v2, "56OJw7GouNKXKEMKtV"

    const-string v3, "16TLucXvAp-nkNUfF3xfLH3i"

    const/16 v4, 0x4b0

    const/16 v5, 0x3e8

    new-instance v6, Lcom/youku/player/ad/pausead/PauseAdDomob$1;

    invoke-direct {v6, p0}, Lcom/youku/player/ad/pausead/PauseAdDomob$1;-><init>(Lcom/youku/player/ad/pausead/PauseAdDomob;)V

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/VideoInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcn/domob/android/ads/VideoIsPlayingListener;)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobListener:Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;-><init>(Lcom/youku/player/ad/pausead/PauseAdDomob;Lcom/youku/player/ad/pausead/PauseAdDomob$1;)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobListener:Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobListener:Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/VideoInterstitialAd;->setVideoInterstitialAdListener(Lcn/domob/android/ads/VideoInterstitialAdListener;)V

    .line 56
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mDomobAd:Lcn/domob/android/ads/VideoInterstitialAd;

    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdDomob;->getSceneInfo()Lcn/domob/android/ads/SceneInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/VideoInterstitialAd;->loadVideoInterstitialAd(Lcn/domob/android/ads/SceneInfo;)V

    .line 57
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "start to show Domob pause ad"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 60
    return-void
.end method
