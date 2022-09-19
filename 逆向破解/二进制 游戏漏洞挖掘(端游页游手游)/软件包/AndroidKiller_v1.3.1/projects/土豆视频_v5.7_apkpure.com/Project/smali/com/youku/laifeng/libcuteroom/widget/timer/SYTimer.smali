.class public Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
.super Ljava/lang/Object;
.source "SYTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;,
        Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;
    }
.end annotation


# static fields
.field private static instance:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;


# instance fields
.field private comparatorTask:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;

.field private isWaked:Z

.field private pool:Ljava/util/concurrent/ExecutorService;

.field private r:Ljava/lang/Runnable;

.field private status:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->IDLE:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->status:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 66
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;-><init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->r:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;-><init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->comparatorTask:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;

    .line 31
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->pool:Ljava/util/concurrent/ExecutorService;

    .line 32
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->r:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->thread:Ljava/lang/Thread;

    .line 33
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->thread:Ljava/lang/Thread;

    const-string v1, "SYTimer"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->status:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->isWaked:Z

    return v0
.end method

.method static synthetic access$402(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->isWaked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->pool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->status:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    sget-object v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->STOP:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->r:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->thread:Ljava/lang/Thread;

    .line 59
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->instance:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->instance:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->instance:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->instance:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTaskByName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .line 258
    .local v0, "item":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    .end local v0    # "item":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTask(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;J)V
    .locals 6
    .param p1, "task"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    .param p2, "timeMillis"    # J

    .prologue
    .line 239
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v1

    .line 240
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->setOffsetTimeMillis(J)V

    .line 241
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "update time to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getWhen()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->isWaked:Z

    .line 243
    const-class v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;J)V
    .locals 8
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;
    .param p2, "timeMillis"    # J

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->getTaskByName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    move-result-object v6

    .line 190
    .local v6, "task":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    if-nez v6, :cond_0

    .line 191
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$2;-><init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;)V

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->addTask(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0, v6, p2, p3}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->updateTask(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;J)V

    goto :goto_0
.end method

.method public addNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V
    .locals 10
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;
    .param p2, "timeMillis"    # J
    .param p4, "stepListener"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;
    .param p5, "step"    # J

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->getTaskByName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    move-result-object v9

    .line 212
    .local v9, "task":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    if-nez v9, :cond_0

    .line 213
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p2

    move-object v5, p4

    move-wide v6, p5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$3;-><init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;)V

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->addTask(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-direct {p0, v9, p2, p3}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->updateTask(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;J)V

    goto :goto_0
.end method

.method public addTask(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)V
    .locals 6
    .param p1, "task"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 114
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->checkThread()V

    .line 116
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "addTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "addTask time to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getWhen()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->comparatorTask:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$ComparatorTask;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->isWaked:Z

    .line 120
    const-class v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;)V
    .locals 1
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->cancelTask(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public cancelTask(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 171
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->cancel()V

    .line 174
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->isWaked:Z

    .line 176
    const-class v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 178
    :cond_0
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelTask(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)V
    .locals 2
    .param p1, "task"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->cancel()V

    .line 134
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->isWaked:Z

    .line 138
    const-class v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->getTaskByName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    move-result-object v0

    .line 152
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->cancel()V

    .line 156
    const-class v2, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->tasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->isWaked:Z

    .line 160
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 162
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
