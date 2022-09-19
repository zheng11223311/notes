.class public abstract Lcom/baseproject/image/ImageAsyncTask;
.super Ljava/lang/Object;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseproject/image/ImageAsyncTask$4;,
        Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;,
        Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;,
        Lcom/baseproject/image/ImageAsyncTask$InternalHandler;,
        Lcom/baseproject/image/ImageAsyncTask$Status;
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

.field private static final MAXIMUM_POOL_SIZE:I = 0x24

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/baseproject/image/ImageAsyncTask$InternalHandler;

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

.field private volatile mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

.field private final mWorker:Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/baseproject/image/ImageAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 35
    new-instance v0, Lcom/baseproject/image/ImageAsyncTask$1;

    invoke-direct {v0}, Lcom/baseproject/image/ImageAsyncTask$1;-><init>()V

    sput-object v0, Lcom/baseproject/image/ImageAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 43
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x6

    const/16 v3, 0x24

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/baseproject/image/ImageAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lcom/baseproject/image/ImageAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/baseproject/image/ImageAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    new-instance v0, Lcom/baseproject/image/ImageAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baseproject/image/ImageAsyncTask$InternalHandler;-><init>(Lcom/baseproject/image/ImageAsyncTask$1;)V

    sput-object v0, Lcom/baseproject/image/ImageAsyncTask;->sHandler:Lcom/baseproject/image/ImageAsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->PENDING:Lcom/baseproject/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 87
    new-instance v0, Lcom/baseproject/image/ImageAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/baseproject/image/ImageAsyncTask$2;-><init>(Lcom/baseproject/image/ImageAsyncTask;)V

    iput-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mWorker:Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;

    .line 94
    new-instance v0, Lcom/baseproject/image/ImageAsyncTask$3;

    iget-object v1, p0, Lcom/baseproject/image/ImageAsyncTask;->mWorker:Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/baseproject/image/ImageAsyncTask$3;-><init>(Lcom/baseproject/image/ImageAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 126
    return-void
.end method

.method static synthetic access$200()Lcom/baseproject/image/ImageAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask;->sHandler:Lcom/baseproject/image/ImageAsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baseproject/image/ImageAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/baseproject/image/ImageAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/baseproject/image/ImageAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearQueue()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 80
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
    .line 342
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/baseproject/image/ImageAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->FINISHED:Lcom/baseproject/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 344
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 238
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/baseproject/image/ImageAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/baseproject/image/ImageAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    sget-object v1, Lcom/baseproject/image/ImageAsyncTask$Status;->PENDING:Lcom/baseproject/image/ImageAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 302
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask$4;->$SwitchMap$com$baseproject$image$ImageAsyncTask$Status:[I

    iget-object v1, p0, Lcom/baseproject/image/ImageAsyncTask;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    invoke-virtual {v1}, Lcom/baseproject/image/ImageAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 313
    :cond_0
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->RUNNING:Lcom/baseproject/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 315
    invoke-virtual {p0}, Lcom/baseproject/image/ImageAsyncTask;->onPreExecute()V

    .line 317
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mWorker:Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/baseproject/image/ImageAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/baseproject/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 320
    return-object p0

    .line 304
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
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
    .line 255
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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
    .line 280
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/baseproject/image/ImageAsyncTask$Status;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/baseproject/image/ImageAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 202
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 179
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 163
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 193
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 336
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask;->sHandler:Lcom/baseproject/image/ImageAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;-><init>(Lcom/baseproject/image/ImageAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/baseproject/image/ImageAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    return-void
.end method
