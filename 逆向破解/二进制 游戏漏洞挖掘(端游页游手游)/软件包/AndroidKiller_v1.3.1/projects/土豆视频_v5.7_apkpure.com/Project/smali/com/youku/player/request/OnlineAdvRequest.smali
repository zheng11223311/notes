.class public Lcom/youku/player/request/OnlineAdvRequest;
.super Ljava/lang/Object;
.source "OnlineAdvRequest.java"

# interfaces
.implements Lcom/youku/player/request/AdvRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/ref/WeakReference;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 13
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p4, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p5, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p6, "listener"    # Lcom/youku/player/goplay/IGetAdvCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/player/request/PlayRequest;",
            "Lcom/youku/player/plugin/MediaPlayerDelegate;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;",
            "Lcom/youku/player/module/PlayVideoInfo;",
            "Lcom/youku/player/module/VideoUrlInfo;",
            "Lcom/youku/player/goplay/IGetAdvCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "mActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 34
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "mActivity.get() == null return"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v1}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 133
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/youku/player/Track;->onAdReqStart()V

    .line 39
    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 43
    new-instance v11, Lcom/youku/player/goplay/MyGoplayManager;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/youku/player/goplay/MyGoplayManager;-><init>(Landroid/content/Context;)V

    .line 44
    .local v11, "myGoplayManager":Lcom/youku/player/goplay/MyGoplayManager;
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    iget-boolean v8, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-virtual/range {p4 .. p4}, Lcom/youku/player/module/PlayVideoInfo;->isLocalPlay()Z

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/youku/player/module/PlayVideoInfo;->getAdExt()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->isVerticalFullScreen()Z

    move-result v9

    new-instance v1, Lcom/youku/player/request/OnlineAdvRequest$1;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/youku/player/request/OnlineAdvRequest$1;-><init>(Lcom/youku/player/request/OnlineAdvRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/request/PlayRequest;Ljava/lang/ref/WeakReference;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    move-object v2, v11

    move-object v3, v7

    move v4, v8

    move v5, v10

    move-object v6, v12

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/youku/player/goplay/MyGoplayManager;->getAdvUrl(Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;ZLcom/youku/player/goplay/IGetAdvCallBack;)V

    goto :goto_0
.end method
