.class public Lcom/youku/player/request/LiveVideoRequest;
.super Lcom/youku/player/request/VideoRequest;
.source "LiveVideoRequest.java"


# direct methods
.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/youku/player/request/VideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    .line 27
    return-void
.end method


# virtual methods
.method public requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 1
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p3, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p4, "listener"    # Lcom/youku/player/goplay/IGetAdvCallBack;

    .prologue
    .line 89
    new-instance v0, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v0}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    invoke-interface {p4, v0}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 90
    return-void
.end method

.method public requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 4
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p3, "listener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 31
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->livePortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/request/LiveVideoRequest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goFullScreen()V

    .line 33
    iget-object v2, p0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->removeHandlerMessage()V

    .line 34
    iget-object v2, p0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionDisable()V

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    .line 38
    new-instance v1, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v1}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    .line 39
    .local v1, "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v2, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 40
    iget-object v2, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setRequestId(Ljava/lang/String;)V

    .line 41
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    .line 42
    iget-object v2, p0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object v1, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 43
    new-instance v0, Lcom/youku/player/goplay/MyGoplayManager;

    iget-object v2, p0, Lcom/youku/player/request/LiveVideoRequest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/youku/player/goplay/MyGoplayManager;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "myGoplayManager":Lcom/youku/player/goplay/MyGoplayManager;
    iget-object v2, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    new-instance v3, Lcom/youku/player/request/LiveVideoRequest$1;

    invoke-direct {v3, p0, p1, p3}, Lcom/youku/player/request/LiveVideoRequest$1;-><init>(Lcom/youku/player/request/LiveVideoRequest;Lcom/youku/player/request/PlayRequest;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/goplay/MyGoplayManager;->playHls(Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 85
    return-void
.end method
