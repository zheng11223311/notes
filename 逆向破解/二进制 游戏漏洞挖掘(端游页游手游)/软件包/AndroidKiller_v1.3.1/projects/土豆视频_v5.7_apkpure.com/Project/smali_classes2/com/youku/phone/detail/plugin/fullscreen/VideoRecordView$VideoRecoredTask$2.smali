.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->startVideoRecord(Ljava/lang/String;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

.field final synthetic val$immediate:Z

.field final synthetic val$maxDuration:I

.field final synthetic val$methodStart:J

.field final synthetic val$startTime:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;JZLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iput-wide p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$methodStart:J

    iput-boolean p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$immediate:Z

    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$videoId:Ljava/lang/String;

    iput-object p6, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$title:Ljava/lang/String;

    iput p7, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$startTime:I

    iput p8, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$maxDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 565
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask startVideoRecord run"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$1400(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$methodStart:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask startVideoRecord time to start"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$immediate:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$1300(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask startVideoRecord is already exit"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_1
    return-void

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask startVideoRecord mDropped is true"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mModel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/DetailModel;

    .line 580
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    if-nez v0, :cond_2

    .line 581
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask startVideoRecord running with no DetailModel"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$videoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$title:Ljava/lang/String;

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$startTime:I

    iget v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->val$maxDuration:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tudou/detail/DetailModel;->startVideoRecord(Ljava/lang/String;Ljava/lang/String;II)Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    .line 585
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideoRecord mResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    if-nez v1, :cond_3

    .line 587
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    new-instance v2, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    invoke-direct {v2}, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;-><init>()V

    iput-object v2, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    .line 588
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->success:Z

    .line 589
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    const-string v2, "1"

    iput-object v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tCancelUrl:Ljava/lang/String;

    .line 590
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    const-string v2, "1"

    iput-object v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

    .line 591
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    const-string v2, "videoid"

    iput-object v2, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tSubVideoId:Ljava/lang/String;

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 568
    .end local v0    # "tModel":Lcom/tudou/detail/DetailModel;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
