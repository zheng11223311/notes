.class public Lcom/youku/analytics/data/PlayActionData;
.super Ljava/lang/Object;
.source "PlayActionData.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/analytics/data/PlayActionData$Builder;,
        Lcom/youku/analytics/data/PlayActionData$PlayGesture;
    }
.end annotation


# static fields
.field protected static final ACTIONBEGIN:Ljava/lang/String; = "ab"

.field protected static final ACTIONEND:Ljava/lang/String; = "ae"

.field protected static final ADURL:Ljava/lang/String; = "u2"

.field protected static final ADV_BEFORE_DURATION:Ljava/lang/String; = "ad"

.field protected static final BEFORE_DURATION:Ljava/lang/String; = "bd"

.field protected static final CHANNEL_ID:Ljava/lang/String; = "c2"

.field protected static final COMPLETE:Ljava/lang/String; = "c1"

.field protected static final CONTINUE_PLAY:Ljava/lang/String; = "cp"

.field protected static final COPYRIGHT:Ljava/lang/String; = "cr"

.field protected static final CTYPE:Ljava/lang/String; = "ct1"

.field protected static final CURRENT_FORMAT:Ljava/lang/String; = "cf"

.field protected static final CURRENT_PLAY_TIME:Ljava/lang/String; = "ct"

.field protected static final DURATION:Ljava/lang/String; = "d1"

.field protected static final EV:Ljava/lang/String; = "ev1"

.field protected static final EVENT:Ljava/lang/String; = "e2"

.field protected static final FREE_TIME:Ljava/lang/String; = "ft1"

.field protected static final FULL:Ljava/lang/String; = "fu"

.field protected static final ISP2P:Ljava/lang/String; = "ip1"

.field protected static final ISVIP:Ljava/lang/String; = "iv"

.field protected static final LANGUAGE:Ljava/lang/String; = "ln"

.field protected static final OIP:Ljava/lang/String; = "oip1"

.field protected static final P2PVERSION:Ljava/lang/String; = "pv1"

.field protected static final PAY_STATE:Ljava/lang/String; = "ps1"

.field protected static final PLAYCODE:Ljava/lang/String; = "p3"

.field protected static final PLAYGESTURES:Ljava/lang/String; = "pg"

.field protected static final PLAYLIST_CHANNEL_ID:Ljava/lang/String; = "p5"

.field protected static final PLAYLIST_ID:Ljava/lang/String; = "p4"

.field protected static final PLAYSID:Ljava/lang/String; = "s2"

.field protected static final PLAYTYPE:Ljava/lang/String; = "p2"

.field protected static final PLAY_EXPERIENCE:Ljava/lang/String; = "px"

.field protected static final PLAY_HD2_DURATION:Ljava/lang/String; = "pd3"

.field protected static final PLAY_HD2_TIMES:Ljava/lang/String; = "pt3"

.field protected static final PLAY_HD_DURATION:Ljava/lang/String; = "pd2"

.field protected static final PLAY_HD_TIMES:Ljava/lang/String; = "pt2"

.field protected static final PLAY_LOAD_EVENTS:Ljava/lang/String; = "pe"

.field protected static final PLAY_RATES:Ljava/lang/String; = "pr"

.field protected static final PLAY_SD_DURATION:Ljava/lang/String; = "pd1"

.field protected static final PLAY_SD_TIMES:Ljava/lang/String; = "pt1"

.field protected static final PLAY_STATE:Ljava/lang/String; = "ps2"

.field protected static final REFER_PAGE:Ljava/lang/String; = "rp1"

.field protected static final REPLAY:Ljava/lang/String; = "rp"

.field protected static final SCREEN_STATE:Ljava/lang/String; = "ss"

.field protected static final SHOW_CHANNEL_ID:Ljava/lang/String; = "s5"

.field protected static final SHOW_ID:Ljava/lang/String; = "s4"

.field protected static final SID:Ljava/lang/String; = "s3"

.field protected static final START_PLAY_TIME:Ljava/lang/String; = "st"

.field protected static final S_CHANNEL_ID:Ljava/lang/String; = "sc2"

