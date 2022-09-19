.class public Lcom/youku/player/danmaku/GetDanmakuUrlService;
.super Ljava/lang/Object;
.source "GetDanmakuUrlService.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# instance fields
.field private danmakuInfoCallBack:Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/youku/player/danmaku/GetDanmakuUrlService$1;

    invoke-direct {v0, p0}, Lcom/youku/player/danmaku/GetDanmakuUrlService$1;-><init>(Lcom/youku/player/danmaku/GetDanmakuUrlService;)V

    iput-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuUrlService;->handler:Landroid/os/Handler;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/danmaku/GetDanmakuUrlService;)Lcom/youku/player/danmaku/IDanmakuInfoCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/GetDanmakuUrlService;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuUrlService;->danmakuInfoCallBack:Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    return-object v0
.end method


# virtual methods
.method public getDanmakuUrl(Ljava/lang/String;IILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V
    .locals 5
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "minute_at"    # I
    .param p3, "minute_count"    # I
    .param p4, "danmakuInfoCallBack"    # Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-static {p1, p2, p3}, Lcom/youku/player/util/URLContainer;->getDanmakuParameter(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "url":Ljava/lang/String;
    iput-object p4, p0, Lcom/youku/player/danmaku/GetDanmakuUrlService;->danmakuInfoCallBack:Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    .line 23
    new-instance v0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;

    invoke-direct {v0, v1}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "taskGetDanmakuUrl":Lcom/youku/player/danmaku/TaskGetDanmakuInfo;
    invoke-virtual {v0, v2}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->setSuccess(I)V

    .line 25
    invoke-virtual {v0, v4}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->setFail(I)V

    .line 26
    new-array v2, v2, [Landroid/os/Handler;

    iget-object v3, p0, Lcom/youku/player/danmaku/GetDanmakuUrlService;->handler:Landroid/os/Handler;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    .line 27
    return-void
.end method
