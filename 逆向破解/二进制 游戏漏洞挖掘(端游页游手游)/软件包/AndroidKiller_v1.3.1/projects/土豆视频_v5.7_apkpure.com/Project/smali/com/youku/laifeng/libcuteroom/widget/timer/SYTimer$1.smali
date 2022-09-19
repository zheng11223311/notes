.class Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;
.super Ljava/lang/Object;
.source "SYTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 69
    :goto_0
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    :try_start_0
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    sget-object v5, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->WAITING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    invoke-static {v4, v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$302(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 73
    const-class v5, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    const-class v4, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 75
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_1
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    sget-object v5, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->RUNNING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    invoke-static {v4, v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$302(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    sget-object v5, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->STOP:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    invoke-static {v4, v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$302(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 78
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 105
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_2
    return-void

    .line 83
    :cond_1
    :try_start_4
    const-class v5, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 84
    :try_start_5
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .line 85
    .local v1, "task":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getSurplus()J

    move-result-wide v2

    .line 86
    .local v2, "wait":J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    .line 87
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$402(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Z)Z

    .line 88
    const-class v4, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 89
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    monitor-exit v5

    goto :goto_0

    .line 95
    .end local v1    # "task":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    .end local v2    # "wait":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    sget-object v5, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->STOP:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    invoke-static {v4, v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$302(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 99
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 93
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "task":Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
    .restart local v2    # "wait":J
    :cond_3
    :try_start_7
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$500(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 94
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method
