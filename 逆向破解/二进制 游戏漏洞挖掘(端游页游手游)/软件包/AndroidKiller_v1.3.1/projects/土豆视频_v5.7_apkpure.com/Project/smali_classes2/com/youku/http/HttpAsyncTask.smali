.class public abstract Lcom/youku/http/HttpAsyncTask;
.super Ljava/lang/Object;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/http/HttpAsyncTask$4;,
        Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult;,
        Lcom/youku/http/HttpAsyncTask$WorkerRunnable;,
        Lcom/youku/http/HttpAsyncTask$InternalHandler;,
        Lcom/youku/http/HttpAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "HttpAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0xa

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static handle:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/youku/http/HttpAsyncTask$InternalHandler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/youku/http/HttpAsyncTask$Status;

.field private final mWorker:Lcom/youku/http/HttpAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/http/HttpAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v3, 0xa

    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/youku/http/HttpAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    sput-object v0, Lcom/youku/http/HttpAsyncTask;->handle:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 31
    new-instance v0, Lcom/youku/http/HttpAsyncTask$1;

    invoke-direct {v0}, Lcom/youku/http/HttpAsyncTask$1;-><init>()V

    sput-object v0, Lcom/youku/http/HttpAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 39
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/youku/http/HttpAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lcom/youku/http/HttpAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    sget-object v9, Lcom/youku/http/HttpAsyncTask;->handle:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/youku/http/HttpAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    new-instance v0, Lcom/youku/http/HttpAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/http/HttpAsyncTask$InternalHandler;-><init>(Lcom/youku/http/HttpAsyncTask$1;)V

    sput-object v0, Lcom/youku/http/HttpAsyncTask;->sHandler:Lcom/youku/http/HttpAsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/youku/http/HttpAsyncTask$Status;->PENDING:Lcom/youku/http/HttpAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    .line 80
    new-instance v0, Lcom/youku/http/HttpAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/youku/http/HttpAsyncTask$2;-><init>(Lcom/youku/http/HttpAsyncTask;)V

    iput-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mWorker:Lcom/youku/http/HttpAsyncTask$WorkerRunnable;

    .line 87
    new-instance v0, Lcom/youku/http/HttpAsyncTask$3;

    iget-object v1, p0, Lcom/youku/http/HttpAsyncTask;->mWorker:Lcom/youku/http/HttpAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/youku/http/HttpAsyncTask$3;-><init>(Lcom/youku/http/HttpAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 116
    return-void
.end method

.method static synthetic access$200()Lcom/youku/http/HttpAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/youku/http/HttpAsyncTask;->sHandler:Lcom/youku/http/HttpAsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/http/HttpAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/http/HttpAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/youku/http/HttpAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearQueue()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/youku/http/HttpAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 74
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/youku/http/HttpAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/youku/http/HttpAsyncTask$Status;->FINISHED:Lcom/youku/http/HttpAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    .line 315
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 224
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/youku/http/HttpAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/youku/http/HttpAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    sget-object v1, Lcom/youku/http/HttpAsyncTask$Status;->PENDING:Lcom/youku/http/HttpAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 277
    sget-object v0, Lcom/youku/http/HttpAsyncTask$4;->$SwitchMap$com$youku$http$HttpAsyncTask$Status:[I

    iget-object v1, p0, Lcom/youku/http/HttpAsyncTask;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    invoke-virtual {v1}, Lcom/youku/http/HttpAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    sget-object v0, Lcom/youku/http/HttpAsyncTask$Status;->RUNNING:Lcom/youku/http/HttpAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    .line 290
    invoke-virtual {p0}, Lcom/youku/http/HttpAsyncTask;->onPreExecute()V

    .line 291
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mWorker:Lcom/youku/http/HttpAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/youku/http/HttpAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/youku/http/HttpAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/youku/http/HttpAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 293
    return-object p0

    .line 279
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/youku/http/HttpAsyncTask$Status;
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/http/HttpAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 188
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 152
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/youku/http/HttpAsyncTask;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/youku/http/HttpAsyncTask;->sHandler:Lcom/youku/http/HttpAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult;-><init>(Lcom/youku/http/HttpAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/http/HttpAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 310
    return-void
.end method
