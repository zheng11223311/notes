.class public Lcom/youku/player/plugin/MediaPlayerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;
    }
.end annotation


# static fields
.field public static final DEFAULT_PLAY_RATE:I = 0xa

.field public static final PLAY_100:I = 0x64

.field public static final PLAY_50:I = 0x32

.field public static final PLAY_75:I = 0x4b

.field public static final PLAY_FULL:I = -0x1

.field private static final PLAY_RATE_MAX:I = 0x14

.field private static final PLAY_RATE_MIN:I = 0x5

.field public static is:Ljava/io/InputStream;

.field public static mHistoryReplayTime:I

.field public static mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

.field public static mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

.field public static mILanguageCode:Lcom/youku/player/apiservice/ILanguageCode;

.field public static mIPayCallBack:Lcom/youku/player/apiservice/IPayCallBack;

.field public static mIToast:Lcom/youku/player/apiservice/IToast;

.field public static mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

.field public static mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

.field public static playCode:Ljava/lang/String;


# instance fields
.field private adPausedPosition:I

.field public changeQuality:Z

.field private context:Landroid/support/v4/app/FragmentActivity;

.field public currentOriention:Lcom/youku/player/plugin/Orientation;

.field private handler:Landroid/os/Handler;

.field public hasRight:Z

.field public isADInterrupt:Z

.field public isADShowing:Z

.field public isAdEndSended:Z

.field public isAdStartSended:Z

.field public isChangeLan:Z

.field public isComplete:Z

.field public isDLNA:Z

.field public isFullScreen:Z

.field public isLoading:Z

.field private isLooping:Z

.field public isPause:Z

.field public isPlayCalled:Z

.field public isReleased:Z

.field public isSeeking:Z

.field public isStartPlay:Z

.field public isVVBegin998Send:Z

.field private loopEndTime:I

.field private loopStartTime:I

.field public mAdType:I

.field private mEnhanceTimer:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

.field public mIDanmakuEnable:Lcom/youku/player/apiservice/IDanmakuEnable;

.field private mPlayRate:I

.field private mPlayRequest:Lcom/youku/player/request/PlayRequest;

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field public mSubtitleDownloadThread:Lcom/youku/player/subtitle/SubtitleDownloadThread;

.field public mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

.field public nowVid:Ljava/lang/String;

.field private offlinePrerollAd:Lcom/youdo/vo/XAdInstance;

.field public onChangeOrient:Z

.field public pauseDuringSeek:Z

.field public pluginManager:Lcom/youku/player/plugin/PluginManager;

.field public subtitleHandler:Landroid/os/Handler;

