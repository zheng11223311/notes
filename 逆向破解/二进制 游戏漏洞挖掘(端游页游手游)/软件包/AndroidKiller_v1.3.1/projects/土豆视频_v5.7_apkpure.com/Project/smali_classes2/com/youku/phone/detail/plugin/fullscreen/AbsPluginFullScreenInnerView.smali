.class public abstract Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;
.super Landroid/widget/FrameLayout;
.source "AbsPluginFullScreenInnerView.java"


# instance fields
.field protected adPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field

.field public changeVideoQuality:Z

.field public firstLoaded:Z

.field protected hotPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected isRealVideoStart:Z

.field protected isVideoinfoGeted:Z

.field protected mAnnos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public mBtnBackClickLis:Landroid/view/View$OnClickListener;

.field public mBtnSmallClickLis:Landroid/view/View$OnClickListener;

.field protected mCurVid:Ljava/lang/String;

.field protected mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

.field protected mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

.field protected mHasGetNext:Z

.field protected mHasNext:Z

.field protected mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field protected mNextAlbumId:Ljava/lang/String;

.field protected mNextVid:Ljava/lang/String;

.field protected mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

.field protected mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field protected mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

.field protected mVideoNoticeBottoms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom;",
            ">;"
        }
    .end annotation
.end field

.field protected mVideoNoticeTops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop;",
            ">;"
        }
    .end annotation
.end field

.field protected mVideoNoticeVid:Ljava/lang/String;

.field protected mVideoRecommend:Lcom/youku/vo/DetailRecomment;

.field protected mVideolist:Lcom/tudou/detail/vo/VideoList;

.field protected mVotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->changeVideoQuality:Z

    .line 43
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->firstLoaded:Z

    .line 52
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->isVideoinfoGeted:Z

    .line 53
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->isRealVideoStart:Z

    .line 55
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mHasNext:Z

    .line 56
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mHasGetNext:Z

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mCurVid:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mNextVid:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mNextAlbumId:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 73
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mBtnSmallClickLis:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mBtnBackClickLis:Landroid/view/View$OnClickListener;

    .line 98
    check-cast p1, Lcom/tudou/ui/activity/DetailActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    .line 99
    return-void
.end method


# virtual methods
.method public abstract OnCurrentPositionChangeListener(I)V
.end method

.method public abstract OnPreparedListener()V
.end method

.method public abstract OnSeekCompleteListener()V
.end method

.method public abstract OnTimeoutListener()V
.end method

.method public abstract OnVideoSizeChangedListener(II)V
.end method

.method abstract back()V
.end method

.method public abstract cannotDownload()V
.end method

.method public clearHdInfos()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 111
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoNoticeVid:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoNoticeTops:Ljava/util/ArrayList;

    .line 113
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoNoticeBottoms:Ljava/util/ArrayList;

    .line 114
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVotes:Ljava/util/ArrayList;

    .line 115
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mAnnos:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method public abstract clearKuwoDownloadBroadcast()V
.end method

.method public abstract clearPayPage()V
.end method

.method abstract clearVideoList()V
.end method

.method public abstract clearVideoTips()V
.end method

.method public abstract disableDownload()V
.end method

.method public abstract disableSubbtn()V
.end method

.method abstract download()V
.end method

.method public abstract enableDownload()V
.end method

.method public abstract goEndPage()V
.end method

.method public abstract hideControllerAndSystemUI()V
.end method

.method abstract hidePopWindows()V
.end method

.method public abstract init()V
.end method

.method abstract isScreenshotShow()Z
.end method

.method abstract isShowing()Z
.end method

.method abstract isVideoRecordShow()Z
.end method

.method public abstract loginFail()V
.end method

.method public abstract loginSucc()V
.end method

.method abstract needDownloadDRMSo(Ljava/lang/String;)V
.end method

.method abstract newVideo()V
.end method

.method abstract onADplaying()V
.end method

.method abstract onBackPressed()Z
.end method

.method abstract onBufferPercentUpdate(I)V
.end method

.method public abstract onBufferingUpdateListener(I)V
.end method

