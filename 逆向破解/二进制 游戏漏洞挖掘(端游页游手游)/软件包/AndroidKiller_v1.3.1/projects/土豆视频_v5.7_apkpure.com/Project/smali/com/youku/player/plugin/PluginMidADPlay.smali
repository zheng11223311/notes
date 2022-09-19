.class public Lcom/youku/player/plugin/PluginMidADPlay;
.super Lcom/youku/player/plugin/PluginVideoAd;
.source "PluginMidADPlay.java"

# interfaces
.implements Lcom/youku/player/apiservice/IAdPlayerCallback;


# instance fields
.field protected TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/plugin/PluginVideoAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 28
    const-string v0, "PluginMidADPlay"

    iput-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/plugin/PluginMidADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginMidADPlay;
    .param p1, "x1"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginMidADPlay;->descripClick(Lcom/youku/player/goplay/VideoAdvInfo;)V

    return-void
.end method

.method private descripClick(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 5
    .param p1, "adInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 242
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 247
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, v0, Lcom/youku/player/goplay/AdvInfo;->CU:Ljava/lang/String;

    .line 251
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u70b9\u51fburl-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeCUM(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 257
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/youku/player/util/AdUtil;->isDownloadAPK(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v3

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/youku/player/plugin/PluginMidADPlay;->creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2, v1, v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method


# virtual methods
.method protected getAdvInfo()Lcom/youku/player/goplay/AdvInfo;
    .locals 2

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVideoAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/youku/player/plugin/PluginVideoAd;->init(Landroid/content/Context;)V

    .line 38
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->play_adButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/youku/player/plugin/PluginMidADPlay$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginMidADPlay$1;-><init>(Lcom/youku/player/plugin/PluginMidADPlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public onADCountUpdate(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 223
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 224
    .local v0, "currentPosition":I
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/plugin/PluginMidADPlay$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/youku/player/plugin/PluginMidADPlay$7;-><init>(Lcom/youku/player/plugin/PluginMidADPlay;II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public onAdEnd(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/AnalyticsWrapper;->adPlayEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUE(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 202
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->removeCurrentAdv()V

    .line 203
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->endMidAD()V

    .line 204
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->isCurrentAdvEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    sget-object v1, Lcom/youku/player/ad/AdState;->REALVIDEO:Lcom/youku/player/ad/AdState;

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginMidADPlay$6;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginMidADPlay$6;-><init>(Lcom/youku/player/plugin/PluginMidADPlay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->dismissDownloadDialog()V

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onAdStart(I)Z
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/youku/player/plugin/PluginVideoAd;->onAdStart(I)Z

    .line 127
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    sget-object v4, Lcom/youku/player/ad/AdState;->MIDAD:Lcom/youku/player/ad/AdState;

    invoke-interface {v3, v4}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 128
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput v6, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    .line 129
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideWebView()V

    .line 131
    const-string v2, ""

    .line 132
    .local v2, "vid":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlackGone()V

    .line 137
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/youku/player/base/YoukuPlayerView;->setWaterMarkVisible(Z)V

    .line 138
    invoke-virtual {p0, v6}, Lcom/youku/player/plugin/PluginMidADPlay;->setInteractiveAdVisible(Z)V

    .line 139
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_4

    .line 140
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v5, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdStartSended:Z

    .line 141
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 143
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/goplay/VideoAdvInfo;->SKIP:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/goplay/VideoAdvInfo;->SKIP:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget v3, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v4, 0x2712

    if-ne v3, v4, :cond_3

    .line 145
    :cond_2
    invoke-virtual {p0, v5}, Lcom/youku/player/plugin/PluginMidADPlay;->setSkipVisible(Z)V

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    const-string v4, "hvideo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v3

    if-nez v3, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->isInteractiveAdShow()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 149
    invoke-virtual {p0, v5}, Lcom/youku/player/plugin/PluginMidADPlay;->setInteractiveAdVisible(Z)V

    .line 159
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 160
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v3, :cond_5

    .line 161
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/youku/player/plugin/PluginMidADPlay$5;

    invoke-direct {v4, p0}, Lcom/youku/player/plugin/PluginMidADPlay$5;-><init>(Lcom/youku/player/plugin/PluginMidADPlay;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    :cond_5
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 170
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/youku/player/util/AnalyticsWrapper;->adPlayStart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V

    .line 175
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->startMidAD()V

    .line 176
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v4}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 180
    :cond_6
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 183
    :cond_7
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeVC(Lcom/youku/player/goplay/AdvInfo;)V

    .line 185
    :cond_8
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v3

    iput-boolean v6, v3, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    .line 186
    iget-object v3, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMidAdLoadingEndListener()V

    .line 187
    return v6

    .line 151
    :cond_9
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget-object v0, v3, Lcom/youku/player/goplay/AdvInfo;->BRS:Ljava/lang/String;

    .line 152
    .local v0, "brs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    iget v1, v3, Lcom/youku/player/goplay/AdvInfo;->AL:I

    .line 153
    .local v1, "count":I
    invoke-virtual {p0, v0, v1}, Lcom/youku/player/plugin/PluginMidADPlay;->startInteractiveAd(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->showInteractiveAd()V

    goto/16 :goto_0
.end method

.method public onPluginAdded()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/youku/player/plugin/PluginVideoAd;->onPluginAdded()V

    .line 100
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginMidADPlay;->getVideoAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v0

    .line 101
    .local v0, "adInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->ad_more:Landroid/widget/TextView;

    new-instance v2, Lcom/youku/player/plugin/PluginMidADPlay$2;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginMidADPlay$2;-><init>(Lcom/youku/player/plugin/PluginMidADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mAdPageHolder:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginMidADPlay$3;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginMidADPlay$3;-><init>(Lcom/youku/player/plugin/PluginMidADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mAdPageHolder:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginMidADPlay$4;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginMidADPlay$4;-><init>(Lcom/youku/player/plugin/PluginMidADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected removeCurrentAdv()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->removeCurrentAdv()V

    .line 95
    :cond_0
    return-void
.end method

.method protected startPlay()V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/ad/MidAdModel;->getCurrentMidAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 65
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/youku/player/BaseMediaPlayer;->setMidAdUrl(Ljava/lang/String;)V

    .line 68
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    goto :goto_0
.end method
