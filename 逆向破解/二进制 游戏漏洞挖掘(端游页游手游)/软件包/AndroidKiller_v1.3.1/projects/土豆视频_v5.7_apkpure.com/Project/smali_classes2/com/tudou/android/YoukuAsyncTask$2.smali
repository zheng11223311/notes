.class Lcom/tudou/android/YoukuAsyncTask$2;
.super Lcom/tudou/android/YoukuAsyncTask$WorkerRunnable;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/YoukuAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/android/YoukuAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/YoukuAsyncTask;


# direct methods
.method constructor <init>(Lcom/tudou/android/YoukuAsyncTask;)V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/tudou/android/YoukuAsyncTask$2;, "Lcom/tudou/android/YoukuAsyncTask.2;"
    iput-object p1, p0, Lcom/tudou/android/YoukuAsyncTask$2;->this$0:Lcom/tudou/android/YoukuAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tudou/android/YoukuAsyncTask$WorkerRunnable;-><init>(Lcom/tudou/android/YoukuAsyncTask$1;)V

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
    .line 94
    .local p0, "this":Lcom/tudou/android/YoukuAsyncTask$2;, "Lcom/tudou/android/YoukuAsyncTask.2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 95
    iget-object v0, p0, Lcom/tudou/android/YoukuAsyncTask$2;->this$0:Lcom/tudou/android/YoukuAsyncTask;

    iget-object v1, p0, Lcom/tudou/android/YoukuAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tudou/android/YoukuAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
