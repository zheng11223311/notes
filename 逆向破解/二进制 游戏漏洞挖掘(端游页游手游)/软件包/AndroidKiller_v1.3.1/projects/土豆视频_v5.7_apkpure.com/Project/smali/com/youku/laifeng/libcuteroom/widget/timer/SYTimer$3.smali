.class Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$3;
.super Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
.source "SYTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->addNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

.field final synthetic val$l:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;)V
    .locals 10
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
    .param p2, "timeMillis"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "stepListener"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;
    .param p6, "step"    # J

    .prologue
    .line 213
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$3;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$3;->val$l:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    move-object v3, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;-><init>(JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V

    return-void
.end method


# virtual methods
.method public onTimeOver(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 221
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$3;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$402(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Z)Z

    .line 223
    const-class v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$3;->val$l:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    invoke-interface {v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;->onNotify()V

    .line 217
    return-void
.end method
