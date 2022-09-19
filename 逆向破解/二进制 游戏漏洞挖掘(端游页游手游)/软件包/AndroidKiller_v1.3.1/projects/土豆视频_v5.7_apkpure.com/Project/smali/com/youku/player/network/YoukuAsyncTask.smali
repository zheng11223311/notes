.class public abstract Lcom/youku/player/network/YoukuAsyncTask;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/network/YoukuAsyncTask$4;,
        Lcom/youku/player/network/YoukuAsyncTask$YoukuAsyncTaskResult;,
        Lcom/youku/player/network/YoukuAsyncTask$WorkerRunnable;,
        Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;,
        Lcom/youku/player/network/YoukuAsyncTask$Status;
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
.field private static final CORE_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "YoukuAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1e

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;

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

.field private volatile mStatus:Lcom/youku/player/network/YoukuAsyncTask$Status;

.field private final mWorker:Lcom/youku/player/network/YoukuAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/player/network/YoukuAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/youku/player/network/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    new-instance v0, Lcom/youku/player/network/YoukuAsyncTask$1;

    invoke-direct {v0}, Lcom/youku/player/network/YoukuAsyncTask$1;-><init>()V

    sput-object v0, Lcom/youku/player/network/YoukuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0x1e

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/youku/player/network/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lcom/youku/player/network/YoukuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/youku/player/network/YoukuAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 57
    new-instance v0, Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;-><init>(Lcom/youku/player/network/YoukuAsyncTask$1;)V

    sput-object v0, Lcom/youku/player/network/YoukuAsyncTask;->sHandler:Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask$Status;->PENDING:Lcom/youku/player/network/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mStatus:Lcom/youku/player/network/YoukuAsyncTask$Status;

    .line 92
    new-instance v0, Lcom/youku/player/network/YoukuAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/youku/player/network/YoukuAsyncTask$2;-><init>(Lcom/youku/player/network/YoukuAsyncTask;)V

    iput-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mWorker:Lcom/youku/player/network/YoukuAsyncTask$WorkerRunnable;

    .line 99
    new-instance v0, Lcom/youku/player/network/YoukuAsyncTask$3;

    iget-object v1, p0, Lcom/youku/player/network/YoukuAsyncTask;->mWorker:Lcom/youku/player/network/YoukuAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/youku/player/network/YoukuAsyncTask$3;-><init>(Lcom/youku/player/network/YoukuAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 132
    return-void
.end method

.method static synthetic access$200()Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask;->sHandler:Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/network/YoukuAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/network/YoukuAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/youku/player/network/YoukuAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearQueue()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 85
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
    .line 348
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/youku/player/network/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 349
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask$Status;->FINISHED:Lcom/youku/player/network/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mStatus:Lcom/youku/player/network/YoukuAsyncTask$Status;

    .line 350
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 244
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/youku/player/network/YoukuAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/youku/player/network/YoukuAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mStatus:Lcom/youku/player/network/YoukuAsyncTask$Status;

    sget-object v1, Lcom/youku/player/network/YoukuAsyncTask$Status;->PENDING:Lcom/youku/player/network/YoukuAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 308
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask$4;->$SwitchMap$com$youku$player$network$YoukuAsyncTask$Status:[I

    iget-object v1, p0, Lcom/youku/player/network/YoukuAsyncTask;->mStatus:Lcom/youku/player/network/YoukuAsyncTask$Status;

    invoke-virtual {v1}, Lcom/youku/player/network/YoukuAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 319
    :cond_0
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask$Status;->RUNNING:Lcom/youku/player/network/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mStatus:Lcom/youku/player/network/YoukuAsyncTask$Status;

    .line 321
    invoke-virtual {p0}, Lcom/youku/player/network/YoukuAsyncTask;->onPreExecute()V

    .line 323
    iget-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mWorker:Lcom/youku/player/network/YoukuAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/youku/player/network/YoukuAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/youku/player/network/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 326
    return-object p0

    .line 310
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
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
    .line 261
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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
    .line 286
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/youku/player/network/YoukuAsyncTask$Status;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mStatus:Lcom/youku/player/network/YoukuAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/network/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 208
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 185
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 169
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 199
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 342
    .local p0, "this":Lcom/youku/player/network/YoukuAsyncTask;, "Lcom/youku/player/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/youku/player/network/YoukuAsyncTask;->sHandler:Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/youku/player/network/YoukuAsyncTask$YoukuAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/youku/player/network/YoukuAsyncTask$YoukuAsyncTaskResult;-><init>(Lcom/youku/player/network/YoukuAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/network/YoukuAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    return-void
.end method
