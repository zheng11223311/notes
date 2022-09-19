.class public final Lcom/youku/player/base/MediaPlayerInit;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isSendPlayBreakEvent:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mliveInfo:Lcom/youku/player/module/LiveInfo;

.field private mliveInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/module/LiveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/base/MediaPlayerInit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/base/MediaPlayerInit;->isSendPlayBreakEvent:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mliveInfos:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/youku/player/base/MediaPlayerInit$1;

    invoke-direct {v0, p0}, Lcom/youku/player/base/MediaPlayerInit$1;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    iput-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->handler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;
    .param p1, "x1"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "x2"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/youku/player/base/MediaPlayerInit;->loadingADOverTime(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;
    .param p1, "x1"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/youku/player/base/MediaPlayerInit;->skipHeadOrSeekToHistory(Lcom/youku/player/apiservice/IPlayerAdControl;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/module/LiveInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mliveInfo:Lcom/youku/player/module/LiveInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/module/LiveInfo;)Lcom/youku/player/module/LiveInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;
    .param p1, "x1"    # Lcom/youku/player/module/LiveInfo;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit;->mliveInfo:Lcom/youku/player/module/LiveInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/youku/player/base/MediaPlayerInit;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mliveInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/base/MediaPlayerInit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/youku/player/base/MediaPlayerInit;->isSendPlayBreakEvent:Z

    return v0
.end method

.method static synthetic access$202(Lcom/youku/player/base/MediaPlayerInit;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/youku/player/base/MediaPlayerInit;->isSendPlayBreakEvent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/youku/player/base/MediaPlayerInit;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/youku/player/base/MediaPlayerInit;->trackError(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/player/base/MediaPlayerInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/youku/player/base/MediaPlayerInit;->onLoadingFailError()V

    return-void
.end method

.method static synthetic access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/base/MediaPlayerInit;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/youku/player/base/MediaPlayerInit;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/player/base/MediaPlayerInit;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/youku/player/base/MediaPlayerInit;->localStartSetDuration()V

    return-void
.end method

.method static synthetic access$900(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/base/MediaPlayerInit;
    .param p1, "x1"    # Lcom/youku/player/apiservice/IPlayerUiControl;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/youku/player/base/MediaPlayerInit;->sentonVVBegin(Lcom/youku/player/apiservice/IPlayerUiControl;)V

    return-void
.end method

.method private loadingADOverTime(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)Z
    .locals 3
    .param p1, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x1

    .line 893
    if-nez p2, :cond_1

    .line 913
    :cond_0
    :goto_0
    return v2

    .line 896
    :cond_1
    invoke-interface {p2}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 897
    invoke-interface {p2}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->removeCurrentAdvInfo()V

    .line 898
    sget-object v0, Lcom/youku/player/ad/AdState;->REALVIDEO:Lcom/youku/player/ad/AdState;

    invoke-interface {p2, v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWhenADOverTime()V

    .line 901
    if-eqz p1, :cond_3

    .line 902
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 904
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$25;

    invoke-direct {v1, p0, p2}, Lcom/youku/player/base/MediaPlayerInit$25;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private localStartSetDuration()V
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u89c6\u9891\u65f6\u95f4\u8bfb\u53d6\u6210\u529f :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->trialByTime()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v1}, Lcom/youku/player/BaseMediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setDurationMills(I)V

    .line 945
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$26;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$26;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onLoadingFailError()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 920
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/Track;->changeVideoQualityOnError(Landroid/content/Context;)V

    .line 921
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    .line 922
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/youku/player/Track;->setVVEndError(Z)V

    .line 923
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sentonVVBegin(Lcom/youku/player/apiservice/IPlayerUiControl;)V
    .locals 2
    .param p1, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;

    .prologue
    const/4 v1, 0x1

    .line 958
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 960
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    if-nez v0, :cond_1

    .line 962
    if-eqz p1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->updateVideoId(Ljava/lang/String;)V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 966
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    if-nez v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVBegin()V

    .line 971
    :cond_1
    return-void
.end method

.method private skipHeadOrSeekToHistory(Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 4
    .param p1, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/16 v3, 0x3e8

    .line 974
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    if-nez v0, :cond_2

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 981
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEEK TO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_1
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v0

    if-gt v0, v3, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isHasHead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$27;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$27;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 999
    :cond_2
    return-void
.end method

.method private trackError(I)V
    .locals 11
    .param p1, "what"    # I

    .prologue
    const/16 v4, 0x7d4

    const/16 v3, 0x3ee

    const/16 v2, 0x3ed

    .line 848
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    if-eqz v0, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_2

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v0, :cond_3

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/player/goplay/Profile;->GUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v4, "-996"

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-object v7, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    iget-object v8, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0

    .line 866
    :cond_3
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v3, :cond_5

    :cond_4
    if-eq p1, v4, :cond_5

    if-eq p1, v2, :cond_5

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_6

    .line 871
    :cond_5
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/player/goplay/Profile;->GUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v4, "-106"

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-object v7, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    iget-object v8, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 880
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/player/goplay/Profile;->GUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v4, "-996"

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-object v7, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    iget-object v8, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V
    .locals 2
    .param p1, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p2, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;
    .param p3, "preAdCallback"    # Lcom/youku/player/apiservice/IAdPlayerCallback;
    .param p4, "midAdCallback"    # Lcom/youku/player/apiservice/IAdPlayerCallback;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {}, Lcom/youku/player/BaseMediaPlayer;->getInstance()Lcom/youku/player/BaseMediaPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    .line 82
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$2;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 96
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$3;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$3;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 109
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/player/base/MediaPlayerInit$4;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 283
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$5;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$5;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 294
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$6;

    invoke-direct {v1, p0, p2}, Lcom/youku/player/base/MediaPlayerInit$6;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnUplayerPreparedListener(Lcom/youku/uplayer/OnUplayerPreparedListener;)V

    .line 307
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$7;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$7;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 330
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$8;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$8;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 346
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$9;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$9;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnTimeOutListener(Lcom/youku/uplayer/OnTimeoutListener;)V

    .line 393
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/youku/player/base/MediaPlayerInit$10;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnCurrentPositionUpdateListener(Lcom/youku/uplayer/OnCurrentPositionUpdateListener;)V

    .line 434
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$11;

    invoke-direct {v1, p0, p3}, Lcom/youku/player/base/MediaPlayerInit$11;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IAdPlayerCallback;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnADPlayListener(Lcom/youku/uplayer/OnADPlayListener;)V

    .line 457
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$12;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/youku/player/base/MediaPlayerInit$12;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnADCountListener(Lcom/youku/uplayer/OnADCountListener;)V

    .line 470
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$13;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/youku/player/base/MediaPlayerInit$13;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnMidADPlayListener(Lcom/youku/uplayer/OnMidADPlayListener;)V

    .line 507
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$14;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$14;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnNetworkSpeedListener(Lcom/youku/uplayer/OnNetworkSpeedListener;)V

    .line 521
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$15;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$15;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnNetworkSpeedPerMinute(Lcom/youku/uplayer/OnNetworkSpeedPerMinute;)V

    .line 527
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$16;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$16;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnBufferPercentUpdateListener(Lcom/youku/uplayer/OnBufferPercentUpdateListener;)V

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/player/base/MediaPlayerInit$17;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnRealVideoStartListener(Lcom/youku/uplayer/OnRealVideoStartListener;)V

    .line 614
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$18;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$18;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnLoadingStatusListener(Lcom/youku/uplayer/OnLoadingStatusListener;)V

    .line 687
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$19;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$19;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnPlayHeartListener(Lcom/youku/player/BaseMediaPlayer$OnPlayHeartListener;)V

    .line 728
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$20;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$20;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnVideoIndexUpdateListener(Lcom/youku/uplayer/OnVideoIndexUpdateListener;)V

    .line 743
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$21;

    invoke-direct {v1, p0, p2}, Lcom/youku/player/base/MediaPlayerInit$21;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnHwDecodeErrorListener(Lcom/youku/uplayer/OnHwDecodeErrorListener;)V

    .line 798
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$22;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$22;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnConnectDelayListener(Lcom/youku/uplayer/OnConnectDelayListener;)V

    .line 812
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$23;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/MediaPlayerInit$23;-><init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnQualityChangeListener(Lcom/youku/uplayer/OnQualityChangeListener;)V

    .line 832
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$24;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$24;-><init>(Lcom/youku/player/base/MediaPlayerInit;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->setOnHttp302DelayListener(Lcom/youku/uplayer/OnHttp302DelayListener;)V

    goto/16 :goto_0
.end method
