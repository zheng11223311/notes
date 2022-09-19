.class public Lcom/youku/player/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/Track$1;,
        Lcom/youku/player/Track$SliceData;,
        Lcom/youku/player/Track$TrackAdType;
    }
.end annotation


# static fields
.field private static final DEFAULT_AD_DELAY:Ljava/lang/String; = "-1"

.field private static final DEFAULT_AD_REQUIRE_TIME:Ljava/lang/String; = "-1"

.field private static final DEFAULT_AD_RS_REQUIRE_TIME:Ljava/lang/String; = "-1"

.field private static final DEFAULT_PLAY_ERROR:Ljava/lang/String; = "0"

.field private static final MAX_LOADINGTIME:J = 0x2bf20L

.field private static TAG:Ljava/lang/String;

.field private static beforeDuration:J

.field private static changeVideoQualityStartTime:J

.field private static heartBeatCount:I

.field public static height:I

.field private static isAdChanged:Z

.field private static isChangeQualityError:Z

.field private static isCompleted:Z

.field private static isFirstVV:Z

.field public static isRealVideoStarted:Z

.field private static loadingToPlayStartTime:J

.field private static mADBeforeDuration:J

.field private static mADDuration:J

.field private static mAd302Delay:I

.field private static mAdBackError:Z

.field private static mAdCountRemain:I

.field private static mAdCountTotal:I

.field private static mAdDelays:Ljava/lang/String;

.field private static mAdEndTime:J

.field private static mAdLevel1Error:I

.field private static mAdLevel2Error:I

.field private static mAdReqError:Ljava/lang/String;

.field private static mAdReqStartTimeStamp:J

.field private static mAdReqTimes:Ljava/lang/String;

.field private static mAdRsReqTimes:Ljava/lang/String;

.field private static mAdStartTime:J

.field private static mAutoPlay:Ljava/lang/String;

.field private static mBeforeDurationAdType:Lcom/youku/player/Track$TrackAdType;

.field private static mCloseEnhanceTimes:I

.field private static mCurrentPlaySlice:Ljava/lang/String;

.field private static mCurrentPlaySliceDetail:Ljava/lang/String;

.field private static mErrorPoint:I

.field private static mGetAdvDuration:J

.field private static mGetAdvTime:J

.field private static mGetPlayListDuration:J

.field private static mIsAdStarted:Z

.field public static mIsChangingLanguage:Z

.field private static mIsPlayStarted:Z

.field private static mOnPaused:Z

.field private static mOpenEnhanceTimes:I

.field private static mOpenEnhanceTimesAuto:I

.field private static mPlayErrorLevel1:I

.field private static mPlayErrorLevel2:I

.field private static mPlayerStarted:Z

.field private static mQulityChangeType:I

.field private static mSeekCount:I

.field private static mSeekDuration:Ljava/lang/String;

.field private static mSeekStartTime:J

.field private static mSlicePlayTime:J

.field private static mSmoothSwitchDetails:Ljava/lang/String;

.field private static mSmoothSwitchPauseDuration:J

.field private static mSmoothSwitchPauseTime:J

.field private static mVVEndError:Z

.field private static mVideo302Delay:I

.field private static mVideoConnectDelayTime:I

.field private static mVideoReqError:Ljava/lang/String;

.field private static mVideoSlices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mVideoSlicesDetail:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/player/Track$SliceData;",
            ">;"
        }
    .end annotation
.end field

.field private static misRequestCalled:Z

.field private static playLoadingEvents:Ljava/lang/String;

.field private static playLoadingPosition:J

.field private static playLoadingStartLocalTime:Ljava/lang/String;

.field private static playLoadingStartTime:J

.field private static playStartedTime:J

.field private static playTime:J

.field private static smoothChangeVideoQualityStartTime:J

.field private static stageStarted:Z

.field private static trackChangeVideoQualtiy:Z

.field public static trackLoadingToPlayStart:Z

.field private static trackPlayLoading:Z

.field private static twentyInterval:I

.field private static usingP2P:Z

.field private static videoQualityToHD2LoadingTime:J

.field private static videoQualityToHD2Times:I

.field private static videoQualityToHDLoadingTime:J

.field private static videoQualityToHDTimes:I

.field private static videoQualityToSDLoadingTime:J

.field private static videoQualityToSDTimes:I

.field public static width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 48
    sput-boolean v2, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    .line 52
    sput-wide v4, Lcom/youku/player/Track;->playStartedTime:J

    .line 56
    sput-boolean v2, Lcom/youku/player/Track;->stageStarted:Z

    .line 58
    sput-wide v4, Lcom/youku/player/Track;->playTime:J

    .line 64
    sput-boolean v2, Lcom/youku/player/Track;->isCompleted:Z

    .line 66
    sput-boolean v2, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 68
    sput-wide v4, Lcom/youku/player/Track;->playLoadingStartTime:J

    .line 70
    sput-wide v4, Lcom/youku/player/Track;->playLoadingPosition:J

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    .line 81
    sput v2, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    .line 83
    sput-wide v4, Lcom/youku/player/Track;->videoQualityToSDLoadingTime:J

    .line 85
    sput v2, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    .line 87
    sput-wide v4, Lcom/youku/player/Track;->videoQualityToHDLoadingTime:J

    .line 90
    sput v2, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    .line 92
    sput-wide v4, Lcom/youku/player/Track;->videoQualityToHD2LoadingTime:J

    .line 95
    sput-boolean v2, Lcom/youku/player/Track;->isRealVideoStarted:Z

    .line 97
    sput-boolean v2, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    .line 99
    sput-boolean v2, Lcom/youku/player/Track;->mIsPlayStarted:Z

    .line 102
    sput-wide v4, Lcom/youku/player/Track;->mAdStartTime:J

    .line 104
    sput-wide v4, Lcom/youku/player/Track;->mAdEndTime:J

    .line 106
    sput-wide v4, Lcom/youku/player/Track;->mADBeforeDuration:J

    .line 108
    sput-wide v4, Lcom/youku/player/Track;->mADDuration:J

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    .line 111
    sput v2, Lcom/youku/player/Track;->mAdCountRemain:I

    .line 112
    sput v2, Lcom/youku/player/Track;->mAdCountTotal:I

    .line 114
    sput-wide v4, Lcom/youku/player/Track;->mAdReqStartTimeStamp:J

    .line 115
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAdReqTimes:Ljava/lang/String;

    .line 116
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    .line 117
    sput v2, Lcom/youku/player/Track;->mAdLevel1Error:I

    .line 118
    sput v2, Lcom/youku/player/Track;->mAdLevel2Error:I

    .line 120
    sput-boolean v2, Lcom/youku/player/Track;->mIsAdStarted:Z

    .line 123
    sput-boolean v2, Lcom/youku/player/Track;->misRequestCalled:Z

    .line 133
    sput-wide v4, Lcom/youku/player/Track;->mGetAdvTime:J

    .line 135
    sput-wide v4, Lcom/youku/player/Track;->mGetAdvDuration:J

    .line 137
    sput-wide v4, Lcom/youku/player/Track;->mGetPlayListDuration:J

    .line 139
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mCurrentPlaySlice:Ljava/lang/String;

    .line 140
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/youku/player/Track;->mVideoSlices:Ljava/util/LinkedHashMap;

    .line 144
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    .line 149
    sput-boolean v1, Lcom/youku/player/Track;->isAdChanged:Z

    .line 153
    const/16 v0, 0x14

    sput v0, Lcom/youku/player/Track;->twentyInterval:I

    .line 154
    sput v1, Lcom/youku/player/Track;->heartBeatCount:I

    .line 170
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mSeekDuration:Ljava/lang/String;

    .line 171
    sput-wide v4, Lcom/youku/player/Track;->mSeekStartTime:J

    .line 179
    sget-object v0, Lcom/youku/player/Track$TrackAdType;->EMPTY:Lcom/youku/player/Track$TrackAdType;

    sput-object v0, Lcom/youku/player/Track;->mBeforeDurationAdType:Lcom/youku/player/Track$TrackAdType;

    .line 186
    sput v3, Lcom/youku/player/Track;->mErrorPoint:I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/Track;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    .line 190
    sput v2, Lcom/youku/player/Track;->mOpenEnhanceTimes:I

    .line 191
    sput v2, Lcom/youku/player/Track;->mOpenEnhanceTimesAuto:I

    .line 192
    sput v2, Lcom/youku/player/Track;->mCloseEnhanceTimes:I

    .line 195
    sput v3, Lcom/youku/player/Track;->mAd302Delay:I

    .line 198
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAutoPlay:Ljava/lang/String;

    .line 791
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    .line 792
    sput v3, Lcom/youku/player/Track;->mQulityChangeType:I

    .line 795
    sput-wide v4, Lcom/youku/player/Track;->mSmoothSwitchPauseTime:J

    .line 796
    sput-wide v4, Lcom/youku/player/Track;->mSmoothSwitchPauseDuration:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    return-void
.end method

.method private static addAdDelays(J)V
    .locals 6
    .param p0, "t"    # J

    .prologue
    .line 1658
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v4, p0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    .local v0, "time":Ljava/lang/String;
    sget-object v1, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    .line 1664
    :goto_0
    sget v1, Lcom/youku/player/Track;->mAdCountRemain:I

    if-lez v1, :cond_0

    .line 1665
    sget v1, Lcom/youku/player/Track;->mAdCountRemain:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/youku/player/Track;->mAdCountRemain:I

    .line 1667
    :cond_0
    return-void

    .line 1662
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    goto :goto_0
.end method

.method public static addAdLevelErrors(IIZ)V
    .locals 2
    .param p0, "level1Error"    # I
    .param p1, "level2Error"    # I
    .param p2, "isPreAd"    # Z

    .prologue
    .line 1686
    sget-boolean v0, Lcom/youku/player/Track;->mOnPaused:Z

    if-eqz v0, :cond_0

    .line 1687
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/Track;->mAdBackError:Z

    .line 1689
    :cond_0
    if-eqz p2, :cond_1

    .line 1690
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/player/Track;->mAdEndTime:J

    .line 1691
    sput p0, Lcom/youku/player/Track;->mAdLevel1Error:I

    .line 1692
    sput p1, Lcom/youku/player/Track;->mAdLevel2Error:I

    .line 1694
    :cond_1
    return-void
.end method

.method private static addAdReqTimes(J)V
    .locals 6
    .param p0, "t"    # J

    .prologue
    .line 1594
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_1

    .line 1595
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v4, p0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "time":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/youku/player/Track;->mAdReqTimes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1600
    sput-object v0, Lcom/youku/player/Track;->mAdReqTimes:Ljava/lang/String;

    .line 1605
    :cond_0
    return-void

    .line 1597
    .end local v0    # "time":Ljava/lang/String;
    :cond_1
    const-string v0, "-1"

    .restart local v0    # "time":Ljava/lang/String;
    goto :goto_0
.end method

.method public static addAdRsReqTimes(JZ)V
    .locals 6
    .param p0, "t"    # J
    .param p2, "isPreAd"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1618
    if-eqz p2, :cond_0

    sget-boolean v1, Lcom/youku/player/Track;->isAdChanged:Z

    if-nez v1, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    sput-boolean v4, Lcom/youku/player/Track;->isAdChanged:Z

    .line 1622
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1623
    .local v0, "time":Ljava/lang/String;
    sget-object v1, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    goto :goto_0

    .line 1626
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    goto :goto_0
.end method

