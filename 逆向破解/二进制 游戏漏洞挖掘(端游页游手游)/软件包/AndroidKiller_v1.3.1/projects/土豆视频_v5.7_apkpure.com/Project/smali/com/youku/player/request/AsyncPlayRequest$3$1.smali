.class Lcom/youku/player/request/AsyncPlayRequest$3$1;
.super Ljava/lang/Object;
.source "AsyncPlayRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/AsyncPlayRequest$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/request/AsyncPlayRequest$3;


# direct methods
.method constructor <init>(Lcom/youku/player/request/AsyncPlayRequest$3;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRequest done,success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    iget-object v2, v2, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v2}, Lcom/youku/player/request/AsyncPlayRequest;->access$000(Lcom/youku/player/request/AsyncPlayRequest;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isCanceled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    iget-object v2, v2, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-virtual {v2}, Lcom/youku/player/request/AsyncPlayRequest;->isCanceled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    iget-object v0, v0, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v0}, Lcom/youku/player/request/AsyncPlayRequest;->access$000(Lcom/youku/player/request/AsyncPlayRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    iget-object v0, v0, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-virtual {v0}, Lcom/youku/player/request/AsyncPlayRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    iget-object v0, v0, Lcom/youku/player/request/AsyncPlayRequest$3;->val$listener:Lcom/youku/player/request/OnRequestDoneListener;

    iget-object v1, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    iget-object v1, v1, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v1}, Lcom/youku/player/request/AsyncPlayRequest;->access$100(Lcom/youku/player/request/AsyncPlayRequest;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/request/AsyncPlayRequest$3$1;->this$1:Lcom/youku/player/request/AsyncPlayRequest$3;

    iget-object v2, v2, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v2}, Lcom/youku/player/request/AsyncPlayRequest;->access$300(Lcom/youku/player/request/AsyncPlayRequest;)Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/youku/player/request/OnRequestDoneListener;->onRequestDone(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 75
    :cond_0
    return-void
.end method
