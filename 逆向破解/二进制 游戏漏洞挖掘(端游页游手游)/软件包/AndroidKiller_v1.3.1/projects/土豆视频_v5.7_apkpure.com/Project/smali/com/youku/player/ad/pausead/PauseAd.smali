.class public abstract Lcom/youku/player/ad/pausead/PauseAd;
.super Ljava/lang/Object;
.source "PauseAd.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdView:Landroid/view/View;

.field protected mContainerParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field protected mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

.field protected mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field protected mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field protected mRequest:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAd;->mActivity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/youku/player/ad/pausead/PauseAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 38
    iput-object p3, p0, Lcom/youku/player/ad/pausead/PauseAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 39
    iput-object p4, p0, Lcom/youku/player/ad/pausead/PauseAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAd;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method protected disposeAdLoss(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAd;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v2, "mp"

    invoke-static {v0, p1, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected getParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 61
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAd;->mContainerParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/youku/player/ad/pausead/PauseAd;->mContainerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAd;->mContainerParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public abstract release()V
.end method

.method public abstract removeAd()V
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAd;->mAdView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/youku/player/ad/pausead/PauseAd;->getParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_0
    return-void
.end method

.method public abstract start(Lcom/youku/player/goplay/AdvInfo;ILcom/youku/player/ad/pausead/IPauseAdCallback;)V
.end method