.field public videoInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "-998"

    sput-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 152
    const/16 v0, 0xa

    sput v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mHistoryReplayTime:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 4
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p3, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->onChangeOrient:Z

    .line 95
    iput v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    .line 98
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdStartSended:Z

    .line 99
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdEndSended:Z

    .line 102
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 107
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    .line 110
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isDLNA:Z

    .line 114
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    .line 115
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADInterrupt:Z

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 127
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    .line 128
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    .line 129
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeQuality:Z

    .line 132
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlayCalled:Z

    .line 141
    iput v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->adPausedPosition:I

    .line 143
    const/16 v0, 0xa

    iput v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    .line 148
    new-instance v0, Lcom/youku/player/plugin/MediaPlayerDelegate$1;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$1;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->handler:Landroid/os/Handler;

    .line 322
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    .line 949
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->hasRight:Z

    .line 1629
    new-instance v0, Lcom/youku/player/plugin/MediaPlayerDelegate$8;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$8;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->subtitleHandler:Landroid/os/Handler;

    .line 1991
    iput v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopStartTime:I

    .line 1992
    iput v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopEndTime:I

    .line 1993
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping:Z

    .line 249
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->offlinePrerollAd:Lcom/youdo/vo/XAdInstance;

    .line 251
    iput-object p2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 252
    iput-object p3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 253
    invoke-interface {p2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getPluginManager()Lcom/youku/player/plugin/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/apiservice/IPlayerUiControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p1, "x1"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "x2"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->prepareAndStartPlayVideo(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/apiservice/IPlayerAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    return-object v0
.end method

.method public static addIntervalHistory(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 1
    .param p0, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 239
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IVideoHistoryInfo;->addIntervalHistory(Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0
.end method

.method public static addReleaseHistory(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 1
    .param p0, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 233
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IVideoHistoryInfo;->addReleaseHistory(Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0
.end method

.method private changeVideoQualitySmooth(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 1499
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideoQuality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    sget v0, Lcom/youku/player/goplay/Profile;->videoQuality:I

    invoke-static {v0, p1}, Lcom/youku/player/Track;->onSmoothChangeVideoQualityStart(II)V

    .line 1501
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->setVideoQuality(I)V

    .line 1502
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/player/BaseMediaPlayer;->switchDataSource(Ljava/lang/String;)V

    .line 1505
    :cond_0
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-virtual {v0, v1, p1}, Lcom/youku/player/apiservice/PlantformController;->onQualitySmoothChangeStart(Lcom/youku/player/apiservice/IPlayerUiControl;I)V

    .line 1506
    return-void
.end method

.method private dismissPauseAD()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->dismissPauseAD()V

    .line 583
    return-void
.end method

.method private getLoadingTimeOutByPlayType()I
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 551
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v2, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 553
    :cond_1
    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 555
    .local v0, "isLocal":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0
.end method

.method private getPreparingTimeOutByPlayType()I
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 543
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v2, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v1

    .line 545
    :cond_1
    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 547
    .local v0, "isLocal":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0
.end method

.method public static getRecordFromLocal(Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 5
    .param p0, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/player/apiservice/IVideoHistoryInfo;->getVideoHistoryInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v1

    .line 217
    .local v1, "videoInfo":Lcom/youku/player/module/VideoHistoryInfo;
    if-eqz v1, :cond_0

    .line 218
    iget v2, v1, Lcom/youku/player/module/VideoHistoryInfo;->playTime:I

    mul-int/lit16 v0, v2, 0x3e8

    .line 219
    .local v0, "playHistory":I
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 223
    .end local v0    # "playHistory":I
    .end local v1    # "videoInfo":Lcom/youku/player/module/VideoHistoryInfo;
    :cond_0
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordFromLocal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-object p0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1539
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v0, :cond_0

    .line 1540
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    .line 1542
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private goPay(I)Z
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isTrialOver(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->needPay()V

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSuccessfullyGetVideoUrl(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 5
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v4, 0x0

    .line 1284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    .line 1287
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u64ad\u653e\u4fe1\u606f\u83b7\u53d6\u6210\u529f"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mSubtitleDownloadThread:Lcom/youku/player/subtitle/SubtitleDownloadThread;

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mSubtitleDownloadThread:Lcom/youku/player/subtitle/SubtitleDownloadThread;

    invoke-virtual {v1}, Lcom/youku/player/subtitle/SubtitleDownloadThread;->stopSelf()V

    .line 1292
    iput-object v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mSubtitleDownloadThread:Lcom/youku/player/subtitle/SubtitleDownloadThread;

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->clearSubtitle()V

    .line 1296
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 1297
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/Attachment;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1298
    sget-object v1, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v2, "handleSuccessfullyGetVideoUrl : downloadSubtitles"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->downloadSubtitles(Ljava/util/List;Ljava/lang/String;)V

    .line 1304
    :goto_0
    return-void

    .line 1301
    :cond_1
    sget-object v1, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v2, "handleSuccessfullyGetVideoUrl : no subtitle"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v2, -0x1

    invoke-interface {v1, v4, v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V

    goto :goto_0
.end method

.method private isVideoInfoStartToPlay(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 3
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v0, 0x0

    .line 1606
    if-nez p1, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onNewPlayRequest(Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 6
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1772
    iget-object v0, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    .line 1773
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlayCalled:Z

    .line 1774
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1775
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v2, "mf"

    invoke-static {v0, v5, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->dismissImageAD()V

    .line 1783
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0, v1, v5}, Lcom/youku/player/util/DisposableStatsUtils;->disposeNotPlayedAd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;I)V

    .line 1785
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1786
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVideoUrlOutOfDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1787
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "video url is out of date, play without adv."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iput-boolean v3, p1, Lcom/youku/player/module/PlayVideoInfo;->noAdv:Z

    .line 1790
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isHttp4xxError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1791
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "video 4xx error, play without adv."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iput-boolean v3, p1, Lcom/youku/player/module/PlayVideoInfo;->noAdv:Z

    .line 1796
    :cond_3
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->sendVVAdvReturn()V

    .line 1797
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->resetVideoInfoAndRelease()V

    .line 1798
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->dismissPauseAD()V

    .line 1799
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->releaseInvestigate()V

    .line 1800
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->dismissInteractiveAD()V

    .line 1801
    iput-boolean v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 1802
    iput-boolean v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    .line 1803
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetting()V

    .line 1804
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    sget-object v1, Lcom/youku/player/ad/AdState;->INITIALIZE:Lcom/youku/player/ad/AdState;

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 1805
    return-void
.end method

.method private prepareAndStartPlayVideo(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 5
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1307
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isVideoInfoStartToPlay(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1308
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "new video is started, this will stop"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :goto_0
    return-void

    .line 1311
    :cond_0
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeQuality:Z

    .line 1312
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->hasRight:Z

    .line 1313
    invoke-static {p2}, Lcom/youku/player/util/AdUtil;->isAdvVideoType(Lcom/youku/player/goplay/VideoAdvInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    .line 1314
    .local v0, "isShowImageAD":Z
    :goto_1
    if-nez v0, :cond_1

    .line 1315
    iput-object p2, p1, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 1316
    :cond_1
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->addAdvToCachePathIfNecessary()Z

    .line 1318
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 1319
    iget-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    if-eqz v3, :cond_2

    .line 1320
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v1, v3, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    .line 1321
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v2, v3, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    .line 1322
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    .line 1326
    :cond_2
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v3, :cond_3

    .line 1327
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    iget-object v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v4, v3, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 1330
    :cond_3
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v3}, Lcom/youku/player/BaseMediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1331
    :cond_4
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 1332
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginManager;->onChangeVideo()V

    .line 1335
    :cond_5
    if-eqz v0, :cond_7

    .line 1336
    iput v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    .line 1337
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1, p2}, Lcom/youku/player/apiservice/IPlayerAdControl;->showImageAD(Lcom/youku/player/goplay/VideoAdvInfo;)V

    goto :goto_0

    .end local v0    # "isShowImageAD":Z
    :cond_6
    move v0, v2

    .line 1313
    goto :goto_1

    .line 1339
    .restart local v0    # "isShowImageAD":Z
    :cond_7
    iput v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    .line 1340
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showLoginDialog()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isAdvEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1342
    sget v1, Lcom/youku/player/ad/PreAdTimes;->times:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/youku/player/ad/PreAdTimes;->times:I

    .line 1344
    :cond_8
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    goto :goto_0
.end method

.method private resetVideoInfoAndRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1170
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->clearSubtitle()V

    .line 1172
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V

    .line 1174
    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    .line 1175
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1176
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->resetAndReleaseDanmakuInfo()V

    .line 1177
    invoke-static {v3}, Lcom/youku/player/Track;->setTrackChangeVideoQualtiy(Z)V

    .line 1178
    iput v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    .line 1179
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    .line 1180
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    if-nez v0, :cond_3

    .line 1181
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 1182
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/statistics/IRVideoWrapper;->videoEnd(Landroid/content/Context;)V

    .line 1183
    sput-boolean v3, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    .line 1184
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->clear()V

    .line 1189
    :goto_0
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 1190
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->clearMidAD()V

    .line 1192
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0, v3}, Lcom/youku/player/apiservice/IPlayerAdControl;->setImageAdShowing(Z)V

    .line 1194
    :cond_1
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isVVBegin998Send:Z

    .line 1195
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdStartSended:Z

    .line 1196
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdEndSended:Z

    .line 1197
    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADInterrupt:Z

    .line 1199
    :cond_2
    return-void

    .line 1187
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    goto :goto_0
.end method

.method private sendVVAdvReturn()V
    .locals 11

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isAdvEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v4, "-995"

    iget-object v5, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-object v7, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    iget-boolean v8, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    .line 1164
    :cond_0
    return-void
.end method

.method public static setICacheInfo(Lcom/youku/player/apiservice/ICacheInfo;)V
    .locals 0
    .param p0, "iDownInfo"    # Lcom/youku/player/apiservice/ICacheInfo;

    .prologue
    .line 187
    sput-object p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 188
    return-void
.end method

.method public static setIDownloadApk(Lcom/youku/player/apiservice/IDownloadApk;)V
    .locals 0
    .param p0, "downloadApk"    # Lcom/youku/player/apiservice/IDownloadApk;

    .prologue
    .line 207
    sput-object p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    .line 208
    return-void
.end method

.method public static setILanguageCode(Lcom/youku/player/apiservice/ILanguageCode;)V
    .locals 0
    .param p0, "languageCode"    # Lcom/youku/player/apiservice/ILanguageCode;

    .prologue
    .line 203
    sput-object p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mILanguageCode:Lcom/youku/player/apiservice/ILanguageCode;

    .line 204
    return-void
.end method

.method public static setIToast(Lcom/youku/player/apiservice/IToast;)V
    .locals 0
    .param p0, "iToast"    # Lcom/youku/player/apiservice/IToast;

    .prologue
    .line 199
    sput-object p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIToast:Lcom/youku/player/apiservice/IToast;

    .line 200
    return-void
.end method

.method public static setIUserInfo(Lcom/youku/player/apiservice/IUserInfo;)V
    .locals 0
    .param p0, "iUserInfo"    # Lcom/youku/player/apiservice/IUserInfo;

    .prologue
    .line 191
    sput-object p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    .line 192
    return-void
.end method

.method public static setIVideoHistoryInfo(Lcom/youku/player/apiservice/IVideoHistoryInfo;)V
    .locals 0
    .param p0, "iVideoHistoryInfo"    # Lcom/youku/player/apiservice/IVideoHistoryInfo;

    .prologue
    .line 195
    sput-object p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    .line 196
    return-void
.end method

.method private showPauseADForDLNA()V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->showPauseAD()V

    .line 317
    :cond_0
    return-void
.end method

.method private startPlay()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 591
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v1, v0, Lcom/youku/player/BaseMediaPlayer;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 592
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->start()V

    .line 594
    :cond_0
    return-void
.end method


# virtual methods
.method public changeDecodeMode(Z)V
    .locals 3
    .param p1, "isHardware"    # Z

    .prologue
    .line 1620
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDecodeMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 1622
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->setHardwareDecode(Z)V

    .line 1623
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1624
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->recreateSurfaceHolder()V

    .line 1625
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1626
    return-void
.end method

.method public changeVideoLanguage(Ljava/lang/String;)V
    .locals 14
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1514
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeVideoLanguage:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iput-boolean v6, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    .line 1516
    sput-object p1, Lcom/youku/player/goplay/Profile;->langCode:Ljava/lang/String;

    .line 1517
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v4

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v11, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    move-object v0, p0

    move v5, v3

    move v7, v6

    move v8, v3

    move-object v10, v2

    move-object v12, v2

    move-object v13, v2

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 1476
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->isPause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1477
    :cond_0
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQualityByRestart(I)V

    .line 1481
    :goto_0
    return-void

    .line 1479
    :cond_1
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQualitySmooth(I)V

    goto :goto_0
.end method

.method public changeVideoQualityByRestart(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 1484
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideoQuality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->setVideoQuality(I)V

    .line 1486
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 1487
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/Track;->onChangeVideoQualityStart(Landroid/content/Context;)V

    .line 1488
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/youku/player/Track;->setTrackPlayLoading(Z)V

    .line 1489
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeQuality:Z

    .line 1491
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1492
    return-void
.end method

.method public clearEnd()V
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public closeEnhanceMode()V
    .locals 3

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mEnhanceTimer:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mEnhanceTimer:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->cancel()V

    .line 1844
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/player/Track;->changeEnhanceSwitchCloseTimes()V

    .line 1845
    return-void

    .line 1841
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x0

    const v2, 0x3f828f5c    # 1.02f

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/BaseMediaPlayer;->setEnhanceMode(ZF)V

    goto :goto_0
.end method

.method public decreasePlayRate(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    const/4 v1, 0x5

    .line 1575
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    .line 1576
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    if-ge v0, v1, :cond_0

    .line 1577
    iput v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    .line 1578
    :cond_0
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setPlayRate(I)V

    .line 1579
    return-void
.end method

.method public downloadSubtitles(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/Attachment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1652
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/Attachment;>;"
    new-instance v0, Lcom/youku/player/subtitle/SubtitleDownloadThread;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->subtitleHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p2}, Lcom/youku/player/subtitle/SubtitleDownloadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mSubtitleDownloadThread:Lcom/youku/player/subtitle/SubtitleDownloadThread;

    .line 1654
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mSubtitleDownloadThread:Lcom/youku/player/subtitle/SubtitleDownloadThread;

    invoke-virtual {v0, p1}, Lcom/youku/player/subtitle/SubtitleDownloadThread;->setTask(Ljava/util/List;)V

    .line 1656
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mSubtitleDownloadThread:Lcom/youku/player/subtitle/SubtitleDownloadThread;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleDownloadThread;->start()V

    .line 1657
    return-void
.end method

.method public enableVoice(I)V
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->enableVoice(I)V

    .line 1698
    :cond_0
    return-void
.end method

.method public finishActivity()V
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 953
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 954
    return-void
.end method

.method public getAdPausedPosition()I
    .locals 1

    .prologue
    .line 1688
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->adPausedPosition:I

    return v0
.end method

.method public getAdvDuration()I
    .locals 1

    .prologue
    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getAdvDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 675
    :goto_0
    return v0

    .line 673
    :catch_0
    move-exception v0

    .line 675
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 661
    :goto_0
    return v0

    .line 658
    :catch_0
    move-exception v0

    .line 661
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoopEndTime()I
    .locals 1

    .prologue
    .line 1999
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopEndTime:I

    return v0
.end method

.method public getLoopStartTime()I
    .locals 1

    .prologue
    .line 2006
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopStartTime:I

    return v0
.end method

.method public getOfflinePrerollAd()Lcom/youdo/vo/XAdInstance;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->offlinePrerollAd:Lcom/youdo/vo/XAdInstance;

    return-object v0
.end method

.method public getPlayRate()I
    .locals 1

    .prologue
    .line 1582
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    return v0
.end method

.method public getPlayRequest()Lcom/youku/player/request/PlayRequest;
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRequest:Lcom/youku/player/request/PlayRequest;

    return-object v0
.end method

.method public getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRequest:Lcom/youku/player/request/PlayRequest;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRequest:Lcom/youku/player/request/PlayRequest;

    invoke-virtual {v0}, Lcom/youku/player/request/PlayRequest;->getPlayVideoinfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 2068
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    return-object v0
.end method

.method public getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getVideoHeight()I

    move-result v0

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoInfoSuccess(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 6
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    const v5, 0xea60

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1239
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "handleSuccessfullyGetVideoUrl  activity is finish, return"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isVerticalFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "local"

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goSmall()V

    .line 1252
    :cond_1
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/youku/player/module/PlayVideoInfo;->getAdMid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->setMidADInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-virtual {p2}, Lcom/youku/player/module/PlayVideoInfo;->getAdPause()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->setPauseTestAd(Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->handleSuccessfullyGetVideoUrl(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 1258
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1259
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const-string v1, ""

    invoke-interface {v0, v1, v4, v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->initDanmakuManager(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1262
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getCid()I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/youku/player/apiservice/IPlayerUiControl;->initDanmakuManager(Ljava/lang/String;IZ)V

    .line 1264
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8fdb\u5165\u89c6\u9891\u64ad\u653e\uff0c\u7b2c\u4e00\u8bf7\u6c42\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    div-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u7684\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1268
    :cond_4
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u7f13\u5b58\u89c6\u9891\u6216\u8005\u5f39\u5e55\u5f00\u5173\u5173\u95ed\uff0c\u4e0d\u8bf7\u6c42\u5f39\u5e55\u6570\u636e"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    check-cast v0, Lcom/youku/player/danmaku/DanmakuManager;

    iput-boolean v3, v0, Lcom/youku/player/danmaku/DanmakuManager;->isFirstOpen:Z

    goto/16 :goto_0

    .line 1272
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    div-int/2addr v2, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/youku/player/danmaku/IDanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V

    goto/16 :goto_0
.end method

.method public getVideoUrlInfo(Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 2
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 1225
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u59cb\u83b7\u53d6\u64ad\u653e\u5730\u5740\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1, p0, v0}, Lcom/youku/player/request/PlayRequests;->newPlayRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)Lcom/youku/player/request/PlayRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRequest:Lcom/youku/player/request/PlayRequest;

    .line 1228
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRequest:Lcom/youku/player/request/PlayRequest;

    new-instance v1, Lcom/youku/player/plugin/MediaPlayerDelegate$6;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$6;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v0, p1, v1}, Lcom/youku/player/request/PlayRequest;->playRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V

    .line 1236
    return-void
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getVideoWidth()I

    move-result v0

    .line 646
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceStatus()I
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getVoiceStatus()I

    move-result v0

    .line 1703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public goFullScreen()V
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 962
    return-void
.end method

.method public goSmall()V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goSmall()V

    .line 958
    return-void
.end method

.method public goVerticalFullScreen()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goVerticalFullScreen()V

    .line 966
    return-void
.end method

.method public increasePlayRate(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    const/16 v1, 0x14

    .line 1568
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    .line 1569
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    if-le v0, v1, :cond_0

    .line 1570
    iput v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    .line 1571
    :cond_0
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRate:I

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setPlayRate(I)V

    .line 1572
    return-void
.end method

.method public isAdvShowFinished()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1389
    iget-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADInterrupt:Z

    if-eqz v2, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return v0

    .line 1393
    :cond_1
    iget-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 1394
    goto :goto_0

    .line 1397
    :cond_2
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1398
    goto :goto_0

    .line 1401
    :cond_3
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isAdvEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 2013
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping:Z

    return v0
.end method

.method public isOfflinePrerollAd()Z
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->offlinePrerollAd:Lcom/youdo/vo/XAdInstance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayLocalType()Z
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_0

    .line 1465
    const/4 v0, 0x0

    .line 1467
    :goto_0
    return v0

    :cond_0
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 611
    iget-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    if-eqz v1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v1}, Lcom/youku/player/BaseMediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrialOver(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 455
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v1, p1}, Lcom/youku/player/apiservice/PlantformController;->isTrialOver(Lcom/youku/player/module/VideoUrlInfo;I)Z

    move-result v0

    return v0
.end method

.method public isUsingUMediaplyer()Z
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->isUsingUMediaplayer()Z

    move-result v0

    .line 1592
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public loadingPause()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->pause()V

    .line 303
    :cond_0
    return-void
.end method

.method public needPay()V
    .locals 3

    .prologue
    .line 447
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIPayCallBack:Lcom/youku/player/apiservice/IPayCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 449
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 450
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIPayCallBack:Lcom/youku/player/apiservice/IPayCallBack;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPayCallBack;->needPay(Ljava/lang/String;Lcom/youku/player/module/PayInfo;)V

    .line 452
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1016
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goPay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1018
    :cond_0
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 1019
    invoke-static {v1}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 1021
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 1022
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/plugin/MediaPlayerDelegate$5;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$5;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEnd()V
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 983
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onPause()V

    .line 311
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onStart()V

    .line 307
    return-void
.end method

.method public onVVBegin()V
    .locals 19

    .prologue
    .line 1032
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    const-string v1, "200"

    sput-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    .line 1037
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    if-eqz v1, :cond_2

    .line 1038
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    .line 1039
    const/4 v1, 0x0

    sput-boolean v1, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    goto :goto_0

    .line 1043
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    if-nez v1, :cond_0

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_3

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getUserID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v4, v4, Lcom/youku/player/module/LiveInfo;->isPaid:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, v6, Lcom/youku/player/module/VideoUrlInfo;->bps:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v7, v7, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v7, v7, Lcom/youku/player/module/LiveInfo;->autoplay:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v8, v8, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v8, v8, Lcom/youku/player/module/LiveInfo;->areaCode:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v9, v9, Lcom/youku/player/module/LiveInfo;->dmaCode:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, v10, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    const/16 v11, 0x50

    sget-object v12, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v13, v13, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v14, v14, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-boolean v14, v14, Lcom/youku/player/module/LiveInfo;->isVip:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/youku/player/config/MediaPlayerConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mTestid:I

    move/from16 v17, v0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mIstest:I

    move/from16 v18, v0

    invoke-static/range {v1 .. v18}, Lcom/youku/player/Track;->onPlayHlsStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    .line 1064
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    goto/16 :goto_0

    .line 1058
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/config/MediaPlayerConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v5

    iget v5, v5, Lcom/youku/player/config/MediaPlayerConfiguration;->mTestid:I

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v6

    iget v6, v6, Lcom/youku/player/config/MediaPlayerConfiguration;->mIstest:I

    invoke-virtual/range {p0 .. p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/youku/player/Track;->onPlayStart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;IILcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_1
.end method

.method public onVVEnd()V
    .locals 7

    .prologue
    .line 1068
    sget-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/youku/player/Track;->isTrackChangeVideoQualtiy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    if-nez v0, :cond_0

    .line 1074
    sget-object v0, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVVEnd videoInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    .line 1078
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v4

    iget v4, v4, Lcom/youku/player/config/MediaPlayerConfiguration;->mTestid:I

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v5

    iget v5, v5, Lcom/youku/player/config/MediaPlayerConfiguration;->mIstest:I

    invoke-static/range {v0 .. v5}, Lcom/youku/player/Track;->onPlayEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v6

    .line 1083
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openEnhanceMode()V
    .locals 3

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    const/4 v1, 0x1

    const v2, 0x3f828f5c    # 1.02f

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/BaseMediaPlayer;->setEnhanceMode(ZF)V

    .line 1831
    invoke-static {}, Lcom/youku/player/Track;->changeEnhanceSwitchAutoOpenTimes()V

    .line 1833
    :cond_0
    return-void
.end method

.method public openEnhanceModeWithAnim()V
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1819
    new-instance v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mEnhanceTimer:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    .line 1820
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mEnhanceTimer:Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->start()V

    .line 1821
    invoke-static {}, Lcom/youku/player/Track;->changeEnhanceSwitchOpenTimes()V

    .line 1823
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseNoAd()V

    .line 260
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->showPauseAD()V

    .line 264
    :cond_0
    return-void
.end method

.method public pauseByInteractiveAd()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "pause by interactive ad"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->pause()V

    .line 540
    :cond_0
    return-void
.end method

.method public pauseForDLNA()V
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u59cbDLNA\u6682\u505c"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/Track;->pauseForIRVideo(Landroid/content/Context;)V

    .line 270
    invoke-static {}, Lcom/youku/player/Track;->pause()V

    .line 271
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->showPauseADForDLNA()V

    .line 273
    :cond_0
    return-void
.end method

.method public pauseNoAd()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->pauseDanmaku()V

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isSeeking:Z

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseDuringSeek:Z

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->pause()V

    .line 286
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->timerPause()V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1}, Lcom/youku/player/Track;->getAnalyticsVid(Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/AnalyticsWrapper;->playPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/Track;->pauseForIRVideo(Landroid/content/Context;)V

    .line 292
    invoke-static {}, Lcom/youku/player/Track;->pause()V

    .line 294
    :cond_3
    return-void
.end method

.method public playCompleteGoSmall()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->playCompleteGoSmall()V

    .line 970
    return-void
.end method

.method public playHLS(Ljava/lang/String;)V
    .locals 3
    .param p1, "liveid"    # Ljava/lang/String;

    .prologue
    .line 1601
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    invoke-direct {v1, p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/youku/player/base/PlayType;->LIVE:Lcom/youku/player/base/PlayType;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 1602
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 1603
    return-void
.end method

.method public playLocalVideo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 866
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    invoke-direct {v1, p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    sget-object v2, Lcom/youku/player/base/PlayType;->LOCAL_USER_FILE:Lcom/youku/player/base/PlayType;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 867
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 868
    return-void
.end method

.method public playLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "isWaterMark"    # Z

    .prologue
    .line 829
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 830
    return-void
.end method

.method public playLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "isWaterMark"    # Z
    .param p6, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 834
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playLocalVideo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    invoke-direct {v1, p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setCache(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMark(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMarkType(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    sget-object v2, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setLocal(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 839
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 840
    return-void
.end method

.method public playTudouAlbum(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "albumID"    # Ljava/lang/String;
    .param p2, "point"    # I
    .param p3, "languageCode"    # Ljava/lang/String;
    .param p4, "noadv"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1527
    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, p4

    move v6, v2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 1529
    return-void
.end method

.method public playTudouAlbum(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "albumID"    # Ljava/lang/String;
    .param p2, "noadv"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1522
    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    move v6, v2

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 1523
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "tudouquality"    # I
    .param p3, "point"    # I
    .param p4, "playlistCode"    # Ljava/lang/String;
    .param p5, "languageCode"    # Ljava/lang/String;
    .param p6, "noadv"    # Z

    .prologue
    .line 788
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p3

    move/from16 v6, p6

    move/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "tudouquality"    # I
    .param p3, "languageCode"    # Ljava/lang/String;
    .param p4, "noadv"    # Z

    .prologue
    const/4 v2, 0x0

    .line 762
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p4

    move v6, v2

    move v7, v2

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 764
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "tudouquality"    # I
    .param p3, "noadv"    # Z

    .prologue
    const/4 v2, 0x0

    .line 749
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p3

    move v6, v2

    move v7, v2

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 751
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 14
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "tudouquality"    # I
    .param p4, "point"    # I
    .param p5, "noadv"    # Z

    .prologue
    .line 775
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v9, p3

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;ZIZI)V
    .locals 10
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I
    .param p4, "noAdv"    # Z
    .param p5, "tudouquality"    # I

    .prologue
    const/4 v4, 0x0

    .line 1095
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, v4

    move v7, v4

    move v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 1097
    return-void
.end method

.method public playTudouVideoWithPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1130
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    return-void
.end method

.method public playVideo(Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 6
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    const/4 v0, 0x0

    .line 1719
    iget-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1720
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    const/4 v3, -0x2

    invoke-virtual {v2, v3, v0}, Lcom/youku/player/plugin/PluginManager;->onError(II)Z

    .line 1721
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v3, "play video with null vid, return!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRequest:Lcom/youku/player/request/PlayRequest;

    if-eqz v2, :cond_2

    .line 1725
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayRequest:Lcom/youku/player/request/PlayRequest;

    invoke-virtual {v2}, Lcom/youku/player/request/PlayRequest;->cancel()V

    .line 1727
    :cond_2
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playVideo vid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  autoPlay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/youku/player/module/PlayVideoInfo;->autoPlay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onNewPlayRequest(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 1730
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/youku/player/module/PlayVideoInfo;->videoStage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1731
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVideoStage()I

    move-result v2

    iput v2, p1, Lcom/youku/player/module/PlayVideoInfo;->videoStage:I

    .line 1732
    :cond_3
    iget-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->languageCode:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1733
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mILanguageCode:Lcom/youku/player/apiservice/ILanguageCode;

    if-eqz v2, :cond_a

    .line 1734
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mILanguageCode:Lcom/youku/player/apiservice/ILanguageCode;

    invoke-interface {v2}, Lcom/youku/player/apiservice/ILanguageCode;->getLanCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->languageCode:Ljava/lang/String;

    .line 1739
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/youku/player/module/PlayVideoInfo;->getPlayType()Lcom/youku/player/base/PlayType;

    move-result-object v2

    sget-object v3, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    if-ne v2, v3, :cond_7

    .line 1740
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1741
    iget-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->url:Ljava/lang/String;

    .line 1743
    :cond_5
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    if-eqz v2, :cond_6

    .line 1744
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    iget-object v3, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    .line 1745
    .local v1, "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    if-eqz v1, :cond_6

    .line 1746
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 1749
    .end local v1    # "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_6
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionDisable()V

    .line 1752
    :cond_7
    invoke-virtual {p1}, Lcom/youku/player/module/PlayVideoInfo;->getPlayType()Lcom/youku/player/base/PlayType;

    move-result-object v2

    sget-object v3, Lcom/youku/player/base/PlayType;->ONLINE:Lcom/youku/player/base/PlayType;

    if-eq v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/youku/player/module/PlayVideoInfo;->getPlayType()Lcom/youku/player/base/PlayType;

    move-result-object v2

    sget-object v3, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    if-ne v2, v3, :cond_b

    :cond_8
    iget-boolean v2, p1, Lcom/youku/player/module/PlayVideoInfo;->isFromYouku:Z

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v2

    if-nez v2, :cond_b

    sget v2, Lcom/youku/player/ad/PreAdTimes;->times:I

    sget v3, Lcom/youku/player/ad/PreAdTimes;->TIMESTOHINT:I

    if-lt v2, v3, :cond_b

    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1755
    sput v0, Lcom/youku/player/ad/PreAdTimes;->times:I

    .line 1756
    invoke-virtual {p1}, Lcom/youku/player/module/PlayVideoInfo;->getPlayType()Lcom/youku/player/base/PlayType;

    move-result-object v2

    sget-object v3, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    if-ne v2, v3, :cond_9

    const/16 v0, 0x258

    .line 1757
    .local v0, "delayedTime":I
    :cond_9
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1758
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/youku/player/plugin/MediaPlayerDelegate$9;

    invoke-direct {v3, p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate$9;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/module/PlayVideoInfo;)V

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1736
    .end local v0    # "delayedTime":I
    :cond_a
    sget-object v2, Lcom/youku/player/goplay/Profile;->langCode:Ljava/lang/String;

    iput-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->languageCode:Ljava/lang/String;

    goto :goto_1

    .line 1767
    :cond_b
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoUrlInfo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, p1, v0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZZ)V

    .line 696
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 705
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isCache"    # Z
    .param p4, "point"    # I
    .param p5, "videoStage"    # I
    .param p6, "noAdv"    # Z
    .param p7, "isFromYouku"    # Z
    .param p8, "isTudouAlbum"    # Z
    .param p9, "tudouquality"    # I
    .param p10, "playlistCode"    # Ljava/lang/String;
    .param p11, "playlistId"    # Ljava/lang/String;
    .param p12, "albumID"    # Ljava/lang/String;
    .param p13, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 1152
    new-instance v2, Lcom/youku/player/module/PlayVideoInfo$Builder;

    invoke-direct {v2, p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setCache(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setVideoStage(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouAlbum(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p11}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setLocal(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v1

    .line 1155
    .local v1, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {p0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 1156
    return-void
.end method

.method public playVideo(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isCache"    # Z

    .prologue
    const/4 v0, 0x0

    .line 939
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIZ)V

    .line 940
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZI)V
    .locals 10
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I

    .prologue
    const/4 v4, 0x0

    .line 935
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 936
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V
    .locals 14
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I
    .param p4, "videoStage"    # I
    .param p5, "noAdv"    # Z
    .param p6, "isFromYouku"    # Z
    .param p7, "isTudouAlbum"    # Z
    .param p8, "tudouquality"    # I
    .param p9, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 1118
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZIZ)V
    .locals 10
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I
    .param p4, "noAdv"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1090
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v7, v4

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 1091
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "noAdv"    # Z

    .prologue
    .line 943
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIZ)V

    .line 944
    return-void
.end method

.method public playVideoAdvext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "adext"    # Ljava/lang/String;
    .param p3, "adMid"    # Ljava/lang/String;
    .param p4, "adPause"    # Ljava/lang/String;

    .prologue
    .line 716
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    invoke-direct {v1, p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdExt(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdMid(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdPause(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 717
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 718
    return-void
.end method

.method public playVideoAdvext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "adext"    # Ljava/lang/String;
    .param p3, "adMid"    # Ljava/lang/String;
    .param p4, "adPause"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "isCache"    # Z
    .param p7, "point"    # I
    .param p8, "videoStage"    # I
    .param p9, "noAdv"    # Z
    .param p10, "isFromYouku"    # Z
    .param p11, "isTudouAlbum"    # Z
    .param p12, "tudouquality"    # I
    .param p13, "playlistCode"    # Ljava/lang/String;
    .param p14, "playlistId"    # Ljava/lang/String;
    .param p15, "albumID"    # Ljava/lang/String;
    .param p16, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 732
    new-instance v2, Lcom/youku/player/module/PlayVideoInfo$Builder;

    invoke-direct {v2, p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdExt(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdMid(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAdPause(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setCache(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setVideoStage(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p9}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p10}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p11}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouAlbum(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p12}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v1

    .line 737
    .local v1, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {p0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 738
    return-void
.end method

.method public playVideoWhenADOverTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1417
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 1418
    iput-boolean v5, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    .line 1420
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 1422
    .local v0, "download":Lcom/youku/player/apiservice/ICacheInfo;
    if-eqz v0, :cond_0

    .line 1423
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/youku/player/apiservice/ICacheInfo;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1424
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    .line 1426
    .local v1, "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    sget-boolean v3, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v3, :cond_0

    .line 1427
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "youku.m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 1435
    .end local v0    # "download":Lcom/youku/player/apiservice/ICacheInfo;
    .end local v1    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1436
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1438
    iget-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v3, :cond_2

    .line 1439
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    .line 1455
    :goto_0
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->initPlayerPart()V

    .line 1461
    :cond_1
    :goto_1
    return-void

    .line 1441
    :cond_2
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_3

    .line 1442
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v4, Lcom/youku/player/plugin/MediaPlayerDelegate$7;

    invoke-direct {v4, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$7;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1452
    :cond_3
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1457
    :catch_0
    move-exception v2

    .line 1458
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public playVideoWithOutAdv(Ljava/lang/String;I)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "point"    # I

    .prologue
    .line 1100
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIZ)V

    .line 1101
    return-void
.end method

.method public playVideoWithPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 685
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public playVideoWithStage(Ljava/lang/String;ZII)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I
    .param p4, "videoStage"    # I

    .prologue
    const/4 v5, 0x0

    .line 1105
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v5

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 1106
    return-void
.end method

.method public playVideoWithStageTudou(Ljava/lang/String;ZII)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I
    .param p4, "videoStage"    # I

    .prologue
    const/4 v5, 0x0

    .line 1110
    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 1112
    return-void
.end method

.method public prepareSubtitle(Ljava/lang/String;)V
    .locals 6
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 1663
    iget-object v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v4}, Lcom/youku/player/apiservice/IPlayerUiControl;->clearSubtitle()V

    .line 1664
    sget-object v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    if-eqz v4, :cond_0

    .line 1665
    sget-object v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    invoke-interface {v4, p1}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v3

    .line 1666
    .local v3, "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    if-eqz v3, :cond_0

    .line 1667
    iget-object v4, v3, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/youku/player/subtitle/SubtitleOperate;->getSubtitles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1668
    .local v2, "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/DownloadedSubtitle;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/subtitle/DownloadedSubtitle;

    .line 1669
    .local v1, "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    invoke-static {v1}, Lcom/youku/player/subtitle/SubtitleManager;->addSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;)V

    .line 1670
    iget-object v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V

    goto :goto_0

    .line 1674
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    .end local v2    # "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/DownloadedSubtitle;>;"
    .end local v3    # "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_0
    return-void
.end method

.method public rePlayWoVedio()V
    .locals 1

    .prologue
    .line 1680
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomManager;->initChinaUnicomSDK()V

    .line 1681
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 1682
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/youku/player/Track;->setTrackPlayLoading(Z)V

    .line 1683
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1684
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1685
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    .line 330
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseDuringSeek:Z

    .line 331
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 332
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isSeeking:Z

    .line 333
    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/player/p2p/P2pManager;->setUsingP2P(Z)V

    .line 334
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeQuality:Z

    .line 335
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 336
    invoke-static {v2}, Lcom/youku/player/Track;->setPlayerStarted(Z)V

    .line 337
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/Track;->pauseForIRVideo(Landroid/content/Context;)V

    .line 339
    invoke-static {}, Lcom/youku/player/Track;->pause()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_2

    .line 343
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToPlayHistory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->addReleaseHistory(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/plugin/MediaPlayerDelegate$2;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$2;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 366
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->resetAfterRelease()V

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideWebView()V

    .line 372
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    .line 373
    return-void
.end method

.method public replayLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "isWaterMark"    # Z
    .param p5, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 878
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->resetAndReleaseDanmakuInfo()V

    .line 879
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const-string v4, ""

    invoke-interface {v3, v4, v5, v6}, Lcom/youku/player/apiservice/IPlayerUiControl;->initDanmakuManager(Ljava/lang/String;IZ)V

    .line 880
    new-instance v2, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v2}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    .line 881
    .local v2, "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    invoke-virtual {v2, p1}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 882
    iput-object p2, v2, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 883
    invoke-virtual {v2, p3}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 884
    const-string v3, "local"

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 885
    invoke-virtual {v2, v5}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 886
    invoke-virtual {v2, v6}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 887
    iput-boolean p4, v2, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    .line 888
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 889
    iget-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    aput p5, v3, v0

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_0
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    if-eqz v3, :cond_1

    .line 892
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    invoke-interface {v3, p1}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    .line 893
    .local v1, "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    if-eqz v1, :cond_1

    .line 894
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->showid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setShowId(Ljava/lang/String;)V

    .line 895
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->nextVid:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 896
    iget v3, v1, Lcom/youku/player/module/VideoCacheInfo;->show_videoseq:I

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 897
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->picUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setimgurl(Ljava/lang/String;)V

    .line 898
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setVideoLanguage(Ljava/lang/String;)V

    .line 899
    iget v3, v1, Lcom/youku/player/module/VideoCacheInfo;->quality:I

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setCurrentVideoQuality(I)V

    .line 900
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->picUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setItem_img_16_9(Ljava/lang/String;)V

    .line 901
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->episodemode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setEpisodemode(Ljava/lang/String;)V

    .line 902
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->mMediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setMediaType(Ljava/lang/String;)V

    .line 903
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->savePath:Ljava/lang/String;

    .line 904
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->registerNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setRegisterNum(Ljava/lang/String;)V

    .line 905
    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->licenseNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setLicenseNum(Ljava/lang/String;)V

    .line 906
    iget-boolean v3, v1, Lcom/youku/player/module/VideoCacheInfo;->isVerticalVideo:Z

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setVerticalVideo(Z)V

    .line 907
    iget-boolean v3, v1, Lcom/youku/player/module/VideoCacheInfo;->exclusiveLogo:Z

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setExclusiveLogo(Z)V

    .line 910
    .end local v1    # "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_1
    iput-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 911
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 912
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginManager;->onChangeVideo()V

    .line 913
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    new-instance v4, Lcom/youku/player/plugin/MediaPlayerDelegate$4;

    invoke-direct {v4, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$4;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 920
    invoke-virtual {v2, v5}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 921
    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, v2, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-static {v3, p1, v4}, Lcom/youku/player/util/AnalyticsWrapper;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->prepareSubtitle(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 926
    return-void
.end method

.method public replayTudouAlbum(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "albumID"    # Ljava/lang/String;
    .param p2, "noadv"    # Z

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1532
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, p2

    move v6, v2

    move v8, v3

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 1533
    return-void
.end method

.method public replayTudouVideo(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "tudouquality"    # I
    .param p3, "noadv"    # Z

    .prologue
    const/4 v2, 0x0

    .line 800
    const/4 v3, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, p3

    move v6, v2

    move v7, v2

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZIIZZZILjava/lang/String;)V

    .line 802
    return-void
.end method

.method public replayVideo(I)V
    .locals 4
    .param p1, "autoPlay"    # I

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 810
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/plugin/MediaPlayerDelegate$3;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate$3;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 825
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    .line 390
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->reset()V

    .line 392
    :cond_0
    return-void
.end method

.method public resetAndReleaseDanmakuInfo()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->resetAndReleaseDanmakuInfo()V

    .line 1205
    :cond_0
    return-void
.end method

.method public retry()V
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getAdPausedPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekToPausedADShowing(I)V

    .line 997
    return-void
.end method

.method public screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
    .locals 12
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "outFmt"    # I
    .param p6, "logoName"    # Ljava/lang/String;
    .param p7, "logoWidth"    # I
    .param p8, "logoHeight"    # I
    .param p9, "logoLeft"    # I
    .param p10, "logoTop"    # I

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/youku/player/BaseMediaPlayer;->screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I

    move-result v11

    .line 1964
    :goto_0
    return v11

    :cond_0
    const/4 v11, -0x1

    goto :goto_0
.end method

.method public screenShotOneFrame(Ljava/lang/String;IILjava/lang/String;IIII)I
    .locals 11
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "logoName"    # Ljava/lang/String;
    .param p5, "logoWidth"    # I
    .param p6, "logoHeight"    # I
    .param p7, "logoLeft"    # I
    .param p8, "logoTop"    # I

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 1984
    const/4 v0, -0x1

    .line 1986
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I

    move-result v0

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    const/4 v1, 0x1

    .line 400
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 404
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 406
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goPay(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/youku/player/danmaku/IDanmakuManager;->seekToDanmaku(I)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->seekTo(I)V

    .line 412
    iput-boolean v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isSeeking:Z

    .line 413
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, p1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 416
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/youku/player/Track;->setTrackPlayLoading(Z)V

    goto :goto_0
.end method

.method public seekToHistory()V
    .locals 2

    .prologue
    .line 1410
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isNeedLoadedNotify()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 1414
    :cond_1
    return-void
.end method

.method public seekToPausedADShowing(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getAdvDuration()I

    move-result v0

    sub-int/2addr v0, p1

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_1

    .line 1008
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    add-int/lit16 v0, p1, -0x3e8

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    goto :goto_0
.end method

.method public seekWithoutPause(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goPay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 430
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setAccountAndImgUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 2058
    const-string v0, "danmuUserid"

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1, v1}, Lcom/youku/player/goplay/Profile;->setPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2059
    const-string v0, "danmuNickName"

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p2, v1}, Lcom/youku/player/goplay/Profile;->setPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2060
    const-string v0, "danmuUrl"

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p3, v1}, Lcom/youku/player/goplay/Profile;->setPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2061
    const-string/jumbo v0, "star"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "useid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0cnickName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0curl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    return-void
.end method

.method public setAdPausedPosition(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 1692
    iput p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->adPausedPosition:I

    .line 1693
    return-void
.end method

.method public setDanmakuEffect(I)V
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/youku/player/danmaku/IDanmakuManager;->setDanmakuEffect(I)V

    .line 1217
    :cond_0
    return-void
.end method

.method public setDanmakuPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/youku/player/danmaku/IDanmakuManager;->setDanmakuPosition(I)V

    .line 1211
    :cond_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 464
    :cond_0
    return-void
.end method

.method public setFirstUnloaded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 381
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    .line 383
    :cond_0
    return-void
.end method

.method public setIDanmakuEnable(Lcom/youku/player/apiservice/IDanmakuEnable;)V
    .locals 0
    .param p1, "danmakuEnable"    # Lcom/youku/player/apiservice/IDanmakuEnable;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDanmakuEnable:Lcom/youku/player/apiservice/IDanmakuEnable;

    .line 212
    return-void
.end method

.method public setNightMode(FF)V
    .locals 0
    .param p1, "lumRatio"    # F
    .param p2, "colorRatio"    # F

    .prologue
    .line 1857
    return-void
.end method

.method public setOrientionDisable()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionDisable()V

    .line 974
    return-void
.end method

.method public setOrientionEnable()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionEnable()V

    .line 978
    return-void
.end method

.method public setPlayRate(I)V
    .locals 3
    .param p1, "rate"    # I

    .prologue
    .line 1559
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 1560
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1561
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_2

    .line 1562
    const-string v0, "PlayFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->setPlayRate(I)V

    .line 1565
    :cond_2
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->setVideoOrientation(I)V

    .line 1548
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/player/base/YoukuPlayerView;->setOrientation(I)V

    .line 1549
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->resizeMediaPlayer(Z)V

    .line 1551
    :cond_0
    return-void
.end method

.method public setXAdInstance(Lcom/youdo/vo/XAdInstance;)V
    .locals 0
    .param p1, "adInstance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->offlinePrerollAd:Lcom/youdo/vo/XAdInstance;

    .line 1810
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 470
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v5, "\u5f00\u59cb\u64ad\u653e"

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeManager;->getInstance()Lcom/youku/libmanager/SoUpgradeManager;

    move-result-object v2

    const-string v5, "libWasabiJni.so"

    invoke-virtual {v2, v5}, Lcom/youku/libmanager/SoUpgradeManager;->isSoDownloaded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v3, "drm downloading return"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return-void

    .line 477
    :cond_0
    iput-boolean v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    .line 478
    iput-boolean v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    .line 479
    iput-boolean v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseDuringSeek:Z

    .line 481
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getLoadingTimeOutByPlayType()I

    move-result v0

    .line 482
    .local v0, "loadingTimeOutData":I
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPreparingTimeOutByPlayType()I

    move-result v1

    .line 483
    .local v1, "prepareTimeOutData":I
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-nez v2, :cond_1

    .line 484
    invoke-static {}, Lcom/youku/player/BaseMediaPlayer;->getInstance()Lcom/youku/player/BaseMediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->isPause()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->isStatePlay()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 488
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayerDelegate start isLoading="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v0}, Lcom/youku/player/BaseMediaPlayer;->setTimeout(II)V

    .line 490
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v1}, Lcom/youku/player/BaseMediaPlayer;->setTimeout(II)V

    .line 492
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/danmaku/IDanmakuManager;->resumeDanmaku()V

    .line 495
    :cond_2
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v2, v2, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v2, :cond_9

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2, v3}, Lcom/youku/player/Track;->play(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 496
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_3

    .line 497
    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/player/p2p/P2pManager;->reset(Ljava/lang/String;)V

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v2, :cond_4

    .line 500
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->dismissImageAD()V

    .line 502
    :cond_4
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->isPause()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 503
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/ad/MidAdModel;->timerStart()V

    .line 505
    :cond_5
    iget-object v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_6

    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 508
    :cond_7
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlay()V

    .line 509
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->dismissPauseAD()V

    goto/16 :goto_0

    :cond_8
    move v2, v4

    .line 487
    goto/16 :goto_1

    :cond_9
    move v3, v4

    .line 495
    goto :goto_2

    .line 513
    :cond_a
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlay()V

    .line 514
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->dismissPauseAD()V

    goto/16 :goto_0
.end method

.method public startByInteractiveAd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    .line 523
    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    .line 524
    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 526
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-nez v0, :cond_0

    .line 527
    invoke-static {}, Lcom/youku/player/BaseMediaPlayer;->getInstance()Lcom/youku/player/BaseMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlay()V

    .line 530
    return-void
.end method

.method public startForDLNA()V
    .locals 2

    .prologue
    .line 562
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u59cbDLNA\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/youku/player/Track;->play(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 565
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->dismissImageAD()V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 571
    :cond_2
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->dismissPauseAD()V

    .line 576
    :goto_1
    return-void

    .line 564
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 575
    :cond_4
    invoke-direct {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->dismissPauseAD()V

    goto :goto_1
.end method

.method public startLoopVideo(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v1, -0x1

    .line 2023
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    if-eq p1, v1, :cond_2

    if-ne p2, v1, :cond_3

    .line 2028
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    goto :goto_0

    .line 2031
    :cond_3
    const-string v0, "PlayFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start loop video , start :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / end :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 2033
    iput p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopStartTime:I

    .line 2034
    iput p2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopEndTime:I

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping:Z

    .line 2036
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goPay(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2039
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/youku/player/danmaku/IDanmakuManager;->seekToDanmaku(I)V

    .line 2041
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/BaseMediaPlayer;->seekTo(I)V

    .line 2042
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, p1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    goto :goto_0
.end method

.method public startPlayAfterImageAD()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1350
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1351
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->initPlayerPart()V

    .line 1361
    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v0, :cond_0

    .line 1362
    iput-boolean v7, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    .line 1383
    :goto_0
    return-void

    .line 1364
    :cond_0
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "allowONline3G"

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->defaultAllow3G()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->dismissImageAD()V

    .line 1373
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getVideoId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/player/goplay/Profile;->GUID:Ljava/lang/String;

    const-string v3, "net"

    const-string v4, "-998"

    iget-object v5, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-boolean v8, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0

    .line 1378
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    goto :goto_0

    .line 1381
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->setPauseBeforeLoaded(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->stop()V

    .line 602
    :cond_0
    return-void
.end method

.method public stopLoopVideo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping:Z

    .line 2053
    iput v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopStartTime:I

    .line 2054
    iput v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->loopEndTime:I

    .line 2055
    return-void
.end method

.method public submitDanmaku(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "iid"    # Ljava/lang/String;
    .param p3, "playat"    # Ljava/lang/String;
    .param p4, "propertis"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    .line 1278
    new-instance v0, Lcom/youku/player/danmaku/MyGetDanmakuManager;

    invoke-direct {v0}, Lcom/youku/player/danmaku/MyGetDanmakuManager;-><init>()V

    .line 1279
    .local v0, "myGetDanmakuManager":Lcom/youku/player/danmaku/MyGetDanmakuManager;
    iget-object v6, p0, Lcom/youku/player/plugin/MediaPlayerDelegate;->context:Landroid/support/v4/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/danmaku/MyGetDanmakuManager;->submitDanmaku(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1281
    return-void
.end method