.method abstract onChangeVideoDefinitionComplete()V
.end method

.method abstract onClearUpDownFav()V
.end method

.method public abstract onCompletionListener()V
.end method

.method abstract onDown()V
.end method

.method abstract onDownloadFail(Ljava/lang/String;)V
.end method

.method abstract onDownloadSucc()V
.end method

.method public abstract onErrorListener(II)Z
.end method

.method abstract onFavor()V
.end method

.method abstract onFullScreen()V
.end method

.method public abstract onHeadsetPlug(ILjava/lang/String;I)V
.end method

.method public abstract onLoadedListener()V
.end method

.method public abstract onLoadingListener()V
.end method

.method abstract onMute(Z)V
.end method

.method abstract onNetSpeedChange(I)V
.end method

.method public abstract onNotifyChangeVideoQuality()V
.end method

.method abstract onPause()V
.end method

.method public abstract onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V
.end method

.method public abstract onPayinfoShowLoginChange()V
.end method

.method abstract onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
.end method

.method abstract onPlayReleateNoRightVideo()V
.end method

.method abstract onPluginAdded()V
.end method

.method public onRealVideoStart()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->isRealVideoStart:Z

    .line 213
    return-void
.end method

.method public abstract onRealVideoStarted()V
.end method

.method abstract onRelease()V
.end method

.method abstract onReplay()V
.end method

.method abstract onResume()V
.end method

.method abstract onSmallScreen()V
.end method

.method abstract onStart()V
.end method

.method abstract onSubscribe()V
.end method

.method abstract onSubtitlePrepared()V
.end method

.method abstract onUnFavor()V
.end method

.method abstract onUnSubscribe()V
.end method

.method abstract onUp()V
.end method

.method public onVideoChange()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method abstract onVideoInfoGetFail(Z)V
.end method

.method public onVideoInfoGetted()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->isVideoinfoGeted:Z

    .line 207
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->hotPoints:Ljava/util/ArrayList;

    .line 208
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->adPoints:Ljava/util/ArrayList;

    .line 209
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->isVideoinfoGeted:Z

    .line 203
    return-void
.end method

.method abstract onVolumnDown()V
.end method

.method abstract onVolumnUp()V
.end method

.method public abstract resetFirstPlay()V
.end method

.method abstract setCurrentVid(Ljava/lang/String;Z)V
.end method

.method public setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 0
    .param p1, "goodsInfo"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 128
    return-void
.end method

.method public setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V
    .locals 1
    .param p1, "has"    # Z
    .param p2, "curVid"    # Ljava/lang/String;
    .param p3, "nextVid"    # Ljava/lang/String;
    .param p4, "nextAlbumId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mHasGetNext:Z

    .line 140
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mHasNext:Z

    .line 141
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mCurVid:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mNextVid:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mNextAlbumId:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 145
    return-void
.end method

.method public setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 119
    .local p2, "tops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeTop;>;"
    .local p3, "bottoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom;>;"
    .local p4, "votes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    .local p5, "annos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Annotation;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoNoticeVid:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoNoticeTops:Ljava/util/ArrayList;

    .line 121
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoNoticeBottoms:Ljava/util/ArrayList;

    .line 122
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVotes:Ljava/util/ArrayList;

    .line 123
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mAnnos:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method public setMediaPlayer(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0
    .param p1, "mediaPlayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 103
    return-void
.end method

.method public setPluginFullScreen(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V
    .locals 0
    .param p1, "pluginFullScreen"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 107
    return-void
.end method

.method public abstract setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
.end method

.method public setVideoFeature(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 0
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 157
    return-void
.end method

.method public setVideoList(Lcom/tudou/detail/vo/VideoList;)V
    .locals 0
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    .line 149
    return-void
.end method

.method public setVideoRecommend(Lcom/youku/vo/DetailRecomment;)V
    .locals 0
    .param p1, "recommend"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    .line 153
    return-void
.end method

.method abstract setVisible(Z)V
.end method

.method abstract setbattery(II)V
.end method

.method public abstract showLoadingBychangeVideo()V
.end method

.method protected abstract showLock()V
.end method
