.class Lcom/youku/http/HttpAsyncTask$2;
.super Lcom/youku/http/HttpAsyncTask$WorkerRunnable;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/http/HttpAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youku/http/HttpAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/http/HttpAsyncTask;


# direct methods
.method constructor <init>(Lcom/youku/http/HttpAsyncTask;)V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/youku/http/HttpAsyncTask$2;, "Lcom/youku/http/HttpAsyncTask.2;"
    iput-object p1, p0, Lcom/youku/http/HttpAsyncTask$2;->this$0:Lcom/youku/http/HttpAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/http/HttpAsyncTask$WorkerRunnable;-><init>(Lcom/youku/http/HttpAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/youku/http/HttpAsyncTask$2;, "Lcom/youku/http/HttpAsyncTask.2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 83
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask$2;->this$0:Lcom/youku/http/HttpAsyncTask;

    iget-object v1, p0, Lcom/youku/http/HttpAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/youku/http/HttpAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
