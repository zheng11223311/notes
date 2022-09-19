.class public abstract Lcom/youku/gamecenter/services/YoukuAsyncTask;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/YoukuAsyncTask$4;,
        Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;,
        Lcom/youku/gamecenter/services/YoukuAsyncTask$WorkerRunnable;,
        Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;,
        Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;
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

.field private static final MAXIMUM_POOL_SIZE:I = 0xa

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;

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

.field private volatile mStatus:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

.field private final mWorker:Lcom/youku/gamecenter/services/YoukuAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/gamecenter/services/YoukuAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v2, 0x5

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 43
    new-instance v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$1;

    invoke-direct {v0}, Lcom/youku/gamecenter/services/YoukuAsyncTask$1;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 51
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0xa

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    new-instance v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;-><init>(Lcom/youku/gamecenter/services/YoukuAsyncTask$1;)V

    sput-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sHandler:Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;->PENDING:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mStatus:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    .line 94
    new-instance v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask$2;-><init>(Lcom/youku/gamecenter/services/YoukuAsyncTask;)V

    iput-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mWorker:Lcom/youku/gamecenter/services/YoukuAsyncTask$WorkerRunnable;

    .line 101
    new-instance v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$3;

    iget-object v1, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mWorker:Lcom/youku/gamecenter/services/YoukuAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/services/YoukuAsyncTask$3;-><init>(Lcom/youku/gamecenter/services/YoukuAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 134
    return-void
.end method

.method static synthetic access$200()Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sHandler:Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/services/YoukuAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/services/YoukuAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearQueue()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 87
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
    .line 350
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;->FINISHED:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mStatus:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    .line 352
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 246
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/youku/gamecenter/services/YoukuAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/youku/gamecenter/services/YoukuAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mStatus:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    sget-object v1, Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;->PENDING:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 310
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$4;->$SwitchMap$com$youku$gamecenter$services$YoukuAsyncTask$Status:[I

    iget-object v1, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mStatus:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    invoke-virtual {v1}, Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;->RUNNING:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    iput-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mStatus:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    .line 323
    invoke-virtual {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->onPreExecute()V

    .line 325
    iget-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mWorker:Lcom/youku/gamecenter/services/YoukuAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 328
    return-object p0

    .line 312
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
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
    .line 263
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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
    .line 288
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mStatus:Lcom/youku/gamecenter/services/YoukuAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 210
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 187
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 171
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 201
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 344
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask;, "Lcom/youku/gamecenter/services/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/youku/gamecenter/services/YoukuAsyncTask;->sHandler:Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;-><init>(Lcom/youku/gamecenter/services/YoukuAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    return-void
.end method
