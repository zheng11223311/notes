.class public Lcom/youku/player/request/LocalFileVideoRequest;
.super Lcom/youku/player/request/VideoRequest;
.source "LocalFileVideoRequest.java"


# direct methods
.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/youku/player/request/VideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    .line 22
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
    .line 50
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 51
    return-void
.end method

.method public requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 7
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p3, "listener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    const/4 v6, 0x1

    .line 26
    iget-object v2, p0, Lcom/youku/player/request/LocalFileVideoRequest;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    const-string v4, "local"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/youku/player/Track;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    new-instance v1, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v1}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    .line 28
    .local v1, "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v2, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 29
    iget v2, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 30
    iget-object v2, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v6}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 32
    const-string v2, "local"

    iput-object v2, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 33
    iput-boolean v6, v1, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    .line 34
    sget-object v2, Lcom/youku/player/module/VideoUrlInfo$Source;->LOCAL:Lcom/youku/player/module/VideoUrlInfo$Source;

    iput-object v2, v1, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    .line 35
    invoke-virtual {p2}, Lcom/youku/player/module/PlayVideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 37
    iget v2, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    if-gtz v2, :cond_0

    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    if-eqz v2, :cond_0

    .line 38
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    iget-object v3, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/youku/player/apiservice/IVideoHistoryInfo;->getVideoHistoryInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v0

    .line 40
    .local v0, "history":Lcom/youku/player/module/VideoHistoryInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/youku/player/module/VideoHistoryInfo;->playTime:I

    if-le v2, v6, :cond_0

    .line 41
    iget v2, v0, Lcom/youku/player/module/VideoHistoryInfo;->playTime:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 44
    .end local v0    # "history":Lcom/youku/player/module/VideoHistoryInfo;
    :cond_0
    iget-object v2, p0, Lcom/youku/player/request/LocalFileVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 45
    invoke-interface {p3, v1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 46
    return-void
.end method
