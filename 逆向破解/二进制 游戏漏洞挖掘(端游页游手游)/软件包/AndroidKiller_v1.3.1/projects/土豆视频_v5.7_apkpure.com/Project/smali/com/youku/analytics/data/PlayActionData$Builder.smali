.class public Lcom/youku/analytics/data/PlayActionData$Builder;
.super Ljava/lang/Object;
.source "PlayActionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/data/PlayActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private isP2P:Z

.field private isVip:Z

.field private mActionBegin:Ljava/lang/String;

.field private mActionEnd:Ljava/lang/String;

.field private mAdUrl:Ljava/lang/String;

.field private mAdvBeforeDuration:Ljava/lang/String;

.field private mBeforeDuration:Ljava/lang/String;

.field private mChannelId:Ljava/lang/String;

.field private mComplete:Ljava/lang/String;

.field private mContinuePlay:Ljava/lang/String;

.field private mCopyright:Ljava/lang/String;

.field private mCtype:Ljava/lang/String;

.field private mCurrentFormat:Ljava/lang/String;

.field private mCurrentPlaytime:Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mEv:Ljava/lang/String;

.field private mEvent:Ljava/lang/String;

.field private mFreeTime:Ljava/lang/String;

.field private mFull:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mOip:Ljava/lang/String;

.field private mP2PVersion:Ljava/lang/String;

.field private mPayState:Ljava/lang/String;

.field private mPlayExperience:Ljava/lang/String;

.field private mPlayGestures:Ljava/lang/String;

.field private mPlayHD2Duration:Ljava/lang/String;

.field private mPlayHD2Times:Ljava/lang/String;

.field private mPlayHDDuration:Ljava/lang/String;

.field private mPlayHDTimes:Ljava/lang/String;

.field private mPlayLoadEvents:Ljava/lang/String;

.field private mPlayRates:Ljava/lang/String;

.field private mPlaySDDuration:Ljava/lang/String;

.field private mPlaySDTimes:Ljava/lang/String;

.field private mPlayState:Ljava/lang/String;

.field private mPlaycode:Ljava/lang/String;

.field private mPlaylistChannelId:Ljava/lang/String;

.field private mPlaylistId:Ljava/lang/String;

.field private mPlaysid:Ljava/lang/String;

.field private mPlaytype:Ljava/lang/String;

.field private mReplay:Z

.field private mSChannelId:Ljava/lang/String;

.field private mSPlaylistChannelId:Ljava/lang/String;

.field private mSShowChannelId:Ljava/lang/String;

.field private mScreenState:Ljava/lang/String;

.field private mShowChannelId:Ljava/lang/String;

.field private mShowId:Ljava/lang/String;

.field private mSid:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mStartPlaytime:Ljava/lang/String;

.field private mTailers:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mVid:Ljava/lang/String;

.field private mVideoOwner:Ljava/lang/String;

.field private mVideoTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaysid:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVid:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaytype:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaycode:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mComplete:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSource:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVideoTime:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mDuration:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayLoadEvents:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayRates:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mFull:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCurrentFormat:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCurrentPlaytime:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mContinuePlay:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mStartPlaytime:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVideoOwner:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mScreenState:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPayState:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayState:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCopyright:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mTailers:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayExperience:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mP2PVersion:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mEvent:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVid:Ljava/lang/String;

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaysid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayLoadEvents:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayRates:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaySDTimes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaySDDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHDTimes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHDDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHD2Times:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHD2Duration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaytype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCtype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mEv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mOip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mContinuePlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCurrentFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCurrentPlaytime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mFull:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mStartPlaytime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVideoOwner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaycode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/youku/analytics/data/PlayActionData$Builder;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mReplay:Z

    return v0
.end method

