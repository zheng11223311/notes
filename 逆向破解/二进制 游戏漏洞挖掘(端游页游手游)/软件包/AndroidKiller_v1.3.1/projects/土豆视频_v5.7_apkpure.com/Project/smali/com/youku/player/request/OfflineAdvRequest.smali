.class public Lcom/youku/player/request/OfflineAdvRequest;
.super Ljava/lang/Object;
.source "OfflineAdvRequest.java"

# interfaces
.implements Lcom/youku/player/request/AdvRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/ref/WeakReference;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 6
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
    .line 28
    .local p3, "mActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    const/4 v0, 0x0

    .line 29
    .local v0, "delayedTime":I
    invoke-virtual {p4}, Lcom/youku/player/module/PlayVideoInfo;->isLocalPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const/16 v0, 0x258

    .line 31
    :cond_0
    new-instance v1, Lcom/youku/player/util/MainThreadExecutor;

    invoke-direct {v1}, Lcom/youku/player/util/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/youku/player/request/OfflineAdvRequest$1;

    invoke-direct {v2, p0, p2, p6, p1}, Lcom/youku/player/request/OfflineAdvRequest$1;-><init>(Lcom/youku/player/request/OfflineAdvRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/IGetAdvCallBack;Lcom/youku/player/request/PlayRequest;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/youku/player/util/MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 53
    return-void
.end method
