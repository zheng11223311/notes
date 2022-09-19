.class public Lcom/youku/player/request/AsyncPlayRequest;
.super Lcom/youku/player/request/PlayRequest;
.source "AsyncPlayRequest.java"


# instance fields
.field private mAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSuccess:Z

.field private mVideoInfo:Lcom/youku/player/module/VideoUrlInfo;

.field private mVideoRequest:Lcom/youku/player/request/VideoRequest;


# direct methods
.method public constructor <init>(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/VideoRequest;)V
    .locals 2
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p2, "videoRequest"    # Lcom/youku/player/request/VideoRequest;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/youku/player/request/PlayRequest;-><init>(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 27
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 28
    iput-object p2, p0, Lcom/youku/player/request/AsyncPlayRequest;->mVideoRequest:Lcom/youku/player/request/VideoRequest;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/request/AsyncPlayRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/request/AsyncPlayRequest;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/youku/player/request/AsyncPlayRequest;->mSuccess:Z

    return v0
.end method

.method static synthetic access$002(Lcom/youku/player/request/AsyncPlayRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/request/AsyncPlayRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/youku/player/request/AsyncPlayRequest;->mSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/youku/player/request/AsyncPlayRequest;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/request/AsyncPlayRequest;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest;->mVideoInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/player/request/AsyncPlayRequest;Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/request/AsyncPlayRequest;
    .param p1, "x1"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/player/request/AsyncPlayRequest;->mVideoInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/player/request/AsyncPlayRequest;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/request/AsyncPlayRequest;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/request/AsyncPlayRequest;)Lcom/youku/player/goplay/VideoAdvInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/request/AsyncPlayRequest;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest;->mAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/player/request/AsyncPlayRequest;Lcom/youku/player/goplay/VideoAdvInfo;)Lcom/youku/player/goplay/VideoAdvInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/request/AsyncPlayRequest;
    .param p1, "x1"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/player/request/AsyncPlayRequest;->mAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    return-object p1
.end method


# virtual methods
.method public playRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V
    .locals 3
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p2, "listener"    # Lcom/youku/player/request/OnRequestDoneListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest;->mVideoRequest:Lcom/youku/player/request/VideoRequest;

    new-instance v1, Lcom/youku/player/request/AsyncPlayRequest$1;

    invoke-direct {v1, p0}, Lcom/youku/player/request/AsyncPlayRequest$1;-><init>(Lcom/youku/player/request/AsyncPlayRequest;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/youku/player/request/VideoRequest;->requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 48
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest;->mVideoRequest:Lcom/youku/player/request/VideoRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/youku/player/request/AsyncPlayRequest$2;

    invoke-direct {v2, p0}, Lcom/youku/player/request/AsyncPlayRequest$2;-><init>(Lcom/youku/player/request/AsyncPlayRequest;)V

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/youku/player/request/VideoRequest;->requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/player/request/AsyncPlayRequest$3;

    invoke-direct {v1, p0, p2}, Lcom/youku/player/request/AsyncPlayRequest$3;-><init>(Lcom/youku/player/request/AsyncPlayRequest;Lcom/youku/player/request/OnRequestDoneListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method
