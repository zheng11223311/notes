.class public abstract Lcom/youtu/apps/image/ImageAsyncTask;
.super Ljava/lang/Object;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/apps/image/ImageAsyncTask$4;,
        Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;,
        Lcom/youtu/apps/image/ImageAsyncTask$WorkerRunnable;,
        Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;,
        Lcom/youtu/apps/image/ImageAsyncTask$Status;
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
.field private static final CORE_POOL_SIZE:I = 0x6

.field private static final KEEP_ALIVE:I = 0x5

.field private static final MAXIMUM_POOL_SIZE:I = 0x12

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;

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

.field private volatile mStatus:Lcom/youtu/apps/image/ImageAsyncTask$Status;

.field private final mWorker:Lcom/youtu/apps/image/ImageAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youtu/apps/image/ImageAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/youtu/apps/image/ImageAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    new-instance v0, Lcom/youtu/apps/image/ImageAsyncTask$1;

    invoke-direct {v0}, Lcom/youtu/apps/image/ImageAsyncTask$1;-><init>()V

    sput-object v0, Lcom/youtu/apps/image/ImageAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x6

    const/16 v3, 0x12

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/youtu/apps/image/ImageAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lcom/youtu/apps/image/ImageAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/youtu/apps/image/ImageAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    new-instance v0, Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;-><init>(Lcom/youtu/apps/image/ImageAsyncTask$1;)V

    sput-object v0, Lcom/youtu/apps/image/ImageAsyncTask;->sHandler:Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask$Status;->PENDING:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mStatus:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    .line 86
    new-instance v0, Lcom/youtu/apps/image/ImageAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/youtu/apps/image/ImageAsyncTask$2;-><init>(Lcom/youtu/apps/image/ImageAsyncTask;)V

    iput-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mWorker:Lcom/youtu/apps/image/ImageAsyncTask$WorkerRunnable;

    .line 93
    new-instance v0, Lcom/youtu/apps/image/ImageAsyncTask$3;

    iget-object v1, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mWorker:Lcom/youtu/apps/image/ImageAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/youtu/apps/image/ImageAsyncTask$3;-><init>(Lcom/youtu/apps/image/ImageAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 125
    return-void
.end method

.method static synthetic access$200()Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask;->sHandler:Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youtu/apps/image/ImageAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/youtu/apps/image/ImageAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/youtu/apps/image/ImageAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearQueue()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 79
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
    .line 341
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/youtu/apps/image/ImageAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask$Status;->FINISHED:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mStatus:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    .line 343
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 237
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/youtu/apps/image/ImageAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/youtu/apps/image/ImageAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mStatus:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    sget-object v1, Lcom/youtu/apps/image/ImageAsyncTask$Status;->PENDING:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 301
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask$4;->$SwitchMap$com$youtu$apps$image$ImageAsyncTask$Status:[I

    iget-object v1, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mStatus:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    invoke-virtual {v1}, Lcom/youtu/apps/image/ImageAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask$Status;->RUNNING:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mStatus:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    .line 314
    invoke-virtual {p0}, Lcom/youtu/apps/image/ImageAsyncTask;->onPreExecute()V

    .line 316
    iget-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mWorker:Lcom/youtu/apps/image/ImageAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/youtu/apps/image/ImageAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 319
    return-object p0

    .line 303
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
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
    .line 254
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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
    .line 279
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/youtu/apps/image/ImageAsyncTask$Status;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mStatus:Lcom/youtu/apps/image/ImageAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 212
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youtu/apps/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 201
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 178
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 162
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 192
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 335
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask;, "Lcom/youtu/apps/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/youtu/apps/image/ImageAsyncTask;->sHandler:Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;-><init>(Lcom/youtu/apps/image/ImageAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 338
    return-void
.end method
