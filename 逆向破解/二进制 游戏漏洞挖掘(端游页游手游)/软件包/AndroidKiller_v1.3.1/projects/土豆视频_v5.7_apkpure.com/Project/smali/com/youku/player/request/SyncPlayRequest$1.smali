.class Lcom/youku/player/request/SyncPlayRequest$1;
.super Ljava/lang/Object;
.source "SyncPlayRequest.java"

# interfaces
.implements Lcom/youku/player/goplay/IVideoInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/SyncPlayRequest;->playRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/SyncPlayRequest;

.field final synthetic val$listener:Lcom/youku/player/request/OnRequestDoneListener;

.field final synthetic val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/request/SyncPlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/player/request/SyncPlayRequest$1;->this$0:Lcom/youku/player/request/SyncPlayRequest;

    iput-object p2, p0, Lcom/youku/player/request/SyncPlayRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iput-object p3, p0, Lcom/youku/player/request/SyncPlayRequest$1;->val$listener:Lcom/youku/player/request/OnRequestDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 48
    return-void
.end method

.method public onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 4
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/player/request/SyncPlayRequest$1;->this$0:Lcom/youku/player/request/SyncPlayRequest;

    invoke-virtual {v0}, Lcom/youku/player/request/SyncPlayRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "SyncPlayRequest is canceled"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/youku/player/request/SyncPlayRequest$1;->this$0:Lcom/youku/player/request/SyncPlayRequest;

    invoke-static {v0}, Lcom/youku/player/request/SyncPlayRequest;->access$100(Lcom/youku/player/request/SyncPlayRequest;)Lcom/youku/player/request/VideoRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/request/SyncPlayRequest$1;->this$0:Lcom/youku/player/request/SyncPlayRequest;

    iget-object v2, p0, Lcom/youku/player/request/SyncPlayRequest$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    new-instance v3, Lcom/youku/player/request/SyncPlayRequest$1$1;

    invoke-direct {v3, p0, p1}, Lcom/youku/player/request/SyncPlayRequest$1$1;-><init>(Lcom/youku/player/request/SyncPlayRequest$1;Lcom/youku/player/module/VideoUrlInfo;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/youku/player/request/VideoRequest;->requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto :goto_0
.end method
