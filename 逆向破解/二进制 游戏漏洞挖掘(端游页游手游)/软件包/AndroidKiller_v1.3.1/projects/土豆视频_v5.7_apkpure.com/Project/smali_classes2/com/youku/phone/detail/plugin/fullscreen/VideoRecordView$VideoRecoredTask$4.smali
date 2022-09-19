.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->cancelVideoRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 650
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mModel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/DetailModel;

    .line 651
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    if-nez v0, :cond_1

    .line 652
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoRecoredTask stopVideoRecord running with no DetailModel"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelVideoRecord mResult != null && !TextUtils.isEmpty(mResult.tStopUrl) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tStopUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tCancelUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tCancelUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/detail/DetailModel;->cancelVideoRecord(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
