.class public Lcom/youku/player/ad/pausead/PauseAdPunchBox;
.super Lcom/youku/player/ad/pausead/PauseAd;
.source "PauseAdPunchBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/pausead/PauseAdPunchBox$1;,
        Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;
    }
.end annotation


# instance fields
.field private mPunchBoxListener:Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/pausead/PauseAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 26
    iput-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 27
    iput-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;

    .line 32
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_pause_punchbox_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mAdView:Landroid/view/View;

    .line 33
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->findView()V

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->custom_fulladd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    .line 80
    return-void
.end method

.method private removeAllAd()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/punchbox/ads/InterstitialAd;->destroy()V

    .line 85
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/punchbox/ads/InterstitialAd;->destroy()V

    .line 59
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxContainer:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 64
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 65
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 66
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 67
    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;

    .line 68
    return-void
.end method

.method public removeAd()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/punchbox/ads/InterstitialAd;->destroy()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 76
    :cond_0
    return-void
.end method

.method public declared-synchronized start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
    .locals 3
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "request"    # I
    .param p3, "callback"    # Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    .line 39
    iput p2, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mRequest:I

    .line 40
    invoke-direct {p0}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->removeAllAd()V

    .line 41
    new-instance v1, Lcom/punchbox/ads/InterstitialAd;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/punchbox/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    .line 42
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/punchbox/ads/InterstitialAd;->setCloseMode(I)V

    .line 43
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;-><init>(Lcom/youku/player/ad/pausead/PauseAdPunchBox;Lcom/youku/player/ad/pausead/PauseAdPunchBox$1;)V

    iput-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchBoxListener:Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;

    invoke-virtual {v1, v2}, Lcom/punchbox/ads/InterstitialAd;->setAdListener(Lcom/punchbox/listener/AdListener;)V

    .line 47
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/punchbox/ads/InterstitialAd;->donotReloadAfterClose()V

    .line 48
    new-instance v0, Lcom/punchbox/ads/AdRequest;

    invoke-direct {v0}, Lcom/punchbox/ads/AdRequest;-><init>()V

    .line 49
    .local v0, "adRequest":Lcom/punchbox/ads/AdRequest;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/punchbox/ads/AdRequest;->setOrientation(I)V

    .line 50
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPunchboxAd:Lcom/punchbox/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/punchbox/ads/InterstitialAd;->loadAd(Lcom/punchbox/ads/AdRequest;)V

    .line 51
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "start to show punchbox pause ad"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 38
    .end local v0    # "adRequest":Lcom/punchbox/ads/AdRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
