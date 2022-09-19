.class public Lcom/mobisage/android/MobiSageTaskModule;
.super Ljava/lang/Object;
.source "MobiSageTaskModule.java"


# static fields
.field private static ourInstance:Lcom/mobisage/android/MobiSageTaskModule;


# instance fields
.field private final scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/mobisage/android/MobiSageTaskModule;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageTaskModule;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageTaskModule;->ourInstance:Lcom/mobisage/android/MobiSageTaskModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageTaskModule;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/mobisage/android/MobiSageTaskModule;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mobisage/android/MobiSageTaskModule;->ourInstance:Lcom/mobisage/android/MobiSageTaskModule;

    return-object v0
.end method


# virtual methods
.method public registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V
    .locals 8
    .param p1, "task"    # Lcom/mobisage/android/MobiSageTask;

    .prologue
    .line 29
    const/4 v0, 0x1

    iget-boolean v1, p1, Lcom/mobisage/android/MobiSageTask;->isRate:Z

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/mobisage/android/MobiSageTaskModule;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-wide v2, p1, Lcom/mobisage/android/MobiSageTask;->delayTime:J

    iget-wide v4, p1, Lcom/mobisage/android/MobiSageTask;->periodTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 33
    .local v7, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v0, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_0
    return-void

    .line 35
    .end local v7    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageTaskModule;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-wide v2, p1, Lcom/mobisage/android/MobiSageTask;->delayTime:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 37
    .restart local v7    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v0, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resetMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V
    .locals 5
    .param p1, "task"    # Lcom/mobisage/android/MobiSageTask;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-boolean v1, p1, Lcom/mobisage/android/MobiSageTask;->isRate:Z

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 49
    .local v0, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTaskModule;->stpe:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-wide v2, p1, Lcom/mobisage/android/MobiSageTask;->delayTime:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V
    .locals 3
    .param p1, "task"    # Lcom/mobisage/android/MobiSageTask;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 65
    .local v0, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 66
    iget-object v1, p0, Lcom/mobisage/android/MobiSageTaskModule;->scheduledFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    .line 68
    goto :goto_0
.end method
