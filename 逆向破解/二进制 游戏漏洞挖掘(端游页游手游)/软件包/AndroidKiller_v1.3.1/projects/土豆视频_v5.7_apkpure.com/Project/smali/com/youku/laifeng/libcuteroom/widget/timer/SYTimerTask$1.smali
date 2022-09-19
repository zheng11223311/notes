.class Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;
.super Ljava/lang/Object;
.source "SYTimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$000(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getSurplus()J

    move-result-wide v4

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 90
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$300()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$300()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    monitor-exit v5

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$500(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    move-result-object v4

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v6

    int-to-long v8, v1

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v8}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v8

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;->onStepNotify(JJ)V

    .line 97
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$500(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v6

    int-to-long v8, v1

    mul-long/2addr v6, v8

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v8

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;->onStepError(JJ)V

    .line 100
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4, v10}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$502(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    goto :goto_1

    .line 104
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->getSurplus()J

    move-result-wide v4

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$100(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 105
    .local v2, "last":J
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$000(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    :try_start_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$300()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 108
    :try_start_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$300()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 109
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$200(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->onTimeOver(J)V

    .line 119
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4, v10}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$502(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    goto/16 :goto_1

    .line 109
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$500(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$400(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;)J

    move-result-wide v8

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;->onStepError(JJ)V

    .line 112
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;

    invoke-static {v4, v10}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;->access$502(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;

    goto/16 :goto_1
.end method
