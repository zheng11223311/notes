.class Lcom/youku/player/request/AsyncPlayRequest$3;
.super Ljava/lang/Object;
.source "AsyncPlayRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$listener:Lcom/youku/player/request/OnRequestDoneListener;


# direct methods
.method constructor <init>(Lcom/youku/player/request/AsyncPlayRequest;Lcom/youku/player/request/OnRequestDoneListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    iput-object p2, p0, Lcom/youku/player/request/AsyncPlayRequest$3;->val$listener:Lcom/youku/player/request/OnRequestDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/request/AsyncPlayRequest$3;->this$0:Lcom/youku/player/request/AsyncPlayRequest;

    invoke-static {v1}, Lcom/youku/player/request/AsyncPlayRequest;->access$200(Lcom/youku/player/request/AsyncPlayRequest;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    new-instance v1, Lcom/youku/player/util/MainThreadExecutor;

    invoke-direct {v1}, Lcom/youku/player/util/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/youku/player/request/AsyncPlayRequest$3$1;

    invoke-direct {v2, p0}, Lcom/youku/player/request/AsyncPlayRequest$3$1;-><init>(Lcom/youku/player/request/AsyncPlayRequest$3;)V

    invoke-virtual {v1, v2}, Lcom/youku/player/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