.method static synthetic access$31(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaylistChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSPlaylistChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mShowId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mShowChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$38(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSShowChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mComplete:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mScreenState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$41(Lcom/youku/analytics/data/PlayActionData$Builder;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->isVip:Z

    return v0
.end method

.method static synthetic access$42(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPayState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$44(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$45(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mTailers:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$46(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayExperience:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$47(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mP2PVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$48(Lcom/youku/analytics/data/PlayActionData$Builder;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->isP2P:Z

    return v0
.end method

.method static synthetic access$49(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$50(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayGestures:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$51(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mActionBegin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$52(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mActionEnd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$53(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mFreeTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mAdvBeforeDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mBeforeDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVideoTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mDuration:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/youku/analytics/data/ActionBaseData;)Lcom/youku/analytics/data/PlayActionData;
    .locals 1
    .param p1, "data"    # Lcom/youku/analytics/data/ActionBaseData;

    .prologue
    .line 366
    new-instance v0, Lcom/youku/analytics/data/PlayActionData;

    invoke-direct {v0, p0, p1}, Lcom/youku/analytics/data/PlayActionData;-><init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V

    return-object v0
.end method

.method public getPlayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaytype:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method public setActionBegin(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "actionBegin"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mActionBegin:Ljava/lang/String;

    .line 352
    return-object p0
.end method

.method public setActionEnd(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "actionEnd"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mActionEnd:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method public setAdurl(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "adUrl"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mAdUrl:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setAntiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "ctype"    # Ljava/lang/String;
    .param p3, "ev"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "oip"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSid:Ljava/lang/String;

    .line 202
    iput-object p2, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCtype:Ljava/lang/String;

    .line 203
    iput-object p3, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mEv:Ljava/lang/String;

    .line 204
    iput-object p4, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mToken:Ljava/lang/String;

    .line 205
    iput-object p5, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mOip:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mChannelId:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public setComplete(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "complete"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mComplete:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public setContinuePlay(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "continuePlay"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mContinuePlay:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setCopyright(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "copyright"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCopyright:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public setCurrentFormat(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "currentFormat"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCurrentFormat:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setCurrentPlaytime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "currentPlaytime"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mCurrentPlaytime:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mEvent:Ljava/lang/String;

    .line 341
    return-object p0
.end method

.method public setFreeTime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "freeTime"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mFreeTime:Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public setFull(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "full"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mFull:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setIsP2P(Z)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "isP2P"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->isP2P:Z

    .line 336
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mLanguage:Ljava/lang/String;

    .line 291
    return-object p0
.end method

.method public setP2PVersion(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "p2pVersion"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mP2PVersion:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public setPayState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "payState"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPayState:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public setPlayEndInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "advBeforeDuration"    # Ljava/lang/String;
    .param p2, "beforeDuration"    # Ljava/lang/String;
    .param p3, "videoTime"    # Ljava/lang/String;
    .param p4, "duration"    # Ljava/lang/String;
    .param p5, "playLoadEvents"    # Ljava/lang/String;
    .param p6, "playRates"    # Ljava/lang/String;
    .param p7, "playSDTimes"    # Ljava/lang/String;
    .param p8, "playSDDuration"    # Ljava/lang/String;
    .param p9, "playHDTimes"    # Ljava/lang/String;
    .param p10, "playHDDuration"    # Ljava/lang/String;
    .param p11, "playHD2Times"    # Ljava/lang/String;
    .param p12, "playHD2Duration"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mAdvBeforeDuration:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mBeforeDuration:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVideoTime:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mDuration:Ljava/lang/String;

    .line 188
    iput-object p5, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayLoadEvents:Ljava/lang/String;

    .line 189
    iput-object p6, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayRates:Ljava/lang/String;

    .line 190
    iput-object p7, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaySDTimes:Ljava/lang/String;

    .line 191
    iput-object p8, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaySDDuration:Ljava/lang/String;

    .line 192
    iput-object p9, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHDTimes:Ljava/lang/String;

    .line 193
    iput-object p10, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHDDuration:Ljava/lang/String;

    .line 194
    iput-object p11, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHD2Times:Ljava/lang/String;

    .line 195
    iput-object p12, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayHD2Duration:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public setPlayExperience(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "playExperience"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayExperience:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public setPlayGestures(Lcom/youku/analytics/data/PlayActionData$PlayGesture;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 1
    .param p1, "playGestures"    # Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayGestures:Ljava/lang/String;

    .line 347
    :cond_0
    return-object p0
.end method

.method public setPlayState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "playState"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlayState:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public setPlaycode(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "playcode"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaycode:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setPlaylistChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "playlistChannelId"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaylistChannelId:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaylistId:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public setPlaysid(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "playsid"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaysid:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setPlaytype(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "playtype"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mPlaytype:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setReplay(Z)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "replay"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mReplay:Z

    .line 246
    return-object p0
.end method

.method public setSChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "sChannelId"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSChannelId:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setSPlaylistChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "sPlaylistChannelId"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSPlaylistChannelId:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public setSShowChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "sShowChannelId"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSShowChannelId:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public setScreenState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "screenState"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mScreenState:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public setShowChannelId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "showChannelId"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mShowChannelId:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setShowId(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mShowId:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mSource:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public setStartPlaytime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "startPlaytime"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mStartPlaytime:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public setTailers(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "tailers"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mTailers:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVid:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public setVideoOwner(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "videoOwner"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVideoOwner:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public setVideoTime(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "videoTime"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->mVideoTime:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setVip(Z)Lcom/youku/analytics/data/PlayActionData$Builder;
    .locals 0
    .param p1, "vip"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/youku/analytics/data/PlayActionData$Builder;->isVip:Z

    .line 301
    return-object p0
.end method
