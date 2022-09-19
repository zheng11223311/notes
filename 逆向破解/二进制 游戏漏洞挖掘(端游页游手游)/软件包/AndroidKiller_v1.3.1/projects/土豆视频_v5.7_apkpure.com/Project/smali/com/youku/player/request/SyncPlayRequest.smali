.class public Lcom/youku/player/request/SyncPlayRequest;
.super Lcom/youku/player/request/PlayRequest;
.source "SyncPlayRequest.java"


# instance fields
.field private mVideoRequest:Lcom/youku/player/request/VideoRequest;


# direct methods
.method public constructor <init>(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/VideoRequest;)V
    .locals 0
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p2, "videoRequest"    # Lcom/youku/player/request/VideoRequest;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/youku/player/request/PlayRequest;-><init>(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 20
    iput-object p2, p0, Lcom/youku/player/request/SyncPlayRequest;->mVideoRequest:Lcom/youku/player/request/VideoRequest;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/request/SyncPlayRequest;Lcom/youku/player/request/OnRequestDoneListener;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/request/SyncPlayRequest;
    .param p1, "x1"    # Lcom/youku/player/request/OnRequestDoneListener;
    .param p2, "x2"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p3, "x3"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/player/request/SyncPlayRequest;->notifySuccess(Lcom/youku/player/request/OnRequestDoneListener;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/request/SyncPlayRequest;)Lcom/youku/player/request/VideoRequest;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/request/SyncPlayRequest;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/youku/player/request/SyncPlayRequest;->mVideoRequest:Lcom/youku/player/request/VideoRequest;

    return-object v0
.end method

.method private notifySuccess(Lcom/youku/player/request/OnRequestDoneListener;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/player/request/OnRequestDoneListener;
    .param p2, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p3, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/youku/player/request/SyncPlayRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-interface {p1, p2, p3}, Lcom/youku/player/request/OnRequestDoneListener;->onRequestDone(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public playRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V
    .locals 2
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p2, "listener"    # Lcom/youku/player/request/OnRequestDoneListener;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/player/request/SyncPlayRequest;->mVideoRequest:Lcom/youku/player/request/VideoRequest;

    new-instance v1, Lcom/youku/player/request/SyncPlayRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/player/request/SyncPlayRequest$1;-><init>(Lcom/youku/player/request/SyncPlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/youku/player/request/VideoRequest;->requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 50
    return-void
.end method
