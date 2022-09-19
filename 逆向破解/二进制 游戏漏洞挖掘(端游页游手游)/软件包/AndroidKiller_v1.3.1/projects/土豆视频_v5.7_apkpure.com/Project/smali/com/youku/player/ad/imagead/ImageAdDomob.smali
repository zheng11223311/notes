.class public Lcom/youku/player/ad/imagead/ImageAdDomob;
.super Lcom/youku/player/ad/imagead/ImageAd;
.source "ImageAdDomob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;
    }
.end annotation


# instance fields
.field private isDomobLandingPageOpened:Z

.field private mDomobAd:Lcn/domob/android/ads/PreRollAd;

.field private mDomobContainer:Landroid/widget/RelativeLayout;

.field private mDomobListener:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/imagead/ImageAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 30
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    .line 31
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobListener:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->isDomobLandingPageOpened:Z

    .line 39
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_image_domob_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdView:Landroid/view/View;

    .line 40
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdDomob;->findView()V

    .line 41
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/util/DetailUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mScreenWidth:I

    .line 42
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/util/DetailUtil;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mScreenHeight:I

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/ad/imagead/ImageAdDomob;)Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdDomob;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobListener:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/player/ad/imagead/ImageAdDomob;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdDomob;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->isDomobLandingPageOpened:Z

    return p1
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_domobContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    .line 47
    return-void
.end method

.method private getSceneInfo()Lcn/domob/android/ads/SceneInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v2, Lcn/domob/android/ads/SceneInfo;

    invoke-direct {v2}, Lcn/domob/android/ads/SceneInfo;-><init>()V

    .line 234
    .local v2, "sceneInfo":Lcn/domob/android/ads/SceneInfo;
    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/SceneInfo;->setContext(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v2, v4}, Lcn/domob/android/ads/SceneInfo;->setCoordinatesX(I)V

    .line 236
    invoke-virtual {v2, v4}, Lcn/domob/android/ads/SceneInfo;->setCoordinatesY(I)V

    .line 237
    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/SceneInfo;->setParentViewGroup(Landroid/view/ViewGroup;)V

    .line 238
    const-string/jumbo v3, "sceneId"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/SceneInfo;->setSceneId(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 240
    .local v1, "frameWidth":I
    iget-object v3, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 241
    .local v0, "frameHeight":I
    invoke-virtual {v2, v1}, Lcn/domob/android/ads/SceneInfo;->setSecureAreaWidth(I)V

    .line 242
    invoke-virtual {v2, v0}, Lcn/domob/android/ads/SceneInfo;->setSecureAreaHeight(I)V

    .line 243
    return-object v2
.end method

.method private startDomobAd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 118
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    invoke-virtual {v0}, Lcn/domob/android/ads/PreRollAd;->closePreRollAd()V

    .line 120
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/youku/player/ad/imagead/ImageAdDomob;->disposeAdLoss(I)V

    .line 160
    :goto_0
    return-void

    .line 126
    :cond_2
    iput-boolean v7, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->isDomobLandingPageOpened:Z

    .line 127
    new-instance v0, Lcn/domob/android/ads/PreRollAd;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    const-string v2, "56OJw7GouNKXKEMKtV"

    const-string v3, "16TLucXvAp-nkNUfFcC3Tkoz"

    iget v4, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mScreenWidth:I

    iget v5, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mScreenHeight:I

    new-instance v6, Lcom/youku/player/ad/imagead/ImageAdDomob$1;

    invoke-direct {v6, p0}, Lcom/youku/player/ad/imagead/ImageAdDomob$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdDomob;)V

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/PreRollAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcn/domob/android/ads/VideoIsPlayingListener;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    .line 134
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobListener:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;-><init>(Lcom/youku/player/ad/imagead/ImageAdDomob;Lcom/youku/player/ad/imagead/ImageAdDomob$1;)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobListener:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobListener:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    iput-boolean v7, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->isGetFeedBack:Z

    .line 138
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobListener:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/PreRollAd;->setProRollAdListener(Lcn/domob/android/ads/PreRollAdListener;)V

    .line 139
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    iget v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mSavedCount:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mSavedCount:I

    :goto_1
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/PreRollAd;->setCountdownTotalSeconds(I)V

    .line 141
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdDomob;->getSceneInfo()Lcn/domob/android/ads/SceneInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/PreRollAd;->loadPreRollAd(Lcn/domob/android/ads/SceneInfo;)V

    .line 142
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "start to show Domob image ad"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 144
    sget-object v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdDomob$2;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdDomob$2;-><init>(Lcom/youku/player/ad/imagead/ImageAdDomob;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 139
    :cond_4
    const/4 v0, 0x5

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    invoke-virtual {v0}, Lcn/domob/android/ads/PreRollAd;->closePreRollAd()V

    .line 71
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    .line 74
    :cond_0
    return-void
.end method

.method public isAutoPlayAfterClick()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveOnOrientChange()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->isDomobLandingPageOpened:Z

    return v0
.end method

.method public isSaveOnResume()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->isDomobLandingPageOpened:Z

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public pauseTimer()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    invoke-virtual {v0}, Lcn/domob/android/ads/PreRollAd;->closePreRollAd()V

    .line 61
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 62
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mDomobAd:Lcn/domob/android/ads/PreRollAd;

    .line 64
    :cond_0
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 65
    return-void
.end method

.method public setAutoPlayAfterClick(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/youku/player/ad/imagead/ImageAd;->setContainer(Landroid/view/ViewGroup;)V

    .line 115
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;Lcom/youku/player/ad/imagead/IImageAdCallback;)V
    .locals 1
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "callback"    # Lcom/youku/player/ad/imagead/IImageAdCallback;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 52
    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    .line 53
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v0, v0, Lcom/youku/player/goplay/AdvInfo;->AL:I

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mSavedCount:I

    .line 54
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdDomob;->startDomobAd()V

    .line 55
    return-void
.end method

.method public startTimer()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
