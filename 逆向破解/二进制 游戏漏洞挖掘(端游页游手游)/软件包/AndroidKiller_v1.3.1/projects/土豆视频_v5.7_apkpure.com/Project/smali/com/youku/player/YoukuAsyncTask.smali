.class public abstract Lcom/youku/player/YoukuAsyncTask;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/YoukuAsyncTask$4;,
        Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult;,
        Lcom/youku/player/YoukuAsyncTask$WorkerRunnable;,
        Lcom/youku/player/YoukuAsyncTask$InternalHandler;,
        Lcom/youku/player/YoukuAsyncTask$Status;
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

.field private static final LOG_TAG:Ljava/lang/String; = "YoukuAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1e

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/youku/player/YoukuAsyncTask$InternalHandler;

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

.field private volatile mStatus:Lcom/youku/player/YoukuAsyncTask$Status;

.field private final mWorker:Lcom/youku/player/YoukuAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/player/YoukuAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/youku/player/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    new-instance v0, Lcom/youku/player/YoukuAsyncTask$1;

    invoke-direct {v0}, Lcom/youku/player/YoukuAsyncTask$1;-><init>()V

    sput-object v0, Lcom/youku/player/YoukuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x1e

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/youku/player/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lcom/youku/player/YoukuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/youku/player/YoukuAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    new-instance v0, Lcom/youku/player/YoukuAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/player/YoukuAsyncTask$InternalHandler;-><init>(Lcom/youku/player/YoukuAsyncTask$1;)V

    sput-object v0, Lcom/youku/player/YoukuAsyncTask;->sHandler:Lcom/youku/player/YoukuAsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->PENDING:Lcom/youku/player/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mStatus:Lcom/youku/player/YoukuAsyncTask$Status;

    .line 93
    new-instance v0, Lcom/youku/player/YoukuAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/youku/player/YoukuAsyncTask$2;-><init>(Lcom/youku/player/YoukuAsyncTask;)V

    iput-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mWorker:Lcom/youku/player/YoukuAsyncTask$WorkerRunnable;

    .line 100
    new-instance v0, Lcom/youku/player/YoukuAsyncTask$3;

    iget-object v1, p0, Lcom/youku/player/YoukuAsyncTask;->mWorker:Lcom/youku/player/YoukuAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/youku/player/YoukuAsyncTask$3;-><init>(Lcom/youku/player/YoukuAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 133
    return-void
.end method

.method static synthetic access$200()Lcom/youku/player/YoukuAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/youku/player/YoukuAsyncTask;->sHandler:Lcom/youku/player/YoukuAsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/YoukuAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/YoukuAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/youku/player/YoukuAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearQueue()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/youku/player/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 86
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
    .line 349
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/youku/player/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 350
    sget-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->FINISHED:Lcom/youku/player/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mStatus:Lcom/youku/player/YoukuAsyncTask$Status;

    .line 351
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 245
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/youku/player/YoukuAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/youku/player/YoukuAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mStatus:Lcom/youku/player/YoukuAsyncTask$Status;

    sget-object v1, Lcom/youku/player/YoukuAsyncTask$Status;->PENDING:Lcom/youku/player/YoukuAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 309
    sget-object v0, Lcom/youku/player/YoukuAsyncTask$4;->$SwitchMap$com$youku$player$YoukuAsyncTask$Status:[I

    iget-object v1, p0, Lcom/youku/player/YoukuAsyncTask;->mStatus:Lcom/youku/player/YoukuAsyncTask$Status;

    invoke-virtual {v1}, Lcom/youku/player/YoukuAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_0
    sget-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->RUNNING:Lcom/youku/player/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mStatus:Lcom/youku/player/YoukuAsyncTask$Status;

    .line 322
    invoke-virtual {p0}, Lcom/youku/player/YoukuAsyncTask;->onPreExecute()V

    .line 324
    iget-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mWorker:Lcom/youku/player/YoukuAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/youku/player/YoukuAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/youku/player/YoukuAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/youku/player/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-object p0

    .line 311
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
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
    .line 262
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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
    .line 287
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/youku/player/YoukuAsyncTask$Status;
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mStatus:Lcom/youku/player/YoukuAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/player/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 209
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 186
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 170
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 200
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 343
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask;, "Lcom/youku/player/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/youku/player/YoukuAsyncTask;->sHandler:Lcom/youku/player/YoukuAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult;-><init>(Lcom/youku/player/YoukuAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/YoukuAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-void
.end method