.field protected static final S_PLAYLIST_CHANNEL_ID:Ljava/lang/String; = "sp5"

.field protected static final S_SHOW_CHANNEL_ID:Ljava/lang/String; = "ss5"

.field protected static final TOKEN:Ljava/lang/String; = "tk1"

.field protected static final TRAILER:Ljava/lang/String; = "tr"

.field protected static final VID:Ljava/lang/String; = "v"

.field protected static final VIDEO_OWNER:Ljava/lang/String; = "v2"

.field protected static final VIDEO_TIME:Ljava/lang/String; = "v1"


# instance fields
.field protected isP2P:Z

.field protected isVip:Z

.field private mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

.field protected mActionBegin:Ljava/lang/String;

.field protected mActionEnd:Ljava/lang/String;

.field protected mAdurl:Ljava/lang/String;

.field protected mAdvBeforeDuration:Ljava/lang/String;

.field protected mBeforeDuration:Ljava/lang/String;

.field protected mChannelId:Ljava/lang/String;

.field protected mComplete:Ljava/lang/String;

.field protected mContinuePlay:Ljava/lang/String;

.field protected mCopyright:Ljava/lang/String;

.field protected mCtype:Ljava/lang/String;

.field protected mCurrentFormat:Ljava/lang/String;

.field protected mCurrentPlaytime:Ljava/lang/String;

.field protected mDuration:Ljava/lang/String;

.field protected mEv:Ljava/lang/String;

.field protected mEvent:Ljava/lang/String;

.field protected mFreeTime:Ljava/lang/String;

.field protected mFull:Ljava/lang/String;

.field protected mLanguage:Ljava/lang/String;

.field protected mOip:Ljava/lang/String;

.field protected mP2PVersion:Ljava/lang/String;

.field protected mPayState:Ljava/lang/String;

.field protected mPlayExperience:Ljava/lang/String;

.field protected mPlayGestures:Ljava/lang/String;

.field protected mPlayHD2Duration:Ljava/lang/String;

.field protected mPlayHD2Times:Ljava/lang/String;

.field protected mPlayHDDuration:Ljava/lang/String;

.field protected mPlayHDTimes:Ljava/lang/String;

.field protected mPlayLoadEvents:Ljava/lang/String;

.field protected mPlayRates:Ljava/lang/String;

.field protected mPlaySDDuration:Ljava/lang/String;

.field protected mPlaySDTimes:Ljava/lang/String;

.field protected mPlayState:Ljava/lang/String;

.field protected mPlaycode:Ljava/lang/String;

.field protected mPlaylistChannelId:Ljava/lang/String;

.field protected mPlaylistId:Ljava/lang/String;

.field protected mPlaysid:Ljava/lang/String;

.field mPlaytype:Ljava/lang/String;

.field protected mReplay:Z

.field protected mSChannelId:Ljava/lang/String;

.field protected mSPlaylistChannelId:Ljava/lang/String;

.field protected mSShowChannelId:Ljava/lang/String;

.field protected mScreenState:Ljava/lang/String;

.field protected mShowChannelId:Ljava/lang/String;

.field protected mShowId:Ljava/lang/String;

.field protected mSid:Ljava/lang/String;

.field protected mSource:Ljava/lang/String;

.field protected mStartPlaytime:Ljava/lang/String;

.field protected mTailers:Ljava/lang/String;

.field protected mToken:Ljava/lang/String;

.field protected mVid:Ljava/lang/String;

.field protected mVideoOwner:Ljava/lang/String;

