.class Lcom/youtu/apps/image/ImageAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/image/ImageAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/image/ImageAsyncTask;


# direct methods
.method constructor <init>(Lcom/youtu/apps/image/ImageAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask$3;, "Lcom/youtu/apps/image/ImageAsyncTask.3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/youtu/apps/image/ImageAsyncTask$3;->this$0:Lcom/youtu/apps/image/ImageAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask$3;, "Lcom/youtu/apps/image/ImageAsyncTask.3;"
    const/4 v9, 0x1

    .line 98
    const/4 v2, 0x0

    .line 101
    .local v2, "result":Ljava/lang/Object;, "TResult;"
    :try_start_0
    invoke-virtual {p0}, Lcom/youtu/apps/image/ImageAsyncTask$3;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 119
    .end local v2    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    invoke-static {}, Lcom/youtu/apps/image/ImageAsyncTask;->access$200()Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;

    move-result-object v4

    new-instance v5, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;

    iget-object v6, p0, Lcom/youtu/apps/image/ImageAsyncTask$3;->this$0:Lcom/youtu/apps/image/ImageAsyncTask;

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;-><init>(Lcom/youtu/apps/image/ImageAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v4, v9, v5}, Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 122
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :goto_1
    return-void

    .line 103
    .end local v1    # "message":Landroid/os/Message;
    .restart local v2    # "result":Ljava/lang/Object;, "TResult;"
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 107
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-static {}, Lcom/youtu/apps/image/ImageAsyncTask;->access$200()Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;

    move-result-object v5

    const/4 v6, 0x3

    new-instance v7, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;

    iget-object v8, p0, Lcom/youtu/apps/image/ImageAsyncTask$3;->this$0:Lcom/youtu/apps/image/ImageAsyncTask;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v7, v8, v4}, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;-><init>(Lcom/youtu/apps/image/ImageAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 111
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 113
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .end local v1    # "message":Landroid/os/Message;
    :catch_2
    move-exception v3

    .line 114
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 102
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    goto :goto_0
.end method
