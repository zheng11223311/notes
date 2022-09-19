.class public Lcom/youku/player/ad/MidAdModel;
.super Ljava/lang/Object;
.source "MidAdModel.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;
    }
.end annotation


# static fields
.field private static final APPLY_MAX_FAILED_TIMES:I = 0x3

.field public static COUNTDOWN_TIME:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TIME_AFTER_PLAY_POINT:I = 0x7530

.field private static final TIME_BEFORE_GET_URL:I = 0x2bf20

.field private static final TIME_BEFORE_SHOW_TIPS:I = 0x2710


# instance fields
.field public isAfterEndNoSeek:Z

.field private mActivity:Landroid/app/Activity;

.field private mApplyFailTimesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMidAd:I

.field private mIsAfterShowed:Z

.field private mIsGettingAdv:Z

.field private mIsPlaying:Z

.field private mLoadingAd:I

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mMidAdApplyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMidAdvInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/player/goplay/VideoAdvInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mSavedCount:I

.field private mTestAd:Ljava/lang/String;

.field private mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

.field private mTips:Landroid/widget/Toast;

.field private mWoVideoFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "MidAd"

    sput-object v0, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    .line 44
    const v0, 0x2bf20

    sput v0, Lcom/youku/player/ad/MidAdModel;->COUNTDOWN_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    .line 67
    iput-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mWoVideoFlag:I

    .line 76
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    .line 77
    iput-object p2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 78
    iput-object p3, p0, Lcom/youku/player/ad/MidAdModel;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    .line 86
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    .line 87
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsGettingAdv:Z

    .line 88
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    .line 90
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 91
    iput-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mTips:Landroid/widget/Toast;

    .line 92
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 93
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    .line 94
    iput-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerAdControl;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;
    .param p4, "testAd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    .line 67
    iput-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mWoVideoFlag:I

    .line 99
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    .line 100
    iput-object p2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 101
    iput-object p3, p0, Lcom/youku/player/ad/MidAdModel;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    .line 109
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    .line 110
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsGettingAdv:Z

    .line 111
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    .line 113
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 114
    iput-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mTips:Landroid/widget/Toast;

    .line 115
    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 116
    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    .line 117
    iput-object p4, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ad/MidAdModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget v0, p0, Lcom/youku/player/ad/MidAdModel;->mWoVideoFlag:I

    return v0
.end method

