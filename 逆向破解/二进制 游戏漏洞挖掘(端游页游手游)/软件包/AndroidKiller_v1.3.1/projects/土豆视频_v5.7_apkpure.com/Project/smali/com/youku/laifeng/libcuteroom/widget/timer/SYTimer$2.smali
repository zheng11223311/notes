.class Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$2;
.super Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;
.source "SYTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->addNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

.field final synthetic val$l:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;JLjava/lang/String;Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
    .param p2, "timeMillis"    # J
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$2;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$2;->val$l:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask;-><init>(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTimeOver(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 199
    const-class v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$2;->this$0:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->access$402(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;Z)Z

    .line 201
    const-class v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
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
    .line 194
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$2;->val$l:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    invoke-interface {v0}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;->onNotify()V

    .line 195
    return-void
.end method
