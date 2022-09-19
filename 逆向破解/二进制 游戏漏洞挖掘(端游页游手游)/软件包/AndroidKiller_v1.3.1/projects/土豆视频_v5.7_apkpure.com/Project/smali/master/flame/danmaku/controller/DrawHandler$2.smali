.class Lmaster/flame/danmaku/controller/DrawHandler$2;
.super Lmaster/flame/danmaku/controller/UpdateThread;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/DrawHandler;->updateInNewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/controller/DrawHandler;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 375
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/UpdateThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 379
    .local v6, "lastTime":J
    const-wide/16 v2, 0x0

    .line 380
    .local v2, "dTime":J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler$2;->isQuited()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$2(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 409
    :cond_1
    return-void

    .line 381
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 382
    .local v8, "startMS":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v6

    .line 383
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$3(Lmaster/flame/danmaku/controller/DrawHandler;)J

    move-result-wide v10

    sub-long v4, v10, v2

    .line 384
    .local v4, "diffTime":J
    const-wide/16 v10, 0x1

    cmp-long v10, v4, v10

    if-lez v10, :cond_3

    .line 385
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 388
    :cond_3
    move-wide v6, v8

    .line 389
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10, v8, v9}, Lmaster/flame/danmaku/controller/DrawHandler;->access$4(Lmaster/flame/danmaku/controller/DrawHandler;J)J

    move-result-wide v0

    .line 390
    .local v0, "d":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gez v10, :cond_4

    .line 391
    const-wide/16 v10, 0x3c

    sub-long/2addr v10, v0

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 394
    :cond_4
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$5(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/IDanmakuViewController;

    move-result-object v10

    invoke-interface {v10}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    move-result-wide v0

    .line 395
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$6(Lmaster/flame/danmaku/controller/DrawHandler;)J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_5

    .line 396
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$7(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 397
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$8(Lmaster/flame/danmaku/controller/DrawHandler;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    .line 399
    :cond_5
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$9(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 400
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    const-wide/32 v12, 0x989680

    invoke-static {v10, v12, v13}, Lmaster/flame/danmaku/controller/DrawHandler;->access$10(Lmaster/flame/danmaku/controller/DrawHandler;J)V

    goto :goto_0

    .line 401
    :cond_6
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$11(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v10

    iget-boolean v10, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$12(Lmaster/flame/danmaku/controller/DrawHandler;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 402
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$11(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v10

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iget-object v12, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v12}, Lmaster/flame/danmaku/controller/DrawHandler;->access$7(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v12

    iget-wide v12, v12, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v2, v10, v12

    .line 403
    const-wide/16 v10, 0x1f4

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    .line 404
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/DrawHandler;->access$13(Lmaster/flame/danmaku/controller/DrawHandler;)V

    .line 405
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler$2;->this$0:Lmaster/flame/danmaku/controller/DrawHandler;

    const-wide/16 v12, 0xa

    sub-long v12, v2, v12

    invoke-static {v10, v12, v13}, Lmaster/flame/danmaku/controller/DrawHandler;->access$10(Lmaster/flame/danmaku/controller/DrawHandler;J)V

    goto/16 :goto_0
.end method