.field protected mVideoTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V
    .locals 1
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "data"    # Lcom/youku/analytics/data/ActionBaseData;

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p2, p0, Lcom/youku/analytics/data/PlayActionData;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    .line 380
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$0(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mVid:Ljava/lang/String;

    .line 381
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$1(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaysid:Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$2(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaytype:Ljava/lang/String;

    .line 383
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$3(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaycode:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$4(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mComplete:Ljava/lang/String;

    .line 385
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$5(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mAdurl:Ljava/lang/String;

    .line 386
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$6(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mAdvBeforeDuration:Ljava/lang/String;

    .line 387
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$7(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mBeforeDuration:Ljava/lang/String;

    .line 388
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$8(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mVideoTime:Ljava/lang/String;

    .line 389
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$9(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mDuration:Ljava/lang/String;

    .line 390
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$10(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayLoadEvents:Ljava/lang/String;

    .line 391
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$11(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayRates:Ljava/lang/String;

    .line 392
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$12(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaySDTimes:Ljava/lang/String;

    .line 393
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$13(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaySDDuration:Ljava/lang/String;

    .line 394
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$14(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayHDTimes:Ljava/lang/String;

    .line 395
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$15(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayHDDuration:Ljava/lang/String;

    .line 396
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$16(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayHD2Times:Ljava/lang/String;

    .line 397
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$17(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayHD2Duration:Ljava/lang/String;

    .line 398
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$18(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mSource:Ljava/lang/String;

    .line 399
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$19(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mSid:Ljava/lang/String;

    .line 400
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$20(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mCtype:Ljava/lang/String;

    .line 401
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$21(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mEv:Ljava/lang/String;

    .line 402
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$22(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mToken:Ljava/lang/String;

    .line 403
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$23(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mOip:Ljava/lang/String;

    .line 404
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$24(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mContinuePlay:Ljava/lang/String;

    .line 405
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$25(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mCurrentFormat:Ljava/lang/String;

    .line 406
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$26(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mCurrentPlaytime:Ljava/lang/String;

    .line 407
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$27(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mFull:Ljava/lang/String;

    .line 408
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$28(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mStartPlaytime:Ljava/lang/String;

    .line 410
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$29(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mVideoOwner:Ljava/lang/String;

    .line 411
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$30(Lcom/youku/analytics/data/PlayActionData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/analytics/data/PlayActionData;->mReplay:Z

    .line 412
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$31(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mChannelId:Ljava/lang/String;

    .line 413
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$32(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mSChannelId:Ljava/lang/String;

    .line 414
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$33(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaylistId:Ljava/lang/String;

    .line 415
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$34(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaylistChannelId:Ljava/lang/String;

    .line 416
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$35(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mSPlaylistChannelId:Ljava/lang/String;

    .line 417
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$36(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mShowId:Ljava/lang/String;

    .line 418
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$37(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mShowChannelId:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$38(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mSShowChannelId:Ljava/lang/String;

    .line 420
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$39(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mLanguage:Ljava/lang/String;

    .line 421
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$40(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mScreenState:Ljava/lang/String;

    .line 422
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$41(Lcom/youku/analytics/data/PlayActionData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/analytics/data/PlayActionData;->isVip:Z

    .line 423
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$42(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPayState:Ljava/lang/String;

    .line 424
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$43(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayState:Ljava/lang/String;

    .line 425
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$44(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mCopyright:Ljava/lang/String;

    .line 426
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$45(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mTailers:Ljava/lang/String;

    .line 427
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$46(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayExperience:Ljava/lang/String;

    .line 428
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$47(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mP2PVersion:Ljava/lang/String;

    .line 429
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$48(Lcom/youku/analytics/data/PlayActionData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/analytics/data/PlayActionData;->isP2P:Z

    .line 430
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$49(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mEvent:Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$50(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlayGestures:Ljava/lang/String;

    .line 432
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$51(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mActionBegin:Ljava/lang/String;

    .line 433
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$52(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mActionEnd:Ljava/lang/String;

    .line 434
    invoke-static {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->access$53(Lcom/youku/analytics/data/PlayActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mFreeTime:Ljava/lang/String;

    .line 435
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0}, Lcom/youku/analytics/data/ActionBaseData;->isValid()Z

    move-result v0

    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    return-void
.end method

.method public setSession(Ljava/lang/String;J)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 549
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/analytics/data/ActionBaseData;->setSession(Ljava/lang/String;J)V

    .line 550
    return-void
.end method

.method public write(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0, p1}, Lcom/youku/analytics/data/ActionBaseData;->write(Lorg/json/JSONObject;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaysid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    const-string/jumbo v0, "s2"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayActionData;->mPlaysid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData;->mVid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    const-string/jumbo v0, "v"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayActionData;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    :cond_2
    return-void
.end method
