.class Lcom/youku/player/request/LiveVideoRequest$1;
.super Ljava/lang/Object;
.source "LiveVideoRequest.java"

# interfaces
.implements Lcom/youku/player/goplay/IVideoInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/LiveVideoRequest;->requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/LiveVideoRequest;

.field final synthetic val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

.field final synthetic val$playRequest:Lcom/youku/player/request/PlayRequest;


# direct methods
.method constructor <init>(Lcom/youku/player/request/LiveVideoRequest;Lcom/youku/player/request/PlayRequest;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iput-object p2, p0, Lcom/youku/player/request/LiveVideoRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    iput-object p3, p0, Lcom/youku/player/request/LiveVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 3
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    invoke-virtual {v0}, Lcom/youku/player/request/PlayRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/youku/player/goplay/GoplayException;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {p1}, Lcom/youku/player/goplay/GoplayException;->getVideoUrlInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 78
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v1, v1, Lcom/youku/player/request/LiveVideoRequest;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Lcom/youku/player/apiservice/PlantformController;->onGetHLSVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/goplay/GoplayException;)V

    .line 80
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetFail(Z)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 83
    return-void
.end method

.method public onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 4
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u64ad\u653e\u4fe1\u606f\u83b7\u53d6\u6210\u529f"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mVideoFetchTime:J

    .line 49
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    invoke-virtual {v0}, Lcom/youku/player/request/PlayRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "handleSuccessfullyGetVideoUrl  activity is finish, return"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v3, v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->initDanmakuManager(Ljava/lang/String;IZ)V

    .line 56
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->setDanmakuVisibleWhenLive()V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 60
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 61
    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v0, v0, Lcom/youku/player/module/LiveInfo;->autoplay:I

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v0, v0, Lcom/youku/player/module/LiveInfo;->status:I

    if-ne v0, v2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 64
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 66
    iget-object v0, p0, Lcom/youku/player/request/LiveVideoRequest$1;->this$0:Lcom/youku/player/request/LiveVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/LiveVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    goto :goto_0
.end method
