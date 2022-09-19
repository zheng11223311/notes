.class public Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginFullScreenPlay.java"

# interfaces
.implements Lcom/youku/phone/detail/plugin/fullscreen/MessageID;
.implements Lcom/youku/phone/detail/DetailMessage;
.implements Lcom/youku/util/IChangeDefinition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field containerView:Landroid/view/View;

.field detailGeted:Z

.field private goodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

.field private mAnnos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurVid:Ljava/lang/String;

.field public mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

.field public mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

.field mCurrentPositionChangeTimes:I

.field mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

.field protected mHasNext:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mNextAlbumId:Ljava/lang/String;

.field protected mNextVid:Ljava/lang/String;

.field protected mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

.field private mVideoNoticeBottoms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoNoticeTops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoNoticeVid:Ljava/lang/String;

.field private mVotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field needHideSystemUIList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 5
    .param p1, "context"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Galaxy Nexus"

    aput-object v1, v0, v3

    const-string v1, "Nexus 7"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Nexus 4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->needHideSystemUIList:[Ljava/lang/String;

    .line 279
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrentPositionChangeTimes:I

    .line 342
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->detailGeted:Z

    .line 501
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mHasNext:Z

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurVid:Ljava/lang/String;

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextVid:Ljava/lang/String;

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextAlbumId:Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 55
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "PluginFullScreenPlay"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 58
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030255

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->containerView:Landroid/view/View;

    .line 59
    invoke-direct {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->initView(Z)V

    .line 60
    const v0, 0x7f0c0b58

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .line 61
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setPluginFullScreen(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V

    .line 62
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setMediaPlayer(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 63
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->init()V

    .line 64
    return-void
.end method

.method private initPluginFullscreenVertical()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    if-nez v0, :cond_0

    .line 493
    const v0, 0x7f0c0b59

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    .line 494
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setPluginFullScreen(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V

    .line 495
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setMediaPlayer(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 496
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->init()V

    .line 497
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onPluginAdded()V

    .line 499
    :cond_0
    return-void
.end method

.method private initView(Z)V
    .locals 2
    .param p1, "isNeedSetThumb"    # Z

    .prologue
    .line 134
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->tabChangeClose()V

    .line 140
    return-void
.end method

.method private isHorizontalScreenShow()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedHideSystemUI()Z
    .locals 6

    .prologue
    .line 167
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "model":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->needHideSystemUIList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 169
    .local v4, "tempStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const/4 v5, 0x1

    .line 173
    .end local v4    # "tempStr":Ljava/lang/String;
    :goto_1
    return v5

    .line 168
    .restart local v4    # "tempStr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v4    # "tempStr":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private showLock()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showLock()V

    .line 201
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 8
    .param p1, "currentPosition"    # I

    .prologue
    .line 283
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-eqz v6, :cond_0

    .line 328
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v6, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->OnCurrentPositionChangeListener(I)V

    .line 291
    :goto_1
    iget v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrentPositionChangeTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrentPositionChangeTimes:I

    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "duration":F
    :try_start_0
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 299
    :goto_2
    const/4 v3, 0x0

    .line 300
    .local v3, "headerTime":F
    const/4 v5, 0x0

    .line 302
    .local v5, "tailTime":F
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v6, :cond_3

    .line 303
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->isHasHead()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getHeadPosition()I

    move-result v2

    .line 306
    .local v2, "headPosition":I
    add-int/lit16 v6, v2, -0x3a98

    if-ge p1, v6, :cond_1

    const/16 v6, 0x5dc

    if-le p1, v6, :cond_1

    .line 308
    int-to-float v3, v2

    .line 309
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 310
    const-string/jumbo v6, "\u4e3a\u60a8\u8df3\u8fc7\u7247\u5934\u54e6"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v6, "zpy"

    const-string/jumbo v7, "\u4e3a\u60a8\u8df3\u8fc7\u7247\u5934 pluginfull"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v2    # "headPosition":I
    :cond_1
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->isHasTail()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 315
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getTailPosition()I

    move-result v4

    .line 316
    .local v4, "tailPosition":I
    int-to-float v5, v4

    .line 317
    sub-int v6, v4, p1

    const/16 v7, 0x7d0

    if-gt v6, v7, :cond_3

    .line 319
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 320
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 321
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 322
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onCompletionListener()V

    goto/16 :goto_0

    .line 289
    .end local v0    # "duration":F
    .end local v3    # "headerTime":F
    .end local v4    # "tailPosition":I
    .end local v5    # "tailTime":F
    :cond_2
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v6, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->OnCurrentPositionChangeListener(I)V

    goto/16 :goto_1

    .line 296
    .restart local v0    # "duration":F
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "headerTime":F
    .restart local v5    # "tailTime":F
    :cond_3
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6, p1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    goto/16 :goto_0
.end method

.method public OnPreparedListener()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->OnPreparedListener()V

    .line 249
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->OnPreparedListener()V

    .line 252
    :cond_0
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->OnTimeoutListener()V

    .line 266
    const v0, 0x7f0d02f0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 267
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->OnTimeoutListener()V

    .line 270
    :cond_0
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 261
    return-void
.end method

.method public back()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->back()V

    .line 274
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->back()V

    .line 277
    :cond_0
    return-void
.end method

.method public cannotDownload()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->cannotDownload()V

    .line 621
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->cannotDownload()V

    .line 624
    :cond_0
    return-void
.end method

.method public clearHdInfos()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->goodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 413
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearHdInfos()V

    .line 414
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->clearHdInfos()V

    .line 417
    :cond_0
    return-void
.end method

.method public clearKuwoDownloadBroadcast()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearKuwoDownloadBroadcast()V

    .line 753
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->clearKuwoDownloadBroadcast()V

    .line 756
    :cond_0
    return-void
.end method

.method public clearNext()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearNext()V

    .line 522
    return-void
.end method

.method public clearPayPage()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearPayPage()V

    .line 746
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->clearPayPage()V

    .line 749
    :cond_0
    return-void
.end method

.method public clearVideoList()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearVideoList()V

    .line 346
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->clearVideoList()V

    .line 349
    :cond_0
    return-void
.end method

.method public clearVideoTips()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearVideoTips()V

    .line 111
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->clearVideoTips()V

    .line 114
    :cond_0
    return-void
.end method

.method public disableDownload()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->disableDownload()V

    .line 600
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->disableDownload()V

    .line 603
    :cond_0
    return-void
.end method

.method public disableSubbtn()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->disableSubbtn()V

    .line 607
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->disableSubbtn()V

    .line 610
    :cond_0
    return-void
.end method

.method public enableDownload()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->enableDownload()V

    .line 614
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->enableDownload()V

    .line 617
    :cond_0
    return-void
.end method

.method public hideControllerAndSystemUI()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerAndSystemUI()V

    .line 104
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->hideControllerAndSystemUI()V

    .line 107
    :cond_0
    return-void
.end method

.method public isScreenshotShow()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->isScreenshotShow()Z

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isScreenshotShow()Z

    move-result v0

    goto :goto_0
.end method

.method public isVerticalScreenShow()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoRecordShow()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v0

    return v0
.end method

.method public newVideo()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->newVideo()V

    .line 579
    return-void
.end method

.method public onADplaying()V
    .locals 2

    .prologue
    .line 664
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onADplaying"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onADplaying()V

    .line 666
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onADplaying()V

    .line 669
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 181
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed isVerticalScreenShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onBackPressed()Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 206
    return-void
.end method

.method public onChangeVideoDefinitionComplete()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onChangeVideoDefinitionComplete()V

    .line 700
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onChangeVideoDefinitionComplete()V

    .line 703
    :cond_0
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public onCompletionListener()V
    .locals 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onCompletionListener()V

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurVid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextVid:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tudou/ui/activity/DetailActivity;->onPlayComplete(ILjava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onCompletionListener()V

    goto :goto_1
.end method

.method public onDown()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onDown()V

    .line 564
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 239
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorListener what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onErrorListener(II)Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onErrorListener(II)Z

    move-result v0

    goto :goto_0
.end method

.method public onFavor()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onFavor()V

    .line 569
    return-void
.end method

.method public onFullScreen()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onFullScreen()V

    .line 715
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onFullScreen()V

    .line 718
    :cond_0
    return-void
.end method

.method public onHeadsetPlug(ILjava/lang/String;I)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "microphone"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onHeadsetPlug(ILjava/lang/String;I)V

    .line 75
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onHeadsetPlug(ILjava/lang/String;I)V

    .line 78
    :cond_0
    return-void
.end method

.method public onLoadedListener()V
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onLoadedListener"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onLoadedListener()V

    .line 334
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onLoadedListener()V

    .line 337
    :cond_0
    return-void
.end method

.method public onLoadingListener()V
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onLoadingListener()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onLoadingListener()V

    .line 357
    return-void
.end method

.method public onMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 377
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onMute(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onMute(Z)V

    .line 381
    :cond_0
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onNotifyChangeVideoQuality()V

    .line 583
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onNotifyChangeVideoQuality()V

    .line 586
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onPause()V

    .line 646
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onPause()V

    .line 649
    :cond_0
    return-void
.end method

.method public onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V
    .locals 1
    .param p1, "payinfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "vipError"    # I
    .param p3, "tip"    # Ljava/lang/String;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V

    .line 742
    :cond_0
    return-void
.end method

.method public onPayinfoShowLoginChange()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onPayinfoShowLoginChange()V

    .line 118
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onPayinfoShowLoginChange()V

    .line 121
    :cond_0
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 3
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 674
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayNoRightVideo text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/player/goplay/GoplayException;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V

    .line 676
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCompleteGoSmall()V

    .line 682
    :cond_1
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onPlayReleateNoRightVideo()V

    .line 687
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onPlayReleateNoRightVideo()V

    .line 690
    :cond_0
    return-void
.end method

.method public onPluginAdded()V
    .locals 1

    .prologue
    .line 534
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 535
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onPluginAdded()V

    .line 536
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onPluginAdded()V

    .line 539
    :cond_0
    return-void
.end method

.method public onRealVideoStart()V
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onRealVideoStart()V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onRealVideoStart()V

    goto :goto_0
.end method

.method public onRealVideoStarted()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onRealVideoStarted()V

    .line 629
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onRealVideoStarted()V

    .line 632
    :cond_0
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onRealVideoStarted"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public onReplay()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onReplay()V

    .line 226
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onReplay"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onReplay()V

    .line 228
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onReplay()V

    .line 231
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onResume()V

    .line 763
    :cond_0
    return-void
.end method

.method public onSmallScreen()V
    .locals 2

    .prologue
    .line 706
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onSmallScreen"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onSmallScreen()V

    .line 708
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onSmallScreen()V

    .line 711
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public onSubscribe()V
    .locals 2

    .prologue
    .line 722
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onSubscribe"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onSubscribe()V

    .line 724
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onSubscribe()V

    .line 727
    :cond_0
    return-void
.end method

.method public onUnFavor()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onUnFavor()V

    .line 574
    return-void
.end method

.method public onUnSubscribe()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onUnSubscribe()V

    .line 732
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onUnSubscribe()V

    .line 735
    :cond_0
    return-void
.end method

.method public onUp()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onUp()V

    .line 559
    return-void
.end method

.method public onVideoChange()V
    .locals 2

    .prologue
    .line 385
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onVideoChange"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onVideoChange()V

    .line 387
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoChange()V

    .line 390
    :cond_0
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 1
    .param p1, "needRetry"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onVideoInfoGetFail(Z)V

    .line 527
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoInfoGetFail(Z)V

    .line 530
    :cond_0
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 442
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onVideoInfoGetted"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onVideoInfoGetted()V

    .line 445
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVerticalScreenShow() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoInfoGetted(): isVerticalVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 452
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->initPluginFullscreenVertical()V

    .line 453
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoInfoGetted()V

    .line 454
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->goodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 456
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isHorizontalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goSmall()V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    .line 460
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setVisibility(I)V

    .line 477
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_4

    .line 478
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVVPlayInfo()Lcom/youku/player/module/VVPlayInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->vvExposure(Lcom/youku/player/module/VVPlayInfo;)V

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    if-eqz v0, :cond_5

    .line 482
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onFavor()V

    .line 485
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videostage_title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4e0a\u6b21\u89c2\u770b\u81f3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videostage_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u8bf7\u7ee7\u7eed\u89c2\u770b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setVisibility(I)V

    .line 463
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 464
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 465
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->goFullScreen()V

    .line 472
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setVisibility(I)V

    goto/16 :goto_1

    .line 467
    :cond_8
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_7

    .line 468
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goSmall()V

    goto :goto_2
.end method

.method public onVideoInfoGetting()V
    .locals 2

    .prologue
    .line 428
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->TAG:Ljava/lang/String;

    const-string v1, "onVideoInfoGetting"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onVideoInfoGetting()V

    .line 430
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoInfoGetting()V

    .line 433
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->goodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 434
    return-void
.end method

.method public onVolumnDown()V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVolumnDown()V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onVolumnDown()V

    .line 373
    return-void
.end method

.method public onVolumnUp()V
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVolumnUp()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onVolumnUp()V

    .line 365
    return-void
.end method

.method public resetFirstPlay()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->detailGeted:Z

    .line 591
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->resetFirstPlay()V

    .line 592
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->resetFirstPlay()V

    .line 596
    :cond_0
    return-void
.end method

.method public sendDanmu(IIILjava/lang/String;)V
    .locals 5
    .param p1, "size"    # I
    .param p2, "cur"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/16 v2, 0x7d0

    const v3, 0x7f040005

    const v4, 0x7f040004

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 152
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tudou/ui/activity/DetailActivity;->sendDanmaku(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public setCurQuality()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public setCurrentVid(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "setSelectionOnly"    # Z

    .prologue
    .line 393
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setCurrentVid(Ljava/lang/String;Z)V

    .line 394
    return-void
.end method

.method public setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 1
    .param p1, "goodsInfo"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->goodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 405
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 406
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 409
    :cond_0
    return-void
.end method

.method public setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V
    .locals 6
    .param p1, "has"    # Z
    .param p2, "curVid"    # Ljava/lang/String;
    .param p3, "nextVid"    # Ljava/lang/String;
    .param p4, "nextAlbumId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mHasNext:Z

    .line 509
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurVid:Ljava/lang/String;

    .line 510
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextVid:Ljava/lang/String;

    .line 511
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextAlbumId:Ljava/lang/String;

    .line 512
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 513
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 514
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 518
    :cond_0
    return-void
.end method

.method public setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, "tops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeTop;>;"
    .local p3, "bottoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom;>;"
    .local p4, "votes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    .local p5, "annos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Annotation;>;"
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 421
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 424
    :cond_0
    return-void
.end method

.method public setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
    .locals 1
    .param p1, "mVideoDetail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    .line 125
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setVideoFeature(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setVideoFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 68
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setVideoFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setVideoList(Lcom/tudou/detail/vo/VideoList;)V
    .locals 1
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    .line 90
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setVideoRecommend(Lcom/youku/vo/DetailRecomment;)V
    .locals 1
    .param p1, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setVideoRecommend(Lcom/youku/vo/DetailRecomment;)V

    .line 97
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->isVerticalScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setVideoRecommend(Lcom/youku/vo/DetailRecomment;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setbattery(II)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "states"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setbattery(II)V

    .line 159
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInnerVertical:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setbattery(II)V

    .line 162
    :cond_0
    return-void
.end method

.method public showLoadingBychangeVideo()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showLoadingBychangeVideo()V

    .line 438
    return-void
.end method

.method protected tabChangeClose()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
