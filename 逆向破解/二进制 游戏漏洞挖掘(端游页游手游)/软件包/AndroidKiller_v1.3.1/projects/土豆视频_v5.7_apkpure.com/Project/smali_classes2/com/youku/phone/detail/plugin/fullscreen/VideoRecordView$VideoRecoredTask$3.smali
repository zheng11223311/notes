.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->stopVideoRecord(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

.field final synthetic val$endTime:I

.field final synthetic val$startTime:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;II)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->val$startTime:I

    iput p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->val$endTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 612
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mModel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/DetailModel;

    .line 613
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    if-nez v0, :cond_0

    .line 614
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask stopVideoRecord running with no DetailModel"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask stopVideoRecord mDropped is true"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    :cond_1
    const/4 v8, 0x0

    .line 622
    .local v8, "url":Ljava/lang/String;
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecord mResult != null && !TextUtils.isEmpty(mResult.tStopUrl) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 624
    .local v5, "out":[Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tSubVideoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v2, v2, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->val$startTime:I

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->val$endTime:I

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/detail/DetailModel;->stopVideoRecord(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 627
    :cond_2
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecord url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object v7, v8

    .line 629
    .local v7, "fUrl":Ljava/lang/String;
    aget-object v6, v5, v9

    .line 630
    .local v6, "fImg":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;

    invoke-direct {v2, p0, v7, v6}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .end local v5    # "out":[Ljava/lang/String;
    .end local v6    # "fImg":Ljava/lang/String;
    .end local v7    # "fUrl":Ljava/lang/String;
    :cond_3
    move v1, v9

    .line 622
    goto :goto_1
.end method
