.class Lcom/youku/player/request/OnlineVideoRequest$1;
.super Ljava/lang/Object;
.source "OnlineVideoRequest.java"

# interfaces
.implements Lcom/youku/player/goplay/IVideoInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OnlineVideoRequest;->requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/OnlineVideoRequest;

.field final synthetic val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

.field final synthetic val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/request/OnlineVideoRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iput-object p2, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iput-object p3, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 11
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    const/4 v7, 0x0

    .line 79
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {v0, p1}, Lcom/youku/player/apiservice/PlantformController;->setPlayCode(Lcom/youku/player/goplay/GoplayException;)V

    .line 81
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u64ad\u653e\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v7, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    .line 84
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isVVBegin998Send:Z

    .line 91
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v1, v1, Lcom/youku/player/request/OnlineVideoRequest;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v2, v2, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iget-object v4, v3, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iget-boolean v5, v3, Lcom/youku/player/module/PlayVideoInfo;->isTudouAlbum:Z

    iget-object v3, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iget-object v6, v3, Lcom/youku/player/module/PlayVideoInfo;->playlistCode:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/apiservice/PlantformController;->onGetVideoInfoFailed(Ljava/lang/ref/WeakReference;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/GoplayException;Ljava/lang/String;ZLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 96
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iget-object v1, v1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    sget-object v2, Lcom/youku/player/goplay/Profile;->GUID:Ljava/lang/String;

    const-string v3, "net"

    sget-object v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCode:Ljava/lang/String;

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    sget v6, Lcom/youku/player/goplay/Profile;->videoQuality:I

    iget-object v8, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v8, v8, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v9, v9, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v10, v10, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 3
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/youku/libmanager/SoUpgradeManager;->getInstance()Lcom/youku/libmanager/SoUpgradeManager;

    move-result-object v0

    const-string v1, "libWasabiJni.so"

    invoke-virtual {v0, v1}, Lcom/youku/libmanager/SoUpgradeManager;->isSoDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "needDownloadDRMSo"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 50
    invoke-static {}, Lcom/youku/libmanager/SoUpgradeManager;->getInstance()Lcom/youku/libmanager/SoUpgradeManager;

    move-result-object v0

    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const-string v2, "libWasabiJni.so"

    invoke-virtual {v0, v1, v2}, Lcom/youku/libmanager/SoUpgradeManager;->startDownloadSo(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    const-string v1, "libWasabiJni.so"

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginManager;->needDownloadDRMSo(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    new-instance v1, Lcom/youku/player/request/OnlineVideoRequest$1$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/request/OnlineVideoRequest$1$1;-><init>(Lcom/youku/player/request/OnlineVideoRequest$1;Lcom/youku/player/module/VideoUrlInfo;)V

    invoke-static {v0, p1, v1}, Lcom/youku/player/request/OnlineVideoRequest;->access$000(Lcom/youku/player/request/OnlineVideoRequest;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/drm/DRMTokenCallback;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-virtual {v0, p1, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoInfoSuccess(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    .line 72
    iget-object v0, p0, Lcom/youku/player/request/OnlineVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    invoke-interface {v0, p1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0
.end method
