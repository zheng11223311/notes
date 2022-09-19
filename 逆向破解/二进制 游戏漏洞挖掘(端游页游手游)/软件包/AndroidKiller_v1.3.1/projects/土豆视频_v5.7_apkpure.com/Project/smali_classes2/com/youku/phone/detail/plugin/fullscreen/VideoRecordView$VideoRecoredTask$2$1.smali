.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecoredTask startVideoRecord callback mDropped is true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-boolean v0, v0, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->success:Z

    :goto_1
    invoke-virtual {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->onStartComplete(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
