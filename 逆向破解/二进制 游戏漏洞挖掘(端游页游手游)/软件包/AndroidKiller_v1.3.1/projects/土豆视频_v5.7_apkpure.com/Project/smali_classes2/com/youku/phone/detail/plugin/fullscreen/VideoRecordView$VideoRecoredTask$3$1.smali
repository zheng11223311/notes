.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;

.field final synthetic val$fImg:Ljava/lang/String;

.field final synthetic val$fUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->val$fUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->val$fImg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 633
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecoredTask stopVideoRecord callback mDropped is true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->this$2:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$StartVideoRecordResult;->tSubVideoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->val$fUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3$1;->val$fImg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->onStopComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