.method private static addCodingFormat(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 1801
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->playH265Segs()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1802
    .local v0, "codingFormat":I
    :goto_0
    const-string/jumbo v1, "video_coding_format"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1801
    .end local v0    # "codingFormat":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static addCommonParam(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v2, 0x0

    .line 1775
    invoke-static {p0}, Lcom/youku/player/Track;->addDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1776
    invoke-static {p0}, Lcom/youku/player/Track;->addIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1777
    invoke-static {p0, p1}, Lcom/youku/player/Track;->addCodingFormat(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object p0

    .line 1778
    invoke-static {p0, p1}, Lcom/youku/player/Track;->addPhoneStream(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object p0

    .line 1779
    sget v3, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v4, 0x2712

    if-ne v3, v4, :cond_3

    .line 1780
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v3, :cond_4

    .line 1782
    .local v2, "isMember":I
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&isMember="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1783
    const/4 v0, 0x0

    .line 1784
    .local v0, "isFeeVideo":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isFeeVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1785
    const/4 v0, 0x1

    .line 1786
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&isFeeVideo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1787
    const/4 v1, 0x0

    .line 1788
    .local v1, "isFeeView":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isFeeView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1789
    const/4 v1, 0x1

    .line 1790
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&isFeeView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1792
    .end local v0    # "isFeeVideo":I
    .end local v1    # "isFeeView":I
    .end local v2    # "isMember":I
    :cond_3
    return-object p0

    .line 1780
    :cond_4
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IUserInfo;->isVip()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static addDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1810
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getDNS()Ljava/util/List;

    move-result-object v1

    .line 1811
    .local v1, "dns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1812
    const-string v3, ""

    .line 1813
    .local v3, "result":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1814
    .local v0, "addr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1815
    goto :goto_0

    .line 1816
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1817
    const-string v4, "dns"

    invoke-static {p0, v4, v3}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1819
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/lang/String;
    .end local p0    # "url":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private static addErrorType(Lcom/youku/player/module/VideoUrlInfo;)I
    .locals 4
    .param p0, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/16 v3, 0x3ef

    .line 1863
    const/4 v0, 0x0

    .line 1864
    .local v0, "errorType":I
    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    if-eqz v1, :cond_1

    .line 1865
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1866
    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    const/16 v2, 0x2bc

    if-eq v1, v2, :cond_0

    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    const/16 v2, 0x321

    if-eq v1, v2, :cond_0

    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_2

    .line 1868
    :cond_0
    const/4 v0, 0x1

    .line 1884
    :cond_1
    :goto_0
    return v0

    .line 1869
    :cond_2
    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    if-ne v1, v3, :cond_3

    .line 1870
    const/4 v0, 0x2

    goto :goto_0

    .line 1872
    :cond_3
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1873
    const/4 v0, 0x4

    goto :goto_0

    .line 1875
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 1878
    :cond_5
    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    const/16 v2, 0x3ee

    if-eq v1, v2, :cond_6

    sget v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    if-ne v1, v3, :cond_7

    .line 1879
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 1881
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1806
    const-string v0, "intrIP"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addLoadingEventToSlice()V
    .locals 3

    .prologue
    .line 384
    sget-object v1, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    const-string v2, "addLoadingEvent"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/youku/player/Track;->mVideoSlices:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/youku/player/Track;->mCurrentPlaySlice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    .local v0, "slice":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/youku/player/Track;->mVideoSlices:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/youku/player/Track;->mCurrentPlaySlice:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_0
    sget-object v1, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    sget-object v1, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/Track$SliceData;

    iget v2, v1, Lcom/youku/player/Track$SliceData;->loadingTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/youku/player/Track$SliceData;->loadingTimes:I

    .line 392
    :cond_1
    return-void
.end method

.method private static addPhoneStream(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 1796
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 1797
    .local v0, "isPhoneStream":Ljava/lang/String;
    :goto_0
    const-string v1, "is_phone_stream"

    invoke-static {p0, v1, v0}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1796
    .end local v0    # "isPhoneStream":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static changeEnhanceSwitchAutoOpenTimes()V
    .locals 1

    .prologue
    .line 1855
    sget v0, Lcom/youku/player/Track;->mOpenEnhanceTimesAuto:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/Track;->mOpenEnhanceTimesAuto:I

    .line 1856
    return-void
.end method

.method public static changeEnhanceSwitchCloseTimes()V
    .locals 1

    .prologue
    .line 1859
    sget v0, Lcom/youku/player/Track;->mCloseEnhanceTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/Track;->mCloseEnhanceTimes:I

    .line 1860
    return-void
.end method

.method public static changeEnhanceSwitchOpenTimes()V
    .locals 1

    .prologue
    .line 1852
    sget v0, Lcom/youku/player/Track;->mOpenEnhanceTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/Track;->mOpenEnhanceTimes:I

    .line 1853
    return-void
.end method

.method public static changeVideoQualityOnError(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 775
    sget-boolean v0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    if-eqz v0, :cond_1

    .line 776
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 777
    sget v0, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    .line 783
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/player/Track;->changeVideoQualityStartTime:J

    .line 784
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    .line 785
    sput-boolean v2, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 786
    sput-boolean v2, Lcom/youku/player/Track;->isChangeQualityError:Z

    .line 788
    :cond_1
    return-void

    .line 778
    :cond_2
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 779
    sget v0, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    goto :goto_0

    .line 780
    :cond_3
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 781
    sget v0, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    goto :goto_0
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1086
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/player/Track;->changeVideoQualityStartTime:J

    .line 1087
    sput-boolean v2, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    .line 1088
    sput-boolean v2, Lcom/youku/player/Track;->mIsPlayStarted:Z

    .line 1089
    sput-boolean v2, Lcom/youku/player/Track;->misRequestCalled:Z

    .line 1090
    sput-boolean v2, Lcom/youku/player/Track;->isRealVideoStarted:Z

    .line 1091
    invoke-static {}, Lcom/youku/player/Track;->init()V

    .line 1092
    return-void
.end method

.method protected static createPlayAction(Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p3, "isFullScreen"    # Z

    .prologue
    .line 973
    new-instance v1, Lcom/youku/analytics/data/PlayActionData$Builder;

    invoke-direct {v1, p1}, Lcom/youku/analytics/data/PlayActionData$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "200"

    invoke-virtual {v1, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaycode(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaytype(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    .line 976
    .local v0, "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    iget-object v1, p2, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    iget-object v1, p2, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/youku/player/goplay/Profile;->ctype:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    iget-object v4, p2, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v5, p2, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/analytics/data/PlayActionData$Builder;->setAntiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 980
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v2

    invoke-static {v2}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/analytics/data/PlayActionData$Builder;->setCurrentFormat(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Lcom/youku/analytics/data/PlayActionData$Builder;->setFull(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Lcom/youku/analytics/data/PlayActionData$Builder;->setContinuePlay(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IUserInfo;->isVip()Z

    move-result v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/youku/analytics/data/PlayActionData$Builder;->setVip(Z)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 988
    invoke-static {v0, p2}, Lcom/youku/player/Track;->setPlayStartParam(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 989
    invoke-static {p0, v0}, Lcom/youku/player/util/AnalyticsWrapper;->playStart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;)V

    .line 990
    return-void

    .line 980
    :cond_1
    const-string v1, "0"

    goto :goto_0

    :cond_2
    const-string v1, "0"

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static forceEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;II)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "isFullScreen"    # Z
    .param p3, "sdkVer"    # Ljava/lang/String;
    .param p4, "testid"    # I
    .param p5, "istest"    # I

    .prologue
    .line 503
    sget-boolean v2, Lcom/youku/player/Track;->mIsPlayStarted:Z

    if-nez v2, :cond_1

    .line 504
    invoke-static {}, Lcom/youku/player/Track;->clear()V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/youku/player/Track;->mIsPlayStarted:Z

    .line 508
    invoke-static {}, Lcom/youku/player/Track;->pause()V

    .line 509
    sget-object v2, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPlayEnd mADDuration:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v8, Lcom/youku/player/Track;->mADDuration:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  playTime:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v8, Lcom/youku/player/Track;->playTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-wide v8, Lcom/youku/player/Track;->mADDuration:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_2

    .line 511
    sget-wide v8, Lcom/youku/player/Track;->playTime:J

    sget-wide v10, Lcom/youku/player/Track;->mADDuration:J

    sub-long/2addr v8, v10

    sput-wide v8, Lcom/youku/player/Track;->playTime:J

    .line 513
    :cond_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-wide v10, Lcom/youku/player/Track;->playTime:J

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    const v11, 0x476a6000    # 60000.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "duration":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_0

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&sessionid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 521
    .local v25, "vvEndUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v16

    .line 523
    .local v16, "id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v2, v5, :cond_1a

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&source="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo$Source;->ordinal()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&format="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/youku/player/Track;->getVideoFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&width="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/Track;->width:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&height="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/Track;->height:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 527
    invoke-static/range {v16 .. v16}, Lcom/baseproject/utils/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 531
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 533
    const/16 v23, 0x0

    .line 534
    .local v23, "userID":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v2, :cond_4

    .line 535
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v23

    .line 537
    :cond_4
    if-eqz v23, :cond_5

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&user_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 540
    :cond_5
    const-string v2, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-wide v10, Lcom/youku/player/Track;->beforeDuration:J

    long-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, "before":Ljava/lang/String;
    const-string v3, "0"

    .line 542
    .local v3, "adBefore":Ljava/lang/String;
    sget-wide v8, Lcom/youku/player/Track;->mADBeforeDuration:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_6

    .line 543
    const-string v2, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-wide v10, Lcom/youku/player/Track;->mADBeforeDuration:J

    long-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 544
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&type=end&duration="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&complete="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v2, Lcom/youku/player/Track;->isCompleted:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&before_duration="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&adv_before_duration="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 547
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&playlistid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 550
    :cond_7
    sget-object v2, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    .line 551
    sget-object v2, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 552
    sget-object v2, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 553
    sget-object v2, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v8, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    .line 560
    :cond_8
    :goto_3
    sget-object v2, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 561
    sget-object v2, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 562
    sget-object v2, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v8, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    .line 569
    :cond_9
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_load_events="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_rates="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_sd_times="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_sd_duration="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lcom/youku/player/Track;->videoQualityToSDLoadingTime:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".00"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_hd_times="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_hd_duration="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lcom/youku/player/Track;->videoQualityToHDLoadingTime:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".00"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_hd2_times="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_hd2_duration="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lcom/youku/player/Track;->videoQualityToHD2LoadingTime:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".00"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getSmoothSwitchDetails()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 580
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x42700000    # 60.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 583
    .local v24, "videoTime":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->BAIDU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v2, v5, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->KUAIBO:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-ne v2, v5, :cond_1f

    .line 585
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_types="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "net"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&os=Android"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&video_time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 597
    :cond_b
    :goto_5
    new-instance v5, Lcom/youku/analytics/data/PlayActionData$Builder;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/youku/player/Track;->isCompleted:Z

    if-eqz v2, :cond_20

    const-string v2, "1"

    :goto_6
    invoke-virtual {v5, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setComplete(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    sget-object v8, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v12, Lcom/youku/player/Track;->videoQualityToSDLoadingTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v26, Lcom/youku/player/Track;->videoQualityToHDLoadingTime:J

    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".00"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget v14, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v26, Lcom/youku/player/Track;->videoQualityToHD2LoadingTime:J

    move-wide/from16 v0, v26

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v26, ".00"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v2 .. v14}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlayEndInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v7

    .line 607
    .local v7, "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    invoke-static {}, Lcom/youku/player/Track;->generatePlayExperience()Ljava/lang/String;

    move-result-object v20

    .line 608
    .local v20, "playExperience":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v2

    if-nez v2, :cond_21

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_experience="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 610
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlayExperience(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 614
    :cond_c
    :goto_7
    invoke-static {}, Lcom/youku/player/Track;->generatePlayExperienceDetail()Ljava/lang/String;

    move-result-object v21

    .line 615
    .local v21, "playExperienceDetail":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playExperienceDetail:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v2

    if-nez v2, :cond_d

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_experience_detail="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 619
    :cond_d
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->useP2P()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&p2pVersion="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/p2p/P2pManager;->getP2PVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&isp2p="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v2, Lcom/youku/player/Track;->usingP2P:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 623
    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/p2p/P2pManager;->getP2PVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setP2PVersion(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    sget-boolean v5, Lcom/youku/player/Track;->usingP2P:Z

    invoke-virtual {v2, v5}, Lcom/youku/analytics/data/PlayActionData$Builder;->setIsP2P(Z)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 626
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdCacheTypes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdDecodings()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdTypes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdReqTimes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdRsReqTimes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdDelays()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdLevel1Errors()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/Track;->getAdLevel2Errors()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 629
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&ev="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&ctype="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/goplay/Profile;->ctype:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&token="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&oip="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&sid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 633
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/youku/player/goplay/Profile;->ctype:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual/range {v7 .. v12}, Lcom/youku/analytics/data/PlayActionData$Builder;->setAntiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 636
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v5

    invoke-static {v5}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setCurrentFormat(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v5

    if-eqz p2, :cond_23

    const-string v2, "1"

    :goto_9
    invoke-virtual {v5, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setFull(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".00"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/youku/analytics/data/PlayActionData$Builder;->setCurrentPlaytime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getLookTen()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    .line 641
    const-string v2, "600"

    invoke-virtual {v7, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setFreeTime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 644
    :cond_10
    const-string/jumbo v2, "video_url_req_time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v8, Lcom/youku/player/Track;->mGetPlayListDuration:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".00"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v0, v2, v5}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 645
    const-string/jumbo v2, "video_res_req_time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/youku/player/Track;->mVideoConnectDelayTime:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".00"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v0, v2, v5}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 646
    const-string/jumbo v5, "video_1level_err"

    sget v2, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    if-nez v2, :cond_24

    const-string v2, ""

    :goto_a
    move-object/from16 v0, v25

    invoke-static {v0, v5, v2}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 647
    const-string/jumbo v5, "video_2level_err"

    sget v2, Lcom/youku/player/Track;->mPlayErrorLevel2:I

    if-nez v2, :cond_25

    const-string v2, ""

    :goto_b
    move-object/from16 v0, v25

    invoke-static {v0, v5, v2}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 648
    const-string/jumbo v2, "seek_count"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/youku/player/Track;->mSeekCount:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v0, v2, v5}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 649
    const-string/jumbo v5, "seek_duration"

    sget-object v2, Lcom/youku/player/Track;->mSeekDuration:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "0"

    :goto_c
    move-object/from16 v0, v25

    invoke-static {v0, v5, v2}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 650
    const-string v2, "ad_jump_times"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/youku/player/Track;->mAd302Delay:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v0, v2, v5}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 651
    const-string/jumbo v2, "video_jump_times"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/youku/player/Track;->mVideo302Delay:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v0, v2, v5}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 652
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/youku/player/Track;->addCommonParam(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v25

    .line 654
    invoke-static/range {p1 .. p1}, Lcom/youku/player/Track;->addErrorType(Lcom/youku/player/module/VideoUrlInfo;)I

    move-result v15

    .line 655
    .local v15, "errorType":I
    if-eqz v15, :cond_11

    .line 656
    const-string v2, "error_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v0, v2, v5}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 658
    :cond_11
    sget-object v2, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mVVEndError:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v8, Lcom/youku/player/Track;->mVVEndError:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  mOnPaused:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v8, Lcom/youku/player/Track;->mOnPaused:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  mPlayerStarted:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v8, Lcom/youku/player/Track;->mPlayerStarted:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  mAdBackError:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v8, Lcom/youku/player/Track;->mAdBackError:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    sget-boolean v2, Lcom/youku/player/Track;->mVVEndError:Z

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/youku/player/Track;->mOnPaused:Z

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/youku/player/Track;->mPlayerStarted:Z

    if-eqz v2, :cond_13

    :cond_12
    sget-boolean v2, Lcom/youku/player/Track;->mAdBackError:Z

    if-eqz v2, :cond_27

    .line 661
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&is_return_from_background=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 665
    :cond_14
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&before_duration_adtype="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/youku/player/Track;->mBeforeDurationAdType:Lcom/youku/player/Track$TrackAdType;

    invoke-virtual {v5}, Lcom/youku/player/Track$TrackAdType;->ordinal()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 666
    sget v2, Lcom/youku/player/Track;->mErrorPoint:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_15

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&exception_message_time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/Track;->mErrorPoint:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 669
    :cond_15
    sget v2, Lcom/youku/player/Track;->mOpenEnhanceTimesAuto:I

    sget v5, Lcom/youku/player/Track;->mOpenEnhanceTimes:I

    add-int v19, v2, v5

    .line 670
    .local v19, "openEnhanceTimes":I
    if-lez v19, :cond_29

    sget v2, Lcom/youku/player/Track;->mCloseEnhanceTimes:I

    move/from16 v0, v19

    if-le v0, v2, :cond_29

    const/16 v18, 0x1

    .line 671
    .local v18, "isOpenEnhance":Z
    :goto_e
    const-string/jumbo v5, "switch_final"

    if-eqz v18, :cond_2a

    const-string v2, "1"

    :goto_f
    move-object/from16 v0, v25

    invoke-static {v0, v5, v2}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 673
    const-string v22, ""

    .line 674
    .local v22, "switch_times":Ljava/lang/String;
    sget v2, Lcom/youku/player/Track;->mOpenEnhanceTimes:I

    if-gtz v2, :cond_16

    sget v2, Lcom/youku/player/Track;->mCloseEnhanceTimes:I

    if-lez v2, :cond_17

    .line 675
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/youku/player/Track;->mOpenEnhanceTimes:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/youku/player/Track;->mCloseEnhanceTimes:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 677
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&autoplay="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/youku/player/Track;->mAutoPlay:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 678
    if-eqz p4, :cond_18

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&playsdk_version="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&testid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&istest="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 680
    :cond_18
    const-string/jumbo v2, "switch_times"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v2, v1}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getViddecode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getViddecode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setVid(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 684
    :cond_19
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/youku/player/util/AnalyticsWrapper;->playEnd(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;)V

    .line 686
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 687
    .local v17, "intent":Landroid/content/Intent;
    const-string v2, "PLAYER_END"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v2, "VVEndUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v2, v5, :cond_2b

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Lcom/youku/player/Track;->playerEnd(Landroid/content/Intent;Landroid/content/Context;Z)V

    .line 690
    const/4 v2, 0x0

    sput-boolean v2, Lcom/youku/player/Track;->misRequestCalled:Z

    .line 691
    invoke-static {}, Lcom/youku/player/Track;->init()V

    .line 692
    invoke-static/range {p0 .. p0}, Lcom/youku/statistics/IRVideoWrapper;->videoEnd(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 528
    .end local v3    # "adBefore":Ljava/lang/String;
    .end local v4    # "before":Ljava/lang/String;
    .end local v7    # "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    .end local v15    # "errorType":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "isOpenEnhance":Z
    .end local v19    # "openEnhanceTimes":I
    .end local v20    # "playExperience":Ljava/lang/String;
    .end local v21    # "playExperienceDetail":Ljava/lang/String;
    .end local v22    # "switch_times":Ljava/lang/String;
    .end local v23    # "userID":Ljava/lang/String;
    .end local v24    # "videoTime":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->BAIDU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v2, v5, :cond_1b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->KUAIBO:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-ne v2, v5, :cond_3

    .line 529
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&format="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/youku/player/goplay/Profile;->baiduFormat:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 544
    .restart local v3    # "adBefore":Ljava/lang/String;
    .restart local v4    # "before":Ljava/lang/String;
    .restart local v23    # "userID":Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 557
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0,0,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v5

    invoke-static {v5}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    goto/16 :goto_3

    .line 566
    :cond_1e
    const-string v2, "0"

    sput-object v2, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    goto/16 :goto_4

    .line 588
    .restart local v24    # "videoTime":Ljava/lang/String;
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_types="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&os=Android"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&video_format="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v5

    invoke-static {v5}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 594
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v2, :cond_b

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&video_time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_5

    .line 597
    :cond_20
    const-string v2, "0"

    goto/16 :goto_6

    .line 611
    .restart local v7    # "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    .restart local v20    # "playExperience":Ljava/lang/String;
    :cond_21
    const-string v2, "net"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&play_experience="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_7

    .line 622
    .restart local v21    # "playExperienceDetail":Ljava/lang/String;
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 636
    :cond_23
    const-string v2, "0"

    goto/16 :goto_9

    .line 646
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 647
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/youku/player/Track;->mPlayErrorLevel2:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 649
    :cond_26
    sget-object v2, Lcom/youku/player/Track;->mSeekDuration:Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lcom/youku/player/Track;->mSeekDuration:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 662
    .restart local v15    # "errorType":I
    :cond_27
    sget-boolean v2, Lcom/youku/player/Track;->mVVEndError:Z

    if-nez v2, :cond_28

    sget v2, Lcom/youku/player/Track;->mAdLevel1Error:I

    if-nez v2, :cond_28

    sget v2, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    if-eqz v2, :cond_14

    .line 663
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&is_return_from_background=0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_d

    .line 670
    .restart local v19    # "openEnhanceTimes":I
    :cond_29
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 671
    .restart local v18    # "isOpenEnhance":Z
    :cond_2a
    const-string v2, "0"

    goto/16 :goto_f

    .line 689
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v22    # "switch_times":Ljava/lang/String;
    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_10
.end method

.method private static generatePlayExperience()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/youku/player/Track;->mVideoSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 702
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 703
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 704
    .local v2, "slice":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 706
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 708
    .end local v2    # "slice":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 711
    :goto_1
    return-object v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static generatePlayExperienceDetail()Ljava/lang/String;
    .locals 10

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 717
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/player/Track$SliceData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/Track$SliceData;

    .line 718
    .local v3, "slice":Lcom/youku/player/Track$SliceData;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/youku/player/Track$SliceData;->playtime:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/youku/player/Track$SliceData;->loadingTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 720
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/player/Track$SliceData;>;"
    .end local v3    # "slice":Lcom/youku/player/Track$SliceData;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 721
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 723
    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static getAdCacheTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1646
    const-string v0, "&ad_cache_types=net"

    return-object v0
.end method

.method private static getAdDecodings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1650
    const-string v0, "&ad_decodings=1"

    return-object v0
.end method

.method private static getAdDelays()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1669
    sget v1, Lcom/youku/player/Track;->mAdCountRemain:I

    if-lez v1, :cond_1

    .line 1670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/youku/player/Track;->mAdCountRemain:I

    if-ge v0, v1, :cond_1

    .line 1671
    sget-object v1, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    .line 1670
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1674
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    goto :goto_1

    .line 1678
    :cond_1
    sget-object v1, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1679
    const-string v1, "&ad_delays=-1"

    .line 1681
    :goto_2
    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&ad_delays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private static getAdLevel1Errors()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1697
    const-string v2, "&ad_1level_errs="

    .line 1698
    .local v2, "str":Ljava/lang/String;
    sget v3, Lcom/youku/player/Track;->mAdCountTotal:I

    if-gtz v3, :cond_1

    .line 1717
    .local v0, "count":I
    .local v1, "i":I
    :cond_0
    :goto_0
    return-object v2

    .line 1701
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    sget v3, Lcom/youku/player/Track;->mAdCountTotal:I

    sget v4, Lcom/youku/player/Track;->mAdCountRemain:I

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x1

    .line 1702
    .restart local v0    # "count":I
    if-gez v0, :cond_2

    .line 1703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/youku/player/Track;->mAdLevel1Error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1706
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget v3, Lcom/youku/player/Track;->mAdCountTotal:I

    if-ge v1, v3, :cond_0

    .line 1707
    if-lez v1, :cond_3

    .line 1708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1710
    :cond_3
    if-ne v1, v0, :cond_4

    .line 1711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/youku/player/Track;->mAdLevel1Error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1712
    goto :goto_0

    .line 1714
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1706
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getAdLevel2Errors()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1721
    const-string v2, "&ad_2level_errs="

    .line 1722
    .local v2, "str":Ljava/lang/String;
    sget v3, Lcom/youku/player/Track;->mAdCountTotal:I

    if-gtz v3, :cond_1

    .line 1741
    .local v0, "count":I
    .local v1, "i":I
    :cond_0
    :goto_0
    return-object v2

    .line 1725
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    sget v3, Lcom/youku/player/Track;->mAdCountTotal:I

    sget v4, Lcom/youku/player/Track;->mAdCountRemain:I

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x1

    .line 1726
    .restart local v0    # "count":I
    if-gez v0, :cond_2

    .line 1727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/youku/player/Track;->mAdLevel2Error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1730
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget v3, Lcom/youku/player/Track;->mAdCountTotal:I

    if-ge v1, v3, :cond_0

    .line 1731
    if-lez v1, :cond_3

    .line 1732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1734
    :cond_3
    if-ne v1, v0, :cond_4

    .line 1735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/youku/player/Track;->mAdLevel2Error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1736
    goto :goto_0

    .line 1738
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1730
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getAdReqTimes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1609
    sget-object v1, Lcom/youku/player/Track;->mAdReqTimes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&ad_url_req_times="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/player/Track;->mAdReqTimes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1612
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    const-string v0, "&ad_url_req_times=-1"

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getAdRsReqTimes()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1632
    sget-object v2, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1633
    sget v2, Lcom/youku/player/Track;->mAdCountRemain:I

    if-lez v2, :cond_0

    .line 1634
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/youku/player/Track;->mAdCountRemain:I

    if-ge v0, v2, :cond_0

    .line 1635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",-1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    .line 1634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1638
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&ad_res_req_times="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1642
    .end local v0    # "i":I
    .local v1, "str":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1640
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const-string v1, "&ad_res_req_times=-1"

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method private static getAdTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1654
    const-string v0, "&ad_types=1"

    return-object v0
.end method

.method public static getAnalyticsVid(Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 1552
    if-nez p0, :cond_1

    .line 1553
    const-string v0, ""

    .line 1558
    :cond_0
    :goto_0
    return-object v0

    .line 1554
    :cond_1
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getViddecode()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, "vid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getQualityChangeType(II)I
    .locals 4
    .param p0, "oldQulity"    # I
    .param p1, "newQulity"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 851
    const/4 v0, -0x1

    .line 852
    .local v0, "type":I
    if-eq p0, v3, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 853
    :cond_0
    if-ne p1, v2, :cond_2

    .line 854
    const/4 v0, 0x1

    .line 871
    :cond_1
    :goto_0
    return v0

    .line 855
    :cond_2
    if-nez p1, :cond_1

    .line 856
    const/4 v0, 0x2

    goto :goto_0

    .line 858
    :cond_3
    if-ne p0, v2, :cond_5

    .line 859
    if-ne p1, v3, :cond_4

    .line 860
    const/4 v0, 0x3

    goto :goto_0

    .line 861
    :cond_4
    if-nez p1, :cond_1

    .line 862
    const/4 v0, 0x4

    goto :goto_0

    .line 864
    :cond_5
    if-nez p0, :cond_1

    .line 865
    if-ne p1, v3, :cond_6

    .line 866
    const/4 v0, 0x5

    goto :goto_0

    .line 867
    :cond_6
    if-ne p1, v2, :cond_1

    .line 868
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private static getSmoothSwitchDetails()Ljava/lang/String;
    .locals 3

    .prologue
    .line 799
    const-string v0, ""

    .line 800
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&smooth_switch_details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    :cond_0
    return-object v0
.end method

.method public static getTrackFormat(I)I
    .locals 0
    .param p0, "quality"    # I

    .prologue
    .line 342
    packed-switch p0, :pswitch_data_0

    .line 356
    :goto_0
    :pswitch_0
    return p0

    .line 344
    :pswitch_1
    const/4 p0, 0x0

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    const/4 p0, 0x1

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    const/4 p0, 0x2

    .line 351
    goto :goto_0

    .line 353
    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getVideoFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1344
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1345
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1346
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1348
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected static getVideoid(Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v1, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v0, v1, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baseproject/utils/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getvvBeginUrl(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;IILcom/youku/player/module/PlayVideoInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "sdkVer"    # Ljava/lang/String;
    .param p3, "testid"    # I
    .param p4, "istest"    # I
    .param p5, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 909
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "id":Ljava/lang/String;
    iget-object v3, p1, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v4, Lcom/youku/player/module/VideoUrlInfo$Source;->BAIDU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v3, v4, :cond_0

    iget-object v3, p1, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v4, Lcom/youku/player/module/VideoUrlInfo$Source;->KUAIBO:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-ne v3, v4, :cond_8

    .line 912
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&sessionid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/youku/player/util/SessionUnitil;->getPlayVVBeginSession()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&play_types="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "net"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&play_codes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/player/goplay/Profile;->baiduFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&type=begin&os=Android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 923
    .local v2, "vvBeginUrl":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v3, :cond_9

    const-string v1, ""

    .line 925
    .local v1, "userID":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 928
    :cond_1
    iget-object v3, p1, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&playlistid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    :cond_2
    iget-object v3, p1, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget-object v4, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq v3, v4, :cond_a

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo$Source;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/youku/player/Track;->getVideoFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/youku/player/Track;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/youku/player/Track;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 935
    invoke-static {v0}, Lcom/baseproject/utils/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 945
    iget-object v3, p1, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ctype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/youku/player/goplay/Profile;->ctype:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&oip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 951
    :cond_3
    if-eqz p3, :cond_4

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&playsdk_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&testid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&istest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    :cond_4
    sget-object v3, Lcom/youku/player/Track;->mAdReqError:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ad_req_error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/player/Track;->mAdReqError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 955
    :cond_5
    sget-object v3, Lcom/youku/player/Track;->mVideoReqError:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&video_req_error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/player/Track;->mVideoReqError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    :cond_6
    sget-boolean v3, Lcom/youku/player/Track;->isFirstVV:Z

    if-eqz v3, :cond_c

    .line 958
    const/4 v3, 0x0

    sput-boolean v3, Lcom/youku/player/Track;->isFirstVV:Z

    .line 963
    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&autoplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/player/Track;->mAutoPlay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-static {v2, p1}, Lcom/youku/player/Track;->addCommonParam(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v2

    .line 966
    return-object v2

    .line 918
    .end local v1    # "userID":Ljava/lang/String;
    .end local v2    # "vvBeginUrl":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&sessionid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/youku/player/util/SessionUnitil;->getPlayVVBeginSession()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&play_types="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&play_codes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&type=begin&os=Android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "vvBeginUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 923
    :cond_9
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 937
    .restart local v1    # "userID":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&video_format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v4

    invoke-static {v4}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&play_decoding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->useHardwareDecode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_b
    const/4 v3, 0x1

    goto :goto_4

    .line 960
    :cond_c
    if-eqz p5, :cond_7

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p5, Lcom/youku/player/module/PlayVideoInfo;->autoPlay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/youku/player/Track;->mAutoPlay:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 202
    sput-boolean v1, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    .line 206
    sput-wide v2, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    .line 207
    sput-wide v2, Lcom/youku/player/Track;->playStartedTime:J

    .line 209
    sput-boolean v1, Lcom/youku/player/Track;->isCompleted:Z

    .line 210
    sput-boolean v1, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 211
    sput-wide v2, Lcom/youku/player/Track;->playLoadingStartTime:J

    .line 212
    sput-wide v2, Lcom/youku/player/Track;->playLoadingPosition:J

    .line 214
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    .line 215
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    .line 216
    sput-wide v2, Lcom/youku/player/Track;->beforeDuration:J

    .line 217
    sput-boolean v1, Lcom/youku/player/Track;->stageStarted:Z

    .line 218
    sput v1, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    .line 219
    sput v1, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    .line 220
    sput v1, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    .line 221
    sput-wide v2, Lcom/youku/player/Track;->videoQualityToSDLoadingTime:J

    .line 222
    sput-wide v2, Lcom/youku/player/Track;->videoQualityToHDLoadingTime:J

    .line 223
    sput-wide v2, Lcom/youku/player/Track;->videoQualityToHD2LoadingTime:J

    .line 224
    sput-boolean v1, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    .line 225
    sput-wide v2, Lcom/youku/player/Track;->changeVideoQualityStartTime:J

    .line 226
    sput-wide v2, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    .line 227
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    .line 228
    sput-boolean v1, Lcom/youku/player/Track;->isRealVideoStarted:Z

    .line 229
    sput-wide v2, Lcom/youku/player/Track;->mAdStartTime:J

    .line 230
    sput-wide v2, Lcom/youku/player/Track;->mAdEndTime:J

    .line 231
    sput-wide v2, Lcom/youku/player/Track;->mADBeforeDuration:J

    .line 232
    sput-wide v2, Lcom/youku/player/Track;->mADDuration:J

    .line 233
    sput-wide v2, Lcom/youku/player/Track;->mGetAdvTime:J

    .line 234
    sput-wide v2, Lcom/youku/player/Track;->mGetPlayListDuration:J

    .line 235
    sput-wide v2, Lcom/youku/player/Track;->mGetAdvDuration:J

    .line 236
    sget-object v0, Lcom/youku/player/Track;->mVideoSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 237
    sget-object v0, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 238
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mCurrentPlaySlice:Ljava/lang/String;

    .line 239
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    .line 240
    sput-boolean v1, Lcom/youku/player/Track;->isChangeQualityError:Z

    .line 241
    sput v5, Lcom/youku/player/Track;->heartBeatCount:I

    .line 242
    sput-boolean v1, Lcom/youku/player/Track;->usingP2P:Z

    .line 243
    sput-wide v2, Lcom/youku/player/Track;->playTime:J

    .line 244
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAdDelays:Ljava/lang/String;

    .line 245
    sput v1, Lcom/youku/player/Track;->mAdCountRemain:I

    .line 246
    sput v1, Lcom/youku/player/Track;->mAdCountTotal:I

    .line 247
    sput-wide v2, Lcom/youku/player/Track;->mAdReqStartTimeStamp:J

    .line 248
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAdReqTimes:Ljava/lang/String;

    .line 249
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAdRsReqTimes:Ljava/lang/String;

    .line 250
    sput v1, Lcom/youku/player/Track;->mAdLevel1Error:I

    .line 251
    sput v1, Lcom/youku/player/Track;->mAdLevel2Error:I

    .line 252
    sput-boolean v1, Lcom/youku/player/Track;->mIsAdStarted:Z

    .line 253
    sput v1, Lcom/youku/player/Track;->mVideoConnectDelayTime:I

    .line 254
    sput v1, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    .line 255
    sput v1, Lcom/youku/player/Track;->mPlayErrorLevel2:I

    .line 256
    sput v1, Lcom/youku/player/Track;->mSeekCount:I

    .line 257
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mSeekDuration:Ljava/lang/String;

    .line 258
    sput-wide v2, Lcom/youku/player/Track;->mSeekStartTime:J

    .line 259
    sput-boolean v1, Lcom/youku/player/Track;->mVVEndError:Z

    .line 260
    sput-boolean v1, Lcom/youku/player/Track;->mOnPaused:Z

    .line 261
    sput-boolean v1, Lcom/youku/player/Track;->mPlayerStarted:Z

    .line 262
    sput-boolean v1, Lcom/youku/player/Track;->mAdBackError:Z

    .line 263
    sget-object v0, Lcom/youku/player/Track$TrackAdType;->EMPTY:Lcom/youku/player/Track$TrackAdType;

    sput-object v0, Lcom/youku/player/Track;->mBeforeDurationAdType:Lcom/youku/player/Track$TrackAdType;

    .line 264
    sput v4, Lcom/youku/player/Track;->mErrorPoint:I

    .line 265
    sput v1, Lcom/youku/player/Track;->mOpenEnhanceTimes:I

    .line 266
    sput v1, Lcom/youku/player/Track;->mOpenEnhanceTimesAuto:I

    .line 267
    sput v1, Lcom/youku/player/Track;->mCloseEnhanceTimes:I

    .line 268
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAdReqError:Ljava/lang/String;

    .line 269
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mVideoReqError:Ljava/lang/String;

    .line 270
    sput v1, Lcom/youku/player/Track;->mVideo302Delay:I

    .line 271
    sput v4, Lcom/youku/player/Track;->mAd302Delay:I

    .line 272
    sput-wide v2, Lcom/youku/player/Track;->mSlicePlayTime:J

    .line 273
    sput-boolean v5, Lcom/youku/player/Track;->isAdChanged:Z

    .line 274
    const-string v0, ""

    sput-object v0, Lcom/youku/player/Track;->mAutoPlay:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public static isTrackChangeVideoQualtiy()Z
    .locals 1

    .prologue
    .line 1184
    sget-boolean v0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    return v0
.end method

.method public static onAd302Delay(I)V
    .locals 2
    .param p0, "time"    # I

    .prologue
    .line 1842
    sget v0, Lcom/youku/player/Track;->mAd302Delay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/youku/player/Track;->isRealVideoStarted:Z

    if-nez v0, :cond_0

    .line 1843
    sput p0, Lcom/youku/player/Track;->mAd302Delay:I

    .line 1844
    :cond_0
    return-void
.end method

.method public static onAdEnd()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1311
    sget-boolean v0, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/youku/player/Track;->mAdStartTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1312
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mAdEndTime:J

    .line 1313
    sget-wide v0, Lcom/youku/player/Track;->mADDuration:J

    sget-wide v2, Lcom/youku/player/Track;->mAdEndTime:J

    sget-wide v4, Lcom/youku/player/Track;->mAdStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mADDuration:J

    .line 1314
    sput-wide v6, Lcom/youku/player/Track;->mAdStartTime:J

    .line 1315
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->mIsAdStarted:Z

    .line 1317
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/Track;->isAdChanged:Z

    .line 1318
    return-void
.end method

.method public static onAdReqEnd(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 8
    .param p0, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 1570
    sget-wide v4, Lcom/youku/player/Track;->mAdReqStartTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/youku/player/Track;->mAdReqStartTimeStamp:J

    sub-long v2, v4, v6

    .line 1572
    .local v2, "dur":J
    invoke-static {v2, v3}, Lcom/youku/player/Track;->addAdReqTimes(J)V

    .line 1574
    .end local v2    # "dur":J
    :cond_0
    invoke-static {p0}, Lcom/youku/player/util/AdUtil;->isAdvVideoType(Lcom/youku/player/goplay/VideoAdvInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1575
    if-eqz p0, :cond_2

    iget-object v4, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1576
    iget-object v4, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sput v4, Lcom/youku/player/Track;->mAdCountTotal:I

    .line 1577
    sget v4, Lcom/youku/player/Track;->mAdCountTotal:I

    sput v4, Lcom/youku/player/Track;->mAdCountRemain:I

    .line 1578
    iget-object v4, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1579
    sget-object v4, Lcom/youku/player/Track$TrackAdType;->VIDEO:Lcom/youku/player/Track$TrackAdType;

    sput-object v4, Lcom/youku/player/Track;->mBeforeDurationAdType:Lcom/youku/player/Track$TrackAdType;

    .line 1580
    iget-object v4, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 1581
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    invoke-static {v0}, Lcom/youku/player/util/AdUtil;->isTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1582
    sget-object v4, Lcom/youku/player/Track$TrackAdType;->TRUE_VIEW:Lcom/youku/player/Track$TrackAdType;

    sput-object v4, Lcom/youku/player/Track;->mBeforeDurationAdType:Lcom/youku/player/Track$TrackAdType;

    .line 1590
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-void

    .line 1589
    :cond_3
    sget-object v4, Lcom/youku/player/Track$TrackAdType;->PICTURE:Lcom/youku/player/Track$TrackAdType;

    sput-object v4, Lcom/youku/player/Track;->mBeforeDurationAdType:Lcom/youku/player/Track$TrackAdType;

    goto :goto_0
.end method

.method public static onAdReqStart()V
    .locals 2

    .prologue
    .line 1566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/youku/player/Track;->mAdReqStartTimeStamp:J

    .line 1567
    return-void
.end method

.method public static onAdStart(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 1255
    sget-wide v0, Lcom/youku/player/Track;->mADBeforeDuration:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1256
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1258
    sget-object v0, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    const-string v1, "Ad Start"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3, v6}, Lcom/youku/statistics/IRVideoWrapper;->newVideo(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 1265
    :cond_0
    sget-boolean v0, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    if-eqz v0, :cond_2

    .line 1266
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mAdStartTime:J

    .line 1267
    sget-wide v0, Lcom/youku/player/Track;->mADBeforeDuration:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 1268
    sget-wide v0, Lcom/youku/player/Track;->mAdStartTime:J

    sget-wide v2, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mADBeforeDuration:J

    .line 1269
    sget-wide v0, Lcom/youku/player/Track;->mADBeforeDuration:J

    invoke-static {v0, v1}, Lcom/youku/player/Track;->addAdDelays(J)V

    .line 1275
    :cond_1
    :goto_0
    sput-boolean v6, Lcom/youku/player/Track;->mIsAdStarted:Z

    .line 1277
    :cond_2
    return-void

    .line 1271
    :cond_3
    sget-wide v0, Lcom/youku/player/Track;->mAdStartTime:J

    sget-wide v2, Lcom/youku/player/Track;->mAdEndTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/youku/player/Track;->mIsAdStarted:Z

    if-nez v0, :cond_1

    .line 1272
    sget-wide v0, Lcom/youku/player/Track;->mAdStartTime:J

    sget-wide v2, Lcom/youku/player/Track;->mAdEndTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/youku/player/Track;->addAdDelays(J)V

    goto :goto_0
.end method

.method public static onChangVideoQualityEnd(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 752
    sget-boolean v2, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    if-eqz v2, :cond_0

    .line 753
    const/4 v2, 0x0

    sput-boolean v2, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    .line 754
    sput-boolean v6, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 755
    sget-wide v2, Lcom/youku/player/Track;->changeVideoQualityStartTime:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sget-wide v4, Lcom/youku/player/Track;->changeVideoQualityStartTime:J

    sub-long v0, v2, v4

    .line 758
    .local v0, "loadingTime":J
    cmp-long v2, v0, v8

    if-ltz v2, :cond_0

    .line 760
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 761
    sget-wide v2, Lcom/youku/player/Track;->videoQualityToSDLoadingTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/youku/player/Track;->videoQualityToSDLoadingTime:J

    goto :goto_0

    .line 763
    :cond_2
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 764
    sget-wide v2, Lcom/youku/player/Track;->videoQualityToHDLoadingTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/youku/player/Track;->videoQualityToHDLoadingTime:J

    goto :goto_0

    .line 766
    :cond_3
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 767
    sget-wide v2, Lcom/youku/player/Track;->videoQualityToHD2LoadingTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/youku/player/Track;->videoQualityToHD2LoadingTime:J

    goto :goto_0
.end method

.method public static onChangeVideoQualityStart(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 735
    invoke-static {}, Lcom/youku/player/Track;->resetSmoothChangeVideoQuality()V

    .line 738
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 739
    sget v0, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    .line 745
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    .line 746
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->changeVideoQualityStartTime:J

    .line 747
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 748
    return-void

    .line 740
    :cond_1
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 741
    sget v0, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    goto :goto_0

    .line 742
    :cond_2
    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 743
    sget v0, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    goto :goto_0
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "playType"    # Ljava/lang/String;
    .param p4, "playCode"    # Ljava/lang/String;
    .param p5, "source"    # Lcom/youku/player/module/VideoUrlInfo$Source;
    .param p6, "quality"    # I
    .param p7, "progress"    # I
    .param p8, "isFullScreen"    # Z
    .param p9, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p10, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 1097
    invoke-static {}, Lcom/youku/player/util/SessionUnitil;->getPlayVVBeginSession()Ljava/lang/String;

    move-result-object v10

    .line 1099
    .local v10, "tempSessionID":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/module/VideoUrlInfo$Source;->BAIDU:Lcom/youku/player/module/VideoUrlInfo$Source;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/youku/player/module/VideoUrlInfo$Source;->KUAIBO:Lcom/youku/player/module/VideoUrlInfo$Source;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_7

    .line 1100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&sessionid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&play_types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "net"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&play_codes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type=begin&os=Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1109
    .local v14, "vvBeginUrl":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v2, :cond_8

    const-string v13, ""

    .line 1111
    .local v13, "userID":Ljava/lang/String;
    :goto_1
    if-eqz v13, :cond_1

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1114
    :cond_1
    sget-object v2, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_9

    .line 1117
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/youku/player/module/VideoUrlInfo$Source;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/youku/player/Track;->getVideoFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/youku/player/Track;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/youku/player/Track;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1120
    invoke-static/range {p1 .. p1}, Lcom/baseproject/utils/Util;->md5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1130
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1131
    new-instance v2, Lcom/youku/analytics/data/PlayActionData$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaycode(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaytype(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v1

    .line 1133
    .local v1, "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p6 .. p6}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setCurrentFormat(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v3

    if-eqz p8, :cond_b

    const-string v2, "1"

    :goto_3
    invoke-virtual {v3, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setFull(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v3

    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    const-string v2, "1"

    :goto_4
    invoke-virtual {v3, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setContinuePlay(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    div-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/analytics/data/PlayActionData$Builder;->setStartPlaytime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v3

    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IUserInfo;->isVip()Z

    move-result v2

    :goto_5
    invoke-virtual {v3, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setVip(Z)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 1142
    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1143
    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/youku/player/goplay/Profile;->ctype:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    move-object/from16 v0, p9

    iget-object v5, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    move-object/from16 v0, p9

    iget-object v6, v0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/youku/analytics/data/PlayActionData$Builder;->setAntiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ctype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/youku/player/goplay/Profile;->ctype:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&oip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1150
    :cond_2
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    iget v11, v2, Lcom/youku/player/config/MediaPlayerConfiguration;->mTestid:I

    .line 1151
    .local v11, "testid":I
    if-eqz v11, :cond_3

    .line 1152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&playsdk_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&testid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&istest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v3

    iget v3, v3, Lcom/youku/player/config/MediaPlayerConfiguration;->mIstest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1155
    :cond_3
    sget-object v2, Lcom/youku/player/Track;->mAdReqError:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ad_req_error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/player/Track;->mAdReqError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1157
    :cond_4
    sget-object v2, Lcom/youku/player/Track;->mVideoReqError:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&video_req_error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/player/Track;->mVideoReqError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1159
    :cond_5
    const-string v7, ""

    .line 1160
    .local v7, "autoPlay":Ljava/lang/String;
    sget-boolean v2, Lcom/youku/player/Track;->isFirstVV:Z

    if-eqz v2, :cond_e

    .line 1161
    const/4 v2, 0x0

    sput-boolean v2, Lcom/youku/player/Track;->isFirstVV:Z

    .line 1166
    :cond_6
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&autoplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1167
    move-object/from16 v0, p9

    invoke-static {v1, v0}, Lcom/youku/player/Track;->setPlayStartParam(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 1168
    move-object/from16 v0, p9

    invoke-static {v14, v0}, Lcom/youku/player/Track;->addCommonParam(Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v14

    .line 1169
    invoke-static {p0, v1}, Lcom/youku/player/util/AnalyticsWrapper;->playStart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;)V

    .line 1170
    sget-object v2, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    :goto_7
    invoke-static {v14, v2}, Lcom/youku/player/util/URLContainer;->getStatVVBegin(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 1172
    .local v12, "url":Ljava/lang/String;
    new-instance v9, Lcom/youku/statistics/StatisticsTask;

    invoke-direct {v9, v12, p0}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1173
    .local v9, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v9, v2}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1174
    sget-object v2, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/4 v2, 0x0

    sput-boolean v2, Lcom/youku/player/Track;->misRequestCalled:Z

    .line 1177
    invoke-static {p0}, Lcom/youku/statistics/IRVideoWrapper;->videoEnd(Landroid/content/Context;)V

    .line 1178
    return-void

    .line 1104
    .end local v1    # "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    .end local v7    # "autoPlay":Ljava/lang/String;
    .end local v9    # "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    .end local v11    # "testid":I
    .end local v12    # "url":Ljava/lang/String;
    .end local v13    # "userID":Ljava/lang/String;
    .end local v14    # "vvBeginUrl":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&sessionid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&play_types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&play_codes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type=begin&os=Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "vvBeginUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 1109
    :cond_8
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 1121
    .restart local v13    # "userID":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1122
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "npt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1125
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&video_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p6 .. p6}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&play_decoding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->useHardwareDecode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x1

    goto :goto_8

    .line 1133
    .restart local v1    # "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    :cond_b
    const-string v2, "0"

    goto/16 :goto_3

    :cond_c
    const-string v2, "0"

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1163
    .restart local v7    # "autoPlay":Ljava/lang/String;
    .restart local v11    # "testid":I
    :cond_e
    if-eqz p10, :cond_6

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p10

    iget v3, v0, Lcom/youku/player/module/PlayVideoInfo;->autoPlay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 1170
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method public static onImageAdEnd()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1332
    sget-boolean v0, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    if-eqz v0, :cond_0

    .line 1333
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mAdEndTime:J

    .line 1336
    sput-wide v4, Lcom/youku/player/Track;->mADDuration:J

    .line 1337
    sput-wide v4, Lcom/youku/player/Track;->mAdStartTime:J

    .line 1339
    :cond_0
    return-void
.end method

.method public static onImageAdStart(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 1322
    sget-boolean v0, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    if-eqz v0, :cond_0

    .line 1323
    sget-wide v0, Lcom/youku/player/Track;->mADBeforeDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1324
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mAdStartTime:J

    .line 1325
    sget-wide v0, Lcom/youku/player/Track;->mAdStartTime:J

    sget-wide v2, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mADBeforeDuration:J

    .line 1326
    sget-object v0, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAdStartTime - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/player/Track;->mADBeforeDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :cond_0
    return-void
.end method

.method public static onPlayEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "isFullScreen"    # Z
    .param p3, "sdkVer"    # Ljava/lang/String;
    .param p4, "testid"    # I
    .param p5, "istest"    # I

    .prologue
    .line 489
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    sget-boolean v0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    if-nez v0, :cond_0

    .line 495
    invoke-static/range {p0 .. p5}, Lcom/youku/player/Track;->forceEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;II)V

    goto :goto_0
.end method

.method public static onPlayError(III)V
    .locals 1
    .param p0, "errorLevel1"    # I
    .param p1, "errorLevel2"    # I
    .param p2, "currentPosition"    # I

    .prologue
    .line 1763
    sput p0, Lcom/youku/player/Track;->mPlayErrorLevel1:I

    .line 1764
    sput p1, Lcom/youku/player/Track;->mPlayErrorLevel2:I

    .line 1765
    div-int/lit16 v0, p2, 0x3e8

    sput v0, Lcom/youku/player/Track;->mErrorPoint:I

    .line 1766
    return-void
.end method

.method public static onPlayHlsStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "liveId"    # Ljava/lang/String;
    .param p2, "usrId"    # Ljava/lang/String;
    .param p3, "isPaid"    # I
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "bps"    # Ljava/lang/String;
    .param p6, "autoplay"    # I
    .param p7, "areaCode"    # I
    .param p8, "dmaCode"    # I
    .param p9, "oip"    # Ljava/lang/String;
    .param p10, "ctype"    # I
    .param p11, "ev"    # Ljava/lang/String;
    .param p12, "token"    # Ljava/lang/String;
    .param p13, "isVip"    # Z
    .param p14, "isFullScreen"    # Z
    .param p15, "sdkVer"    # Ljava/lang/String;
    .param p16, "testid"    # I
    .param p17, "istest"    # I

    .prologue
    .line 1056
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/youku/player/Track;->mIsPlayStarted:Z

    if-eqz v8, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    const/4 v7, 0x0

    .line 1059
    .local v7, "vvBeginUrl":Ljava/lang/String;
    const-string v3, "1"

    .line 1060
    .local v3, "fullScreen":Ljava/lang/String;
    const-string v6, "0"

    .line 1061
    .local v6, "vip":Ljava/lang/String;
    if-eqz p2, :cond_3

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1063
    .local v5, "usrid":Ljava/lang/String;
    :goto_1
    if-eqz p14, :cond_4

    const-string v3, "1"

    .line 1064
    :goto_2
    if-eqz p13, :cond_5

    const-string v6, "1"

    .line 1066
    :goto_3
    :try_start_0
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->getLastPageSource()Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, "rpage":Ljava/lang/String;
    if-eqz v4, :cond_6

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&rpage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v4, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1070
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "liveid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pay="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&vvid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&bps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&atp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&full="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&area="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&dma="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&p2p="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&oip="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&ctype="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&ev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p11

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p12

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&rate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x190

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pvid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&vip="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1076
    if-eqz p16, :cond_2

    .line 1077
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&playsdk_version="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p15

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&testid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&istest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1081
    .end local v4    # "rpage":Ljava/lang/String;
    :cond_2
    :goto_5
    invoke-static {v7, p0}, Lcom/youku/player/Track;->playerHlsBegin(Ljava/lang/String;Landroid/content/Context;)V

    .line 1082
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-static {p0, p1, v8, v9, v10}, Lcom/youku/statistics/IRVideoWrapper;->newVideo(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 1061
    .end local v5    # "usrid":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto/16 :goto_1

    .line 1063
    .restart local v5    # "usrid":Ljava/lang/String;
    :cond_4
    const-string v3, "0"

    goto/16 :goto_2

    .line 1064
    :cond_5
    const-string v6, "0"

    goto/16 :goto_3

    .line 1067
    .restart local v4    # "rpage":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v4, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1078
    .end local v4    # "rpage":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1079
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static onPlayLoadingEnd(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 12
    .param p0, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    .line 396
    sget-boolean v4, Lcom/youku/player/Track;->isRealVideoStarted:Z

    if-nez v4, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    sget v4, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    sget v4, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 401
    sget-boolean v4, Lcom/youku/player/Track;->trackPlayLoading:Z

    if-eqz v4, :cond_0

    .line 402
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sget-wide v6, Lcom/youku/player/Track;->playLoadingStartTime:J

    sub-long/2addr v4, v6

    long-to-float v2, v4

    .line 403
    .local v2, "loadingTime":F
    sget-wide v4, Lcom/youku/player/Track;->playLoadingPosition:J

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v1, v4, v5

    .line 404
    .local v1, "loadingPosition":F
    cmpg-float v4, v2, v8

    if-lez v4, :cond_2

    const v4, 0x482fc800    # 180000.0f

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_2

    cmpg-float v4, v1, v8

    if-gtz v4, :cond_3

    .line 406
    :cond_2
    sput-wide v10, Lcom/youku/player/Track;->playLoadingStartTime:J

    .line 407
    sput-wide v10, Lcom/youku/player/Track;->playLoadingPosition:J

    goto :goto_0

    .line 410
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v4

    invoke-static {v4}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 411
    .local v0, "format":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v9

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/youku/player/Track;->playLoadingEvents:Ljava/lang/String;

    .line 414
    sput-wide v10, Lcom/youku/player/Track;->playLoadingStartTime:J

    .line 415
    sput-wide v10, Lcom/youku/player/Track;->playLoadingPosition:J

    goto/16 :goto_0

    .end local v0    # "format":I
    :cond_4
    move v0, v3

    .line 410
    goto :goto_1
.end method

.method public static onPlayLoadingStart(J)V
    .locals 6
    .param p0, "currentPosition"    # J

    .prologue
    .line 367
    sget-boolean v2, Lcom/youku/player/Track;->isRealVideoStarted:Z

    if-nez v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    sget v2, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    sget v2, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 372
    sget-boolean v2, Lcom/youku/player/Track;->trackPlayLoading:Z

    if-eqz v2, :cond_0

    .line 373
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sput-wide v2, Lcom/youku/player/Track;->playLoadingStartTime:J

    .line 374
    sput-wide p0, Lcom/youku/player/Track;->playLoadingPosition:J

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 376
    .local v0, "adjustTime":J
    invoke-static {}, Lcom/baseproject/utils/Util;->isTimeStampValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    sget-object v2, Lcom/baseproject/utils/Util;->TIME_STAMP:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 378
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/player/Track;->playLoadingStartLocalTime:Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/youku/player/Track;->addLoadingEventToSlice()V

    goto :goto_0
.end method

.method public static onPlayStart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;IILcom/youku/player/module/PlayVideoInfo;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "isFullScreen"    # Z
    .param p3, "sdkVer"    # Ljava/lang/String;
    .param p4, "testid"    # I
    .param p5, "istest"    # I
    .param p6, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 999
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/youku/player/Track;->mIsPlayStarted:Z

    if-eqz v0, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 1002
    invoke-static/range {v0 .. v5}, Lcom/youku/player/Track;->getvvBeginUrl(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;IILcom/youku/player/module/PlayVideoInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1004
    .local v8, "vvBeginUrl":Ljava/lang/String;
    invoke-static {p1}, Lcom/youku/player/Track;->getVideoid(Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v6

    .line 1006
    .local v6, "id":Ljava/lang/String;
    invoke-static {p0, v6, p1, p2}, Lcom/youku/player/Track;->createPlayAction(Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Z)V

    .line 1008
    invoke-static {p0}, Lcom/youku/player/util/DetailUtil;->isUSwitchOpen(Landroid/content/Context;)Z

    move-result v7

    .line 1009
    .local v7, "isOpenEnhance":Z
    const-string/jumbo v1, "switch_original"

    if-eqz v7, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-static {v8, v1, v0}, Lcom/youku/player/Track;->addUrlParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1011
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    invoke-static {v8, p0, v0}, Lcom/youku/player/Track;->playerBegin(Ljava/lang/String;Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo$Source;)V

    .line 1013
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/Track;->mIsPlayStarted:Z

    .line 1014
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/youku/player/Track;->play(Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 1015
    sget-wide v0, Lcom/youku/player/Track;->mADDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1016
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-static {p0, v6, v0, v1, v2}, Lcom/youku/statistics/IRVideoWrapper;->newVideo(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1009
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method

.method public static onRealVideoFirstLoadEnd(Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const-wide/16 v8, 0x0

    .line 283
    sget v4, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    sget v4, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    .line 288
    .local v0, "currentTime":J
    sget-boolean v4, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    if-eqz v4, :cond_2

    .line 289
    sget-object v4, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "trackLoadingToPlayStart true"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v4, 0x0

    sput-boolean v4, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    .line 291
    const-wide/16 v2, 0x0

    .line 292
    .local v2, "videoload":J
    sget-wide v4, Lcom/youku/player/Track;->mAdEndTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 293
    sget-wide v4, Lcom/youku/player/Track;->mAdEndTime:J

    sub-long v4, v0, v4

    sput-wide v4, Lcom/youku/player/Track;->beforeDuration:J

    .line 294
    sget-wide v2, Lcom/youku/player/Track;->beforeDuration:J

    .line 302
    :goto_1
    sput-wide v8, Lcom/youku/player/Track;->mGetAdvDuration:J

    .line 303
    invoke-static {p0, v2, v3, p1, p2}, Lcom/youku/player/Track;->trackVideoLoadTime(Landroid/content/Context;JLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 304
    const/4 v4, 0x1

    sput-boolean v4, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 306
    .end local v2    # "videoload":J
    :cond_2
    sput-wide v0, Lcom/youku/player/Track;->mSlicePlayTime:J

    goto :goto_0

    .line 296
    .restart local v2    # "videoload":J
    :cond_3
    sget-wide v4, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    sub-long v4, v0, v4

    sput-wide v4, Lcom/youku/player/Track;->beforeDuration:J

    .line 299
    sget-wide v4, Lcom/youku/player/Track;->beforeDuration:J

    sget-wide v6, Lcom/youku/player/Track;->mGetPlayListDuration:J

    sub-long/2addr v4, v6

    sget-wide v6, Lcom/youku/player/Track;->mGetAdvDuration:J

    sub-long v2, v4, v6

    goto :goto_1
.end method

.method public static onSeek()V
    .locals 2

    .prologue
    .line 1751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/youku/player/Track;->mSeekStartTime:J

    .line 1752
    return-void
.end method

.method public static onSeekComplete()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1755
    sget-wide v0, Lcom/youku/player/Track;->mSeekStartTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/Track;->mSeekDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/youku/player/Track;->mSeekStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".00,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/Track;->mSeekDuration:Ljava/lang/String;

    .line 1757
    sput-wide v6, Lcom/youku/player/Track;->mSeekStartTime:J

    .line 1758
    sget v0, Lcom/youku/player/Track;->mSeekCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/Track;->mSeekCount:I

    .line 1760
    :cond_0
    return-void
.end method

.method public static onSmoothChangeVideoQualityEnd(Z)V
    .locals 10
    .param p0, "isSuccess"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 829
    sget-wide v4, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sget-wide v6, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    sub-long v2, v4, v6

    .line 832
    .local v2, "loadingTime":J
    sget-wide v4, Lcom/youku/player/Track;->mSmoothSwitchPauseDuration:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 833
    sget-wide v4, Lcom/youku/player/Track;->mSmoothSwitchPauseDuration:J

    sub-long/2addr v2, v4

    .line 835
    :cond_2
    cmp-long v4, v2, v8

    if-ltz v4, :cond_0

    .line 837
    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-float v7, v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "time":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_4

    const-string v4, "1"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/youku/player/Track;->mQulityChangeType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    sget-object v4, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    .line 845
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/youku/player/Track;->mSmoothSwitchDetails:Ljava/lang/String;

    .line 846
    sput-wide v8, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    .line 847
    const/4 v4, -0x1

    sput v4, Lcom/youku/player/Track;->mQulityChangeType:I

    goto/16 :goto_0

    .line 839
    :cond_4
    const-string v4, "0"

    goto :goto_1
.end method

.method public static onSmoothChangeVideoQualityStart(II)V
    .locals 6
    .param p0, "oldQulity"    # I
    .param p1, "newQulity"    # I

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 808
    sget-boolean v0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    if-eqz v0, :cond_0

    .line 809
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    .line 810
    sput-wide v4, Lcom/youku/player/Track;->changeVideoQualityStartTime:J

    .line 811
    sput-boolean v1, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 812
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 813
    sget v0, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToSDTimes:I

    .line 821
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/youku/player/Track;->getQualityChangeType(II)I

    move-result v0

    sput v0, Lcom/youku/player/Track;->mQulityChangeType:I

    .line 822
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    .line 823
    sput-wide v4, Lcom/youku/player/Track;->mSmoothSwitchPauseTime:J

    .line 824
    sput-wide v4, Lcom/youku/player/Track;->mSmoothSwitchPauseDuration:J

    .line 825
    return-void

    .line 814
    :cond_1
    if-ne p0, v1, :cond_2

    .line 815
    sget v0, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToHDTimes:I

    goto :goto_0

    .line 816
    :cond_2
    if-nez p0, :cond_0

    .line 817
    sget v0, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/youku/player/Track;->videoQualityToHD2Times:I

    goto :goto_0
.end method

.method private static onSmoothChangeVideoQualityVideoPause()V
    .locals 4

    .prologue
    .line 875
    sget-wide v0, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 876
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->mSmoothSwitchPauseTime:J

    .line 878
    :cond_0
    return-void
.end method

.method private static onSmoothChangeVideoQualityVideoStart()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 880
    sget-wide v2, Lcom/youku/player/Track;->mSmoothSwitchPauseTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 881
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sget-wide v4, Lcom/youku/player/Track;->mSmoothSwitchPauseTime:J

    sub-long v0, v2, v4

    .line 882
    .local v0, "dur":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 883
    sget-wide v2, Lcom/youku/player/Track;->mSmoothSwitchPauseDuration:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/youku/player/Track;->mSmoothSwitchPauseDuration:J

    .line 885
    :cond_0
    sput-wide v6, Lcom/youku/player/Track;->mSmoothSwitchPauseTime:J

    .line 887
    :cond_1
    return-void
.end method

.method public static onVideo302Delay(I)V
    .locals 1
    .param p0, "time"    # I

    .prologue
    .line 1837
    sget v0, Lcom/youku/player/Track;->mVideo302Delay:I

    if-nez v0, :cond_0

    .line 1838
    sput p0, Lcom/youku/player/Track;->mVideo302Delay:I

    .line 1839
    :cond_0
    return-void
.end method

.method public static onVideoIndexUpdate(Landroid/content/Context;III)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentIndex"    # I
    .param p2, "ip"    # I
    .param p3, "format"    # I

    .prologue
    .line 1497
    invoke-static/range {p2 .. p2}, Lcom/youku/player/util/PlayerUtil;->intToIP(I)Ljava/lang/String;

    move-result-object v5

    .line 1498
    .local v5, "strIp":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 1499
    .local v4, "quality":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1500
    .local v2, "key":Ljava/lang/String;
    sput-object v2, Lcom/youku/player/Track;->mCurrentPlaySlice:Ljava/lang/String;

    .line 1501
    sget-object v6, Lcom/youku/player/Track;->mVideoSlices:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1502
    sget-object v6, Lcom/youku/player/Track;->mVideoSlices:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v0, v6, v8

    .line 1506
    .local v0, "currentTime":J
    sget-wide v6, Lcom/youku/player/Track;->mSlicePlayTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    sget-object v6, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    sget-object v7, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1507
    sget-object v6, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    sget-object v7, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/player/Track$SliceData;

    iget-wide v8, v6, Lcom/youku/player/Track$SliceData;->playtime:J

    sget-wide v10, Lcom/youku/player/Track;->mSlicePlayTime:J

    sub-long v10, v0, v10

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/youku/player/Track$SliceData;->playtime:J

    .line 1510
    :cond_1
    sget-object v6, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onVideoIndexUpdate mCurrentPlaySliceDetail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  mVideoSlicesDetail.containsKey(mCurrentPlaySliceDetail):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    sget-object v9, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    sput-wide v0, Lcom/youku/player/Track;->mSlicePlayTime:J

    .line 1513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, "keyDetail":Ljava/lang/String;
    sput-object v3, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    .line 1515
    sget-object v6, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1516
    sget-object v6, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    new-instance v7, Lcom/youku/player/Track$SliceData;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/youku/player/Track$SliceData;-><init>(Lcom/youku/player/Track$1;)V

    invoke-virtual {v6, v3, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :cond_2
    return-void
.end method

.method public static pause()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 421
    sget v2, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    sget v2, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 443
    .local v0, "currentTime":J
    :cond_0
    :goto_0
    return-void

    .line 424
    .end local v0    # "currentTime":J
    :cond_1
    sget-object v2, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause playTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/youku/player/Track;->playTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-boolean v2, Lcom/youku/player/Track;->stageStarted:Z

    if-eqz v2, :cond_4

    .line 426
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long v0, v2, v4

    .line 427
    .restart local v0    # "currentTime":J
    sget-wide v2, Lcom/youku/player/Track;->playTime:J

    sget-wide v4, Lcom/youku/player/Track;->playStartedTime:J

    sub-long v4, v0, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/youku/player/Track;->playTime:J

    .line 429
    sget-object v2, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause stageStarted playTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/youku/player/Track;->playTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-wide v2, Lcom/youku/player/Track;->mAdStartTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2

    .line 431
    sget-wide v2, Lcom/youku/player/Track;->mADDuration:J

    sget-wide v4, Lcom/youku/player/Track;->mAdStartTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/youku/player/Track;->mADDuration:J

    .line 432
    sput-wide v8, Lcom/youku/player/Track;->mAdStartTime:J

    .line 434
    :cond_2
    sget-object v2, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause mCurrentPlaySliceDetail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mSlicePlayTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/youku/player/Track;->mSlicePlayTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-wide v2, Lcom/youku/player/Track;->mSlicePlayTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    sget-object v2, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    sget-object v2, Lcom/youku/player/Track;->mVideoSlicesDetail:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/youku/player/Track;->mCurrentPlaySliceDetail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/Track$SliceData;

    iget-wide v4, v2, Lcom/youku/player/Track$SliceData;->playtime:J

    sget-wide v6, Lcom/youku/player/Track;->mSlicePlayTime:J

    sub-long v6, v0, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/youku/player/Track$SliceData;->playtime:J

    .line 438
    sput-wide v8, Lcom/youku/player/Track;->mSlicePlayTime:J

    .line 440
    :cond_3
    invoke-static {}, Lcom/youku/player/Track;->onSmoothChangeVideoQualityVideoPause()V

    .line 442
    :cond_4
    const/4 v2, 0x0

    sput-boolean v2, Lcom/youku/player/Track;->stageStarted:Z

    goto/16 :goto_0
.end method

.method public static pauseForIRVideo(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    invoke-static {p0}, Lcom/youku/statistics/IRVideoWrapper;->videoPause(Landroid/content/Context;)V

    .line 447
    return-void
.end method

.method public static play(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 6
    .param p0, "isHls"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v4, 0xf4240

    const/4 v2, 0x1

    .line 458
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    sget-boolean v0, Lcom/youku/player/Track;->stageStarted:Z

    if-nez v0, :cond_2

    .line 462
    sput-boolean v2, Lcom/youku/player/Track;->stageStarted:Z

    .line 463
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/youku/player/Track;->playStartedTime:J

    .line 464
    sget-wide v0, Lcom/youku/player/Track;->playStartedTime:J

    sput-wide v0, Lcom/youku/player/Track;->mSlicePlayTime:J

    .line 467
    :cond_2
    sget-boolean v0, Lcom/youku/player/Track;->misRequestCalled:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 468
    sget-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    if-eqz v0, :cond_3

    .line 469
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    .line 471
    :cond_3
    invoke-static {}, Lcom/youku/player/Track;->init()V

    .line 472
    sput-boolean v2, Lcom/youku/player/Track;->misRequestCalled:Z

    .line 473
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    .line 475
    :cond_4
    sget-boolean v0, Lcom/youku/player/Track;->mIsPlayStarted:Z

    if-nez v0, :cond_6

    .line 476
    sput-boolean v2, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    .line 478
    sget-boolean v0, Lcom/youku/player/Track;->mOnPaused:Z

    if-eqz v0, :cond_5

    .line 479
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    .line 480
    :cond_5
    sget-object v0, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play loadingToPlayStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_6
    invoke-static {}, Lcom/youku/player/Track;->onSmoothChangeVideoQualityVideoStart()V

    .line 483
    invoke-static {p1}, Lcom/youku/statistics/IRVideoWrapper;->videoPlay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playType"    # Ljava/lang/String;
    .param p3, "isLogin"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 1238
    sget-boolean v0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    if-eqz v0, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1241
    :cond_0
    sget-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    if-eqz v0, :cond_1

    .line 1242
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    goto :goto_0

    .line 1245
    :cond_1
    invoke-static {}, Lcom/youku/player/util/SessionUnitil;->creatSession()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    .line 1246
    invoke-static {p0, p1, p2}, Lcom/youku/player/util/AnalyticsWrapper;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-static {}, Lcom/youku/player/Track;->init()V

    .line 1248
    sput-boolean v4, Lcom/youku/player/Track;->trackLoadingToPlayStart:Z

    .line 1249
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sput-wide v0, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    .line 1250
    sget-object v0, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRequest loadingToPlayStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/youku/player/Track;->loadingToPlayStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    sput-boolean v4, Lcom/youku/player/Track;->misRequestCalled:Z

    goto :goto_0
.end method

.method public static playad()V
    .locals 2

    .prologue
    .line 450
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 454
    :cond_0
    return-void
.end method

.method public static playerBegin(Ljava/lang/String;Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo$Source;)V
    .locals 6
    .param p0, "VVBeginUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lcom/youku/player/module/VideoUrlInfo$Source;

    .prologue
    const/4 v3, 0x0

    .line 1193
    sget-object v2, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {p0, v2}, Lcom/youku/player/util/URLContainer;->getStatVVBegin(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    new-instance v0, Lcom/youku/statistics/StatisticsTask;

    invoke-direct {v0, v1, p1}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1197
    .local v0, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1198
    return-void

    .end local v0    # "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 1193
    goto :goto_0
.end method

.method public static playerEnd(Landroid/content/Intent;Landroid/content/Context;Z)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isExternalVideo"    # Z

    .prologue
    .line 1215
    const-string v2, "VVEndUrl"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/youku/player/util/URLContainer;->getStatVVEnd(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    new-instance v0, Lcom/youku/statistics/StatisticsTask;

    invoke-direct {v0, v1, p1}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1219
    .local v0, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1220
    return-void
.end method

.method public static playerHlsBegin(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "VVBeginUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1201
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/youku/player/Track;->playTime:J

    .line 1202
    invoke-static {p0, p1}, Lcom/youku/player/util/URLContainer;->getHlsStatVVBegin(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1203
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    new-instance v0, Lcom/youku/statistics/StatisticsTask;

    invoke-direct {v0, v1, v5, p1}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1205
    .local v0, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1206
    return-void
.end method

.method private static resetSmoothChangeVideoQuality()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 890
    sget-wide v0, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 891
    sput-wide v2, Lcom/youku/player/Track;->smoothChangeVideoQualityStartTime:J

    .line 892
    sput-wide v2, Lcom/youku/player/Track;->mSmoothSwitchPauseTime:J

    .line 893
    sput-wide v2, Lcom/youku/player/Track;->mSmoothSwitchPauseDuration:J

    .line 894
    const/4 v0, -0x1

    sput v0, Lcom/youku/player/Track;->mQulityChangeType:I

    .line 896
    :cond_0
    return-void
.end method

.method public static sendHwError()V
    .locals 2

    .prologue
    .line 1534
    new-instance v0, Lcom/youku/player/service/DisposableHttpTask;

    invoke-static {}, Lcom/youku/player/util/URLContainer;->getHwErrorUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/player/service/DisposableHttpTask;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v0, "task":Lcom/youku/player/service/DisposableHttpTask;
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/youku/player/service/DisposableHttpTask;->setRequestMethod(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v0}, Lcom/youku/player/service/DisposableHttpTask;->start()V

    .line 1538
    return-void
.end method

.method public static setAdReqError(Ljava/lang/String;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 1888
    sget-object v0, Lcom/youku/player/Track;->mAdReqError:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    sput-object p0, Lcom/youku/player/Track;->mAdReqError:Ljava/lang/String;

    .line 1890
    :cond_0
    return-void
.end method

.method public static setChangingLanguage(Z)V
    .locals 0
    .param p0, "isChange"    # Z

    .prologue
    .line 1223
    sput-boolean p0, Lcom/youku/player/Track;->mIsChangingLanguage:Z

    .line 1224
    return-void
.end method

.method public static setFirstVV()V
    .locals 1

    .prologue
    .line 1897
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/Track;->isFirstVV:Z

    .line 1898
    return-void
.end method

.method public static setOnPaused(Z)V
    .locals 0
    .param p0, "onPaused"    # Z

    .prologue
    .line 1833
    sput-boolean p0, Lcom/youku/player/Track;->mOnPaused:Z

    .line 1834
    return-void
.end method

.method public static setP2P(Z)V
    .locals 1
    .param p0, "useP2p"    # Z

    .prologue
    .line 1541
    sget-boolean v0, Lcom/youku/player/Track;->usingP2P:Z

    if-eqz v0, :cond_0

    .line 1544
    :goto_0
    return-void

    .line 1543
    :cond_0
    sput-boolean p0, Lcom/youku/player/Track;->usingP2P:Z

    goto :goto_0
.end method

.method private static setPlayStartParam(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 4
    .param p0, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v1, 0x1

    .line 1024
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setStartPlaytime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setVideoTime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setVideoOwner(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isReplay()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setReplay(Z)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getSchannelid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setSChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPiddecode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPlaylistchannelid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaylistChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getSplaylistchannelid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setSPlaylistChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getSiddecode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setShowId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getShowchannelid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setShowChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getSshowchannelid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setSShowChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPaystate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPayState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getLookTen()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlayState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getCopyright()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setCopyright(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getTrailers()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setTailers(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 1042
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getLookTen()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1043
    const-string v0, "2"

    invoke-virtual {p0, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlayState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 1044
    const-string v0, "600"

    invoke-virtual {p0, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setFreeTime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 1047
    :goto_2
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getViddecode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getViddecode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setVid(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 1026
    goto :goto_1

    .line 1046
    :cond_3
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlayState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    goto :goto_2
.end method

.method public static setPlayerStarted(Z)V
    .locals 1
    .param p0, "started"    # Z

    .prologue
    .line 1827
    sput-boolean p0, Lcom/youku/player/Track;->mPlayerStarted:Z

    .line 1828
    if-eqz p0, :cond_0

    .line 1829
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/youku/player/Track;->setOnPaused(Z)V

    .line 1830
    :cond_0
    return-void
.end method

.method public static setTrackChangeVideoQualtiy(Z)V
    .locals 0
    .param p0, "track"    # Z

    .prologue
    .line 1562
    sput-boolean p0, Lcom/youku/player/Track;->trackChangeVideoQualtiy:Z

    .line 1563
    return-void
.end method

.method public static setTrackPlayLoading(Z)V
    .locals 0
    .param p0, "isTrack"    # Z

    .prologue
    .line 362
    sput-boolean p0, Lcom/youku/player/Track;->trackPlayLoading:Z

    .line 363
    return-void
.end method

.method public static setVVEndError(Z)V
    .locals 0
    .param p0, "error"    # Z

    .prologue
    .line 1823
    sput-boolean p0, Lcom/youku/player/Track;->mVVEndError:Z

    .line 1824
    return-void
.end method

.method public static setVideoConnectDelayTime(I)V
    .locals 1
    .param p0, "time"    # I

    .prologue
    .line 1746
    sget v0, Lcom/youku/player/Track;->mVideoConnectDelayTime:I

    if-nez v0, :cond_0

    .line 1747
    sput p0, Lcom/youku/player/Track;->mVideoConnectDelayTime:I

    .line 1748
    :cond_0
    return-void
.end method

.method public static setVideoReqError(Ljava/lang/String;)V
    .locals 0
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 1893
    sput-object p0, Lcom/youku/player/Track;->mVideoReqError:Ljava/lang/String;

    .line 1894
    return-void
.end method

.method public static setplayCompleted(Z)V
    .locals 0
    .param p0, "completed"    # Z

    .prologue
    .line 729
    sput-boolean p0, Lcom/youku/player/Track;->isCompleted:Z

    .line 730
    return-void
.end method

.method public static trackAdLoad(Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const-wide/16 v10, 0x0

    .line 1285
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->trackAd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    sget-wide v6, Lcom/youku/player/Track;->mGetAdvTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 1288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1289
    .local v0, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v8, Lcom/youku/player/Track;->mGetAdvTime:J

    sub-long v2, v6, v8

    .line 1290
    .local v2, "duration":J
    sput-wide v10, Lcom/youku/player/Track;->mGetAdvTime:J

    .line 1291
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1292
    .local v4, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "pltype"

    const-string v6, "adload"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string/jumbo v5, "st"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v8, v0, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string v5, "et"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string/jumbo v5, "s"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1297
    const-string/jumbo v5, "vid"

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    :cond_2
    if-eqz p2, :cond_4

    .line 1299
    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1300
    const-string v5, "ct"

    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    :cond_3
    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->getSchannelid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1302
    const-string v5, "cs"

    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->getSchannelid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_4
    const-string/jumbo v5, "\u524d\u8d34\u5e7f\u544a\u52a0\u8f7d"

    const-string/jumbo v6, "\u8be6\u60c5\u9875"

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7, v4}, Lcom/youku/player/util/AnalyticsWrapper;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public static trackGetPlayList(Landroid/content/Context;JLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getPlayListTime"    # J
    .param p3, "vid"    # Ljava/lang/String;

    .prologue
    .line 1388
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_1

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1390
    .local v0, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sput-wide v4, Lcom/youku/player/Track;->mGetPlayListDuration:J

    .line 1391
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1392
    .local v2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "pltype"

    const-string v4, "getplaylist"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    const-string/jumbo v3, "st"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v6, Lcom/youku/player/Track;->mGetPlayListDuration:J

    sub-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    const-string v3, "et"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const-string/jumbo v3, "s"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v6, Lcom/youku/player/Track;->mGetPlayListDuration:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1397
    const-string/jumbo v3, "vid"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :cond_0
    const-string/jumbo v3, "\u8bf7\u6c42\u89c6\u9891\u4fe1\u606f"

    const-string/jumbo v4, "\u8be6\u60c5\u9875"

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5, v2}, Lcom/youku/player/util/AnalyticsWrapper;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1402
    .end local v0    # "currentTime":J
    .end local v2    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static trackP2PError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "videoId"    # Ljava/lang/String;
    .param p1, "p2pError"    # Ljava/lang/String;

    .prologue
    .line 1521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1522
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    const-string v1, "failP2p"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const-string v1, "p2pVersion"

    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/p2p/P2pManager;->getP2PVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u64ad\u653e\u5668\u672a\u91c7\u7528p2p"

    const-string v3, "p2p"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/youku/player/util/AnalyticsWrapper;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1528
    return-void
.end method

.method public static trackPlayHeart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 1412
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v1, :cond_3

    const/4 v6, 0x0

    .line 1416
    .local v6, "userid":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/youku/analytics/data/PlayActionData$Builder;

    invoke-static {p1}, Lcom/youku/player/Track;->getAnalyticsVid(Lcom/youku/player/module/VideoUrlInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/analytics/data/PlayActionData$Builder;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v0, "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v2

    invoke-static {v2}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/analytics/data/PlayActionData$Builder;->setCurrentFormat(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    if-eqz p2, :cond_4

    const-string v1, "1"

    :goto_2
    invoke-virtual {v2, v1}, Lcom/youku/analytics/data/PlayActionData$Builder;->setFull(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/analytics/data/PlayActionData$Builder;->setCurrentPlaytime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 1422
    iget-object v1, p1, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1423
    iget-object v1, p1, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/youku/player/goplay/Profile;->ctype:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/youku/player/goplay/Profile;->ev:Ljava/lang/String;

    iget-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v5, p1, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/youku/analytics/data/PlayActionData$Builder;->setAntiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 1425
    :cond_2
    invoke-static {p0, v0, v6}, Lcom/youku/player/util/AnalyticsWrapper;->playHeart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    .end local v0    # "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    .end local v6    # "userid":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1418
    .restart local v0    # "builder":Lcom/youku/analytics/data/PlayActionData$Builder;
    .restart local v6    # "userid":Ljava/lang/String;
    :cond_4
    const-string v1, "0"

    goto :goto_2
.end method

.method public static trackPlayHeartTwentyInterval(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 1430
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    const-wide/16 v2, 0x0

    .line 1435
    .local v2, "localplayTime":J
    const-string v0, "1"

    .line 1436
    .local v0, "fullScreen":Ljava/lang/String;
    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v7, :cond_3

    const/4 v5, 0x0

    .line 1438
    .local v5, "userID":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_4

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1440
    :goto_2
    if-eqz p2, :cond_5

    const-string v0, "1"

    .line 1442
    :goto_3
    sget-boolean v7, Lcom/youku/player/Track;->stageStarted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 1443
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    sget-wide v10, Lcom/youku/player/Track;->playStartedTime:J

    sub-long/2addr v8, v10

    sget-wide v10, Lcom/youku/player/Track;->playTime:J

    add-long v2, v8, v10

    .line 1448
    :cond_2
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "liveid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&vvid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&full="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&p2p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&sn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/youku/player/Track;->heartBeatCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    long-to-float v8, v2

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&hi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/youku/player/Track;->twentyInterval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&ctype="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x50

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    long-to-float v9, v2

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/youku/player/Track;->heartBeatCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baseproject/utils/Util;->computeSignature(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1454
    .local v6, "vvPlayHeart":Ljava/lang/String;
    invoke-static {v6, p0}, Lcom/youku/player/util/URLContainer;->getHlsVVPlayHeart(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1455
    .local v4, "url":Ljava/lang/String;
    sget-object v7, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    new-instance v1, Lcom/youku/statistics/StatisticsTask;

    const/4 v7, 0x0

    invoke-direct {v1, v4, v7, p0}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1458
    .local v1, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v1, v7}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1459
    sget v7, Lcom/youku/player/Track;->heartBeatCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/youku/player/Track;->heartBeatCount:I

    goto/16 :goto_0

    .line 1436
    .end local v1    # "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "userID":Ljava/lang/String;
    .end local v6    # "vvPlayHeart":Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v7}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1438
    .restart local v5    # "userID":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto/16 :goto_2

    .line 1440
    :cond_5
    const-string v0, "0"

    goto/16 :goto_3

    .line 1445
    :cond_6
    sget-boolean v7, Lcom/youku/player/Track;->stageStarted:Z

    if-nez v7, :cond_2

    .line 1446
    sget-wide v2, Lcom/youku/player/Track;->playTime:J

    goto/16 :goto_4
.end method

.method public static trackUserExperience(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;FI)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "totalSecond"    # F
    .param p3, "count"    # I

    .prologue
    const/4 v10, 0x0

    .line 1464
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    if-nez v7, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    const/4 v6, 0x0

    .line 1467
    .local v6, "vvUserExperience":Ljava/lang/String;
    const-string v5, "0"

    .line 1469
    .local v5, "vip":Ljava/lang/String;
    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v7, :cond_2

    const/4 v4, 0x0

    .line 1471
    .local v4, "userID":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1473
    :goto_2
    iget-object v7, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-boolean v7, v7, Lcom/youku/player/module/LiveInfo;->isVip:Z

    if-eqz v7, :cond_4

    const-string v5, "1"

    .line 1475
    :goto_3
    :try_start_0
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->getLastPageSource()Ljava/lang/String;

    move-result-object v1

    .line 1476
    .local v1, "rpage":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&rpage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v1, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "liveid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v8, v8, Lcom/youku/player/module/LiveInfo;->isPaid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&vvid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&ctype="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x50

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bufferload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&bps="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/player/module/VideoUrlInfo;->bps:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&area="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v8, v8, Lcom/youku/player/module/LiveInfo;->areaCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v8, v8, Lcom/youku/player/module/LiveInfo;->dmaCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&p2p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&rate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x190

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pvid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&vip="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1488
    .end local v1    # "rpage":Ljava/lang/String;
    :goto_5
    invoke-static {v6}, Lcom/youku/player/util/URLContainer;->getUserExperience(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1489
    .local v3, "url":Ljava/lang/String;
    sget-object v7, Lcom/youku/player/LogTag;->TAG_STATISTIC:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    new-instance v2, Lcom/youku/statistics/StatisticsTask;

    invoke-direct {v2, v3, v10, p0}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1492
    .local v2, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    new-array v7, v10, [Ljava/lang/Void;

    invoke-virtual {v2, v7}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1469
    .end local v2    # "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "userID":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v7}, Lcom/youku/player/apiservice/IUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 1471
    .restart local v4    # "userID":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto/16 :goto_2

    .line 1473
    :cond_4
    const-string v5, "0"

    goto/16 :goto_3

    .line 1476
    .restart local v1    # "rpage":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1485
    .end local v1    # "rpage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v7, Lcom/youku/player/Track;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static trackValfLoad(Landroid/content/Context;JLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adVideoGetTime"    # J
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p5, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 1357
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->trackAd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Lcom/youku/player/Track;->mGetAdvTime:J

    .line 1360
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 1361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1362
    .local v0, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, p1

    .line 1363
    .local v2, "duration":J
    sput-wide v2, Lcom/youku/player/Track;->mGetAdvDuration:J

    .line 1364
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1365
    .local v4, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "pltype"

    const-string/jumbo v6, "valfload"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    const-string/jumbo v5, "s"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    const-string/jumbo v5, "st"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v8, v0, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    const-string v5, "et"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    const-string v5, "hd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    if-eqz p4, :cond_3

    .line 1371
    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1372
    const-string v5, "ct"

    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    :cond_2
    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getSchannelid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1374
    const-string v5, "cs"

    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getSchannelid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1377
    const-string/jumbo v5, "vid"

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_4
    const-string/jumbo v5, "\u8bf7\u6c42\u524d\u8d34\u5e7f\u544a"

    const-string/jumbo v6, "\u8be6\u60c5\u9875"

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7, v4}, Lcom/youku/player/util/AnalyticsWrapper;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method private static trackVideoLoadTime(Landroid/content/Context;JLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoloadTime"    # J
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 319
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "pltype"

    const-string/jumbo v4, "videoload"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v3, "s"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v3, "st"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v6, v0, p1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v3, "et"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v3, "hd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/youku/player/Track;->getTrackFormat(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    const-string/jumbo v3, "vid"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_0
    if-eqz p4, :cond_2

    .line 328
    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    const-string v3, "ct"

    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_1
    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getSchannelid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 331
    const-string v3, "cs"

    invoke-virtual {p4}, Lcom/youku/player/module/VideoUrlInfo;->getSchannelid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_2
    const-string/jumbo v3, "\u89c6\u9891\u52a0\u8f7d"

    const-string/jumbo v4, "\u8be6\u60c5\u9875"

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5, v2}, Lcom/youku/player/util/AnalyticsWrapper;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 336
    return-void
.end method
