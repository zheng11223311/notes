.class Lcom/youku/player/request/AsyncPlayRequest$2;
.super Ljava/lang/Object;
.source "AsyncPlayRequest.java"

# interfaces
.implements Lcom/youku/player/goplay/IGetAdvCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/AsyncPlayRequest;->playRequest(Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/request/OnRequestDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/AsyncPlayRequest;


# direct methods
.method constructor <init>(Lcom/youku/player/request/AsyncPlayRequest;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/youku/player/request/AsyncPlayRequest$2;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 1
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest$2;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v0}, Lcom/youku/player/request/AsyncPlayRequest;->access$200(Lcom/youku/player/request/AsyncPlayRequest;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 58
    return-void
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 1
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest$2;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v0, p1}, Lcom/youku/player/request/AsyncPlayRequest;->access$302(Lcom/youku/player/request/AsyncPlayRequest;Lcom/youku/player/goplay/VideoAdvInfo;)Lcom/youku/player/goplay/VideoAdvInfo;

    .line 52
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest$2;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v0}, Lcom/youku/player/request/AsyncPlayRequest;->access$200(Lcom/youku/player/request/AsyncPlayRequest;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 53
    return-void
.end method
