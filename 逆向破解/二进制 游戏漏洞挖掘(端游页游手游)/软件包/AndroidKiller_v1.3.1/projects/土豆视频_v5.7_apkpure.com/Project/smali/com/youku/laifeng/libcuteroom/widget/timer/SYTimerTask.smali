.class public abstract Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
.super Ljava/lang/Object;
.source "SYTimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;
    }
.end annotation


# static fields
.field private static lock:Ljava/lang/Object;


# instance fields
.field private createTime:J

.field private name:Ljava/lang/String;

.field private offsetTimeMillis:J

.field private final r:Ljava/lang/Runnable;

.field private step:J

.field private stepListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

.field private thread:Ljava/lang/Thread;

.field private threadIntterupt:Z

.field private when:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;-><init>(J)V

    .line 39
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3
    .param p1, "timeMillis"    # J

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;-><init>(JLjava/lang/String;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V
    .locals 8
    .param p1, "timeMillis"    # J
    .param p3, "stepListener"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;
    .param p4, "step"    # J

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;-><init>(JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V

    .line 51
    return-void
.end method

.method protected constructor <init>(JLjava/lang/String;)V
    .locals 9
    .param p1, "timeMillis"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;-><init>(JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V

    .line 47
    return-void
.end method

.method protected constructor <init>(JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V
    .locals 5
    .param p1, "timeMillis"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stepListener"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;
    .param p5, "step"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;-><init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->r:Ljava/lang/Runnable;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->createTime:J

    .line 55
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->offsetTimeMillis:J

    .line 56
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->createTime:J

    iget-wide v2, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->offsetTimeMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->when:J

    .line 57
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->name:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->stepListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    .line 59
    iput-wide p5, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->step:J

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->lock:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->threadIntterupt:Z

    .line 63
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->r:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->thread:Ljava/lang/Thread;

    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->thread:Ljava/lang/Thread;

    const-string v1, "SYTimer-Step-Task"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->step:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->threadIntterupt:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->offsetTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->stepListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->stepListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->threadIntterupt:Z

    .line 129
    sget-object v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const-string/jumbo v0, "star test"

    const-string/jumbo v1, "step cancel"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSurplus()J
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getWhen()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->when:J

    return-wide v0
.end method

.method public abstract onTimeOver(J)V
.end method

.method public abstract run()V
.end method

.method public final setOffsetTimeMillis(J)V
    .locals 5
    .param p1, "timeMillis"    # J

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->createTime:J

    .line 80
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->offsetTimeMillis:J

    .line 81
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->createTime:J

    iget-wide v2, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->offsetTimeMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->when:J

    .line 82
    return-void
.end method
