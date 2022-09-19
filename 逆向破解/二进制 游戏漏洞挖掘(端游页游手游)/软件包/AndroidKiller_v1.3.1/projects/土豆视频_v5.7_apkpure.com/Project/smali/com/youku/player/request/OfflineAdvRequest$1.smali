.class Lcom/youku/player/request/OfflineAdvRequest$1;
.super Ljava/lang/Object;
.source "OfflineAdvRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OfflineAdvRequest;->requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/ref/WeakReference;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/OfflineAdvRequest;

.field final synthetic val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

.field final synthetic val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$playRequest:Lcom/youku/player/request/PlayRequest;


# direct methods
.method constructor <init>(Lcom/youku/player/request/OfflineAdvRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/goplay/IGetAdvCallBack;Lcom/youku/player/request/PlayRequest;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/youku/player/request/OfflineAdvRequest$1;->this$0:Lcom/youku/player/request/OfflineAdvRequest;

    iput-object p2, p0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p3, p0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    iput-object p4, p0, Lcom/youku/player/request/OfflineAdvRequest$1;->val$playRequest:Lcom/youku/player/request/PlayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/youku/player/request/OfflineAdvRequest$1$1;

    invoke-direct {v0, p0}, Lcom/youku/player/request/OfflineAdvRequest$1$1;-><init>(Lcom/youku/player/request/OfflineAdvRequest$1;)V

    invoke-static {v0}, Lcom/youku/player/ad/OfflineAdSDK;->getPrerollAd(Lcom/youku/player/goplay/IGetOfflineAdvCallBack;)V

    .line 51
    return-void
.end method
