.class public Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;
.super Ljava/lang/Thread;
.source "Gift2DView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field public flag:Z

.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 351
    .local v10, "lastTime":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->flag:Z

    if-eqz v7, :cond_2

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v10

    .line 354
    .local v8, "firstTime":J
    const-wide/16 v14, 0x1e

    cmp-long v7, v8, v14

    if-lez v7, :cond_1

    .line 357
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v7}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$200(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 358
    .local v2, "canvas":Landroid/graphics/Canvas;
    sget-object v14, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->lock1:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 361
    .local v12, "start_time":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v7, v2}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$300(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;Landroid/graphics/Canvas;)V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 363
    .local v4, "end_time":J
    sub-long v16, v4, v12

    .line 366
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v7}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$400(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v7, v2}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$500(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;Landroid/graphics/Canvas;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView$MyThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-static {v7}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->access$200(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 377
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "end_time":J
    .end local v12    # "start_time":J
    :catch_0
    move-exception v6

    .line 378
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 366
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 382
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    const-wide/16 v14, 0x2

    const-wide/16 v16, 0x1e

    sub-long v16, v16, v8

    :try_start_5
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 383
    :catch_1
    move-exception v3

    .line 384
    .local v3, "e":Ljava/lang/InterruptedException;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "firstTime":J
    :cond_2
    return-void
.end method