.method static synthetic access$002(Lcom/youku/player/ad/MidAdModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/youku/player/ad/MidAdModel;->mWoVideoFlag:I

    return p1
.end method

.method static synthetic access$008(Lcom/youku/player/ad/MidAdModel;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget v0, p0, Lcom/youku/player/ad/MidAdModel;->mWoVideoFlag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/player/ad/MidAdModel;->mWoVideoFlag:I

    return v0
.end method

.method static synthetic access$1002(Lcom/youku/player/ad/MidAdModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/youku/player/ad/MidAdModel;->mIsGettingAdv:Z

    return p1
.end method

.method static synthetic access$102(Lcom/youku/player/ad/MidAdModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    return p1
.end method

.method static synthetic access$1100(Lcom/youku/player/ad/MidAdModel;)Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/youku/player/ad/MidAdModel;Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;)Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;
    .param p1, "x1"    # Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/youku/player/ad/MidAdModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget v0, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/youku/player/ad/MidAdModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    return p1
.end method

.method static synthetic access$1302(Lcom/youku/player/ad/MidAdModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/youku/player/ad/MidAdModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget v0, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    return v0
.end method

.method static synthetic access$300(Lcom/youku/player/ad/MidAdModel;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/ad/MidAdModel;Lcom/youku/player/goplay/VideoAdvInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;
    .param p1, "x1"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/youku/player/ad/MidAdModel;->makeMidADM3u8(Lcom/youku/player/goplay/VideoAdvInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/ad/MidAdModel;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/MidAdModel;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    return-object v0
.end method

.method private hasMidPointAdNotShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/youku/player/ad/MidAdModel;->isAdvInfoEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMidADM3u8(Lcom/youku/player/goplay/VideoAdvInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 624
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v2, "str":Ljava/lang/StringBuffer;
    const-string v3, "#PLSEXTM3U\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 631
    iget-object v3, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 634
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    iget-object v3, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    iget-object v4, v0, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    :cond_1
    const-string v3, "#EXTINF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, v0, Lcom/youku/player/goplay/AdvInfo;->AL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " MID_AD\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    iget-object v3, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 640
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 643
    :goto_2
    return-object v3

    .line 642
    .restart local v1    # "i":I
    :cond_3
    const-string v3, "#EXT-X-ENDLIST\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public addMidAdAdvInfo(ILcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 2
    .param p1, "timestamp"    # I
    .param p2, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 171
    sget-object v0, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    const-string v1, "addMidAdAdvInfo"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    return-void
.end method

.method public addMidAdTimestamp(I)V
    .locals 3
    .param p1, "timestamp"    # I

    .prologue
    .line 165
    sget-object v0, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    const-string v1, "addMidAdTimestamp"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 121
    invoke-direct {p0}, Lcom/youku/player/ad/MidAdModel;->hasMidPointAdNotShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x3

    sget-object v2, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v3, "mo"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 136
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->cancel()V

    .line 144
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    .line 146
    :cond_5
    iput-boolean v5, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    .line 147
    iput-boolean v5, p0, Lcom/youku/player/ad/MidAdModel;->mIsGettingAdv:Z

    .line 148
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    .line 149
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 150
    iput v5, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    .line 152
    iput-boolean v5, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 153
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mTips:Landroid/widget/Toast;

    .line 154
    iput-boolean v5, p0, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 155
    iput v5, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    .line 156
    iput-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public endMidAD()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 472
    return-void
.end method

.method public getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 657
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    .line 650
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMidAdUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v2, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    .line 408
    .local v0, "videoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0, v0}, Lcom/youku/player/ad/MidAdModel;->makeMidADM3u8(Lcom/youku/player/goplay/VideoAdvInfo;)Ljava/lang/String;

    move-result-object v1

    .line 411
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMidAdvUrl(IZ)V
    .locals 13
    .param p1, "timeStamp"    # I
    .param p2, "isOfflineAd"    # Z

    .prologue
    .line 485
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsGettingAdv:Z

    if-nez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mApplyFailTimesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 496
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsGettingAdv:Z

    .line 497
    const/4 v7, 0x0

    .line 498
    .local v7, "ps":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    .line 499
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 500
    move v7, v12

    .line 498
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 503
    :cond_4
    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v8, v2, v4

    .line 504
    .local v8, "pt":D
    sget-object v1, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midad  position is  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v1, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midad  timeStamp is  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v11, Lcom/youku/player/goplay/GetVideoAdvService;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/youku/player/goplay/GetVideoAdvService;-><init>(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 507
    .local v11, "getVideoAdvService":Lcom/youku/player/goplay/GetVideoAdvService;
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    new-instance v0, Lcom/youku/player/ad/AdGetInfo;

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/youku/player/apiservice/IPlayerUiControl;->isVerticalFullScreen()Z

    move-result v10

    move v4, p2

    invoke-direct/range {v0 .. v10}, Lcom/youku/player/ad/AdGetInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;IDZ)V

    .line 512
    .local v0, "adGetInfo":Lcom/youku/player/ad/AdGetInfo;
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 513
    :cond_5
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/ad/MidAdModel$3;

    invoke-direct {v2, p0, p1}, Lcom/youku/player/ad/MidAdModel$3;-><init>(Lcom/youku/player/ad/MidAdModel;I)V

    invoke-virtual {v11, v0, v1, v2}, Lcom/youku/player/goplay/GetVideoAdvService;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto/16 :goto_0

    .line 572
    :cond_6
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mTestAd:Ljava/lang/String;

    new-instance v3, Lcom/youku/player/ad/MidAdModel$4;

    invoke-direct {v3, p0, p1}, Lcom/youku/player/ad/MidAdModel$4;-><init>(Lcom/youku/player/ad/MidAdModel;I)V

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/youku/player/goplay/GetVideoAdvService;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto/16 :goto_0
.end method

.method public isAdvInfoEmpty()Z
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    const/4 v1, 0x0

    .line 710
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 703
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isCurrentAdvEmpty()Z
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 694
    :cond_0
    const/4 v0, 0x1

    .line 697
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMidAdInterval(I)I
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x2bf20

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit16 v1, v1, 0x7530

    if-ge p1, v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 190
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public needToBuffering(I)Z
    .locals 5
    .param p1, "currentPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 263
    :goto_0
    return v2

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    const-string v2, "local"

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 250
    goto :goto_0

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 254
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v2, p1

    .line 255
    .local v0, "dur":I
    if-lez v0, :cond_2

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .line 258
    sget-object v2, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    const-string v3, "needToBuffering  true"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v2, 0x1

    goto :goto_0

    .line 253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "dur":I
    .end local v1    # "i":I
    :cond_3
    move v2, v3

    .line 263
    goto :goto_0
.end method

.method public needToGetMidAdvUrl(II)I
    .locals 6
    .param p1, "currentPosition"    # I
    .param p2, "midAdTime"    # I

    .prologue
    const v5, 0x2bf20

    const/4 v3, -0x1

    .line 207
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    move p2, v3

    .line 238
    .end local p2    # "midAdTime":I
    :goto_0
    return p2

    .line 210
    .restart local p2    # "midAdTime":I
    :cond_0
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    const-string v2, "local"

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    if-nez v2, :cond_1

    move p2, v3

    .line 215
    goto :goto_0

    .line 217
    :cond_1
    if-lez p2, :cond_2

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    sub-int v0, p2, p1

    .line 219
    .local v0, "dur":I
    if-lez v0, :cond_2

    if-gt v0, v5, :cond_2

    iget-boolean v2, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    sget-object v2, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToGetMidAdvUrl time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v0    # "dur":I
    :cond_2
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v2, p1

    .line 229
    .restart local v0    # "dur":I
    if-lez v0, :cond_3

    if-gt v0, v5, :cond_3

    iget-boolean v2, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    sget-object v2, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToGetMidAdvUrl time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto/16 :goto_0

    .line 227
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "dur":I
    .end local v1    # "i":I
    :cond_4
    move p2, v3

    .line 238
    goto/16 :goto_0
.end method

.method public needToPlayMidAD(I)Z
    .locals 5
    .param p1, "currentPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 292
    :goto_0
    return v2

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    const-string v2, "local"

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 275
    goto :goto_0

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 279
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, p1, v2

    .line 280
    .local v0, "dur":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    const/16 v2, 0x7530

    if-ge v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    if-nez v2, :cond_3

    .line 283
    iget v3, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .line 285
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/youku/player/ad/MidAdModel;->setMidADUrl(I)V

    .line 287
    :cond_2
    sget-object v2, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    const-string v3, "needToPlayMidAD  true"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 278
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "dur":I
    .end local v1    # "i":I
    :cond_4
    move v2, v3

    .line 292
    goto/16 :goto_0
.end method

.method public needToShowTips(I)Z
    .locals 4
    .param p1, "currentPosition"    # I

    .prologue
    .line 296
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v2, p1

    .line 299
    .local v0, "dur":I
    const/16 v2, 0x2328

    if-le v0, v2, :cond_0

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    sget-object v2, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    const-string v3, "needToShowTips  true"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v2, 0x1

    .line 307
    .end local v0    # "dur":I
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 297
    .restart local v0    # "dur":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "dur":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onPositionUpdate(I)V
    .locals 4
    .param p1, "currentPosition"    # I

    .prologue
    .line 719
    iget-object v2, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v2, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {p0, p1}, Lcom/youku/player/ad/MidAdModel;->isInMidAdInterval(I)I

    move-result v0

    .line 724
    .local v0, "midAdTime":I
    if-lez v0, :cond_0

    .line 725
    invoke-virtual {p0, p1, v0}, Lcom/youku/player/ad/MidAdModel;->needToGetMidAdvUrl(II)I

    move-result v1

    .line 726
    .local v1, "timeToGetUrl":I
    if-lez v1, :cond_2

    .line 727
    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/youku/player/ad/MidAdModel;->getMidAdvUrl(IZ)V

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {p0, p1}, Lcom/youku/player/ad/MidAdModel;->needToBuffering(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 735
    invoke-virtual {p0, p1}, Lcom/youku/player/ad/MidAdModel;->setMidADUrl(I)V

    .line 736
    invoke-virtual {p0, p1}, Lcom/youku/player/ad/MidAdModel;->needToShowTips(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/youku/player/ad/MidAdModel;->showTips()V

    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {p0, p1}, Lcom/youku/player/ad/MidAdModel;->needToPlayMidAD(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/youku/player/ad/MidAdModel;->playMidAD(I)V

    goto :goto_0
.end method

.method public playMidAD(I)V
    .locals 3
    .param p1, "adTime"    # I

    .prologue
    .line 429
    iget-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    .line 437
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v0

    .line 441
    .local v0, "videoTime":I
    :goto_1
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v1, v0, p1}, Lcom/youku/player/BaseMediaPlayer;->playMidADConfirm(II)V

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    goto :goto_0

    .line 439
    .end local v0    # "videoTime":I
    :cond_2
    iget v0, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .restart local v0    # "videoTime":I
    goto :goto_1
.end method

.method public removeCurrentAdv()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 670
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iput-boolean v3, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 674
    iput v3, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .line 675
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    goto :goto_0
.end method

.method public removeCurrentAdvInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 680
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdApplyMap:Ljava/util/Map;

    iget v1, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iput-boolean v3, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 686
    iput v3, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    .line 687
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    goto :goto_0
.end method

.method public resetAfterRelease()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 476
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    .line 477
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->cancel()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    .line 482
    :cond_0
    return-void
.end method

.method public setMidADUrl(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 318
    iget v8, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    iget v9, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    if-ne v8, v9, :cond_0

    .line 404
    :goto_0
    return-void

    .line 321
    :cond_0
    const/4 v4, 0x0

    .line 322
    .local v4, "videoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget v9, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "videoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    check-cast v4, Lcom/youku/player/goplay/VideoAdvInfo;

    .line 323
    .restart local v4    # "videoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    if-nez v4, :cond_2

    .line 324
    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 326
    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v0, p1, v8

    .line 327
    .local v0, "dur":I
    const/16 v8, -0x2710

    if-lt v0, v8, :cond_1

    const/16 v8, 0x7530

    if-ge v0, v8, :cond_1

    iget-boolean v8, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v8, v8, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    if-nez v8, :cond_1

    .line 333
    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMidAdvInfoMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/youku/player/ad/MidAdModel;->mMidList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "videoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    check-cast v4, Lcom/youku/player/goplay/VideoAdvInfo;

    .line 325
    .restart local v4    # "videoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    .end local v0    # "dur":I
    .end local v1    # "i":I
    :cond_2
    new-instance v6, Lcom/youku/player/ad/MidAdModel$1;

    invoke-direct {v6, p0}, Lcom/youku/player/ad/MidAdModel$1;-><init>(Lcom/youku/player/ad/MidAdModel;)V

    .line 359
    .local v6, "woVideoHandler":Landroid/os/Handler;
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isSatisfyChinaUnicomFreeFlow()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_3

    .line 360
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v8, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 361
    move v2, v1

    .line 362
    .local v2, "index":I
    move-object v5, v4

    .line 363
    .local v5, "woVideoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    iget-object v8, v5, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/player/goplay/AdvInfo;

    iget-object v8, v8, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    const-string v9, "0"

    invoke-static {v8, v9}, Lcom/youku/player/unicom/ChinaUnicomManager;->getChinaUnicomVideoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 364
    .local v7, "woVideoMidAdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v8, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/youku/player/ad/MidAdModel$2;

    invoke-direct {v9, p0, v5, v2, v6}, Lcom/youku/player/ad/MidAdModel$2;-><init>(Lcom/youku/player/ad/MidAdModel;Lcom/youku/player/goplay/VideoAdvInfo;ILandroid/os/Handler;)V

    invoke-static {v8, v7, v9}, Lcom/unicom/iap/sdk/WoVideoSDK;->identifyWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 391
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v5    # "woVideoAdvInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    .end local v7    # "woVideoMidAdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v8, :cond_4

    .line 393
    invoke-direct {p0, v4}, Lcom/youku/player/ad/MidAdModel;->makeMidADM3u8(Lcom/youku/player/goplay/VideoAdvInfo;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "url":Ljava/lang/String;
    sget-object v8, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "midad url is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    if-eqz v3, :cond_4

    .line 396
    iget v8, p0, Lcom/youku/player/ad/MidAdModel;->mCurrentMidAd:I

    iput v8, p0, Lcom/youku/player/ad/MidAdModel;->mLoadingAd:I

    .line 397
    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v8, v3}, Lcom/youku/player/BaseMediaPlayer;->setMidADDataSource(Ljava/lang/String;)V

    .line 398
    iget-object v8, p0, Lcom/youku/player/ad/MidAdModel;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v8}, Lcom/youku/player/BaseMediaPlayer;->prepareMidAD()V

    .line 403
    .end local v3    # "url":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    iput v8, p0, Lcom/youku/player/ad/MidAdModel;->mWoVideoFlag:I

    goto/16 :goto_0
.end method

.method public showTips()V
    .locals 3

    .prologue
    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTips:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/youku/android/player/R$string;->playersdk_mid_ad_tips:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTips:Landroid/widget/Toast;

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTips:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    :goto_1
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTips:Landroid/widget/Toast;

    sget v1, Lcom/youku/android/player/R$string;->playersdk_mid_ad_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startMidAD()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/MidAdModel;->mIsPlaying:Z

    .line 467
    return-void
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 750
    sget-object v0, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    const-string v1, " mid ad start timer"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->cancel()V

    .line 754
    :cond_0
    new-instance v0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    sget v1, Lcom/youku/player/ad/MidAdModel;->COUNTDOWN_TIME:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;-><init>(Lcom/youku/player/ad/MidAdModel;JJ)V

    iput-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    .line 755
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    .line 757
    return-void
.end method

.method public timerPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 760
    iget-boolean v0, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    if-lt v0, v3, :cond_0

    .line 761
    sget-object v0, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timerPause(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->cancel()V

    .line 763
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    iput-boolean v3, v0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->isPause:Z

    .line 765
    :cond_0
    return-void
.end method

.method public timerStart()V
    .locals 3

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/youku/player/ad/MidAdModel;->mIsAfterShowed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mTimer:Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;

    iget-boolean v0, v0, Lcom/youku/player/ad/MidAdModel$MidAdCountDownTimer;->isPause:Z

    if-eqz v0, :cond_0

    .line 770
    sget-object v0, Lcom/youku/player/ad/MidAdModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timerStart(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel;->mSavedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/youku/player/ad/MidAdModel;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/MidAdModel$5;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/MidAdModel$5;-><init>(Lcom/youku/player/ad/MidAdModel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 783
    :cond_0
    return-void
.end method
