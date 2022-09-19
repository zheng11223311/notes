.class Lcom/baseproject/image/ImageAsyncTask$2;
.super Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseproject/image/ImageAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseproject/image/ImageAsyncTask;


# direct methods
.method constructor <init>(Lcom/baseproject/image/ImageAsyncTask;)V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask$2;, "Lcom/baseproject/image/ImageAsyncTask.2;"
    iput-object p1, p0, Lcom/baseproject/image/ImageAsyncTask$2;->this$0:Lcom/baseproject/image/ImageAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;-><init>(Lcom/baseproject/image/ImageAsyncTask$1;)V

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
    .line 89
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask$2;, "Lcom/baseproject/image/ImageAsyncTask.2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask$2;->this$0:Lcom/baseproject/image/ImageAsyncTask;

    iget-object v1, p0, Lcom/baseproject/image/ImageAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/baseproject/image/ImageAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
