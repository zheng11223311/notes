.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->restartVideoRecord(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

.field final synthetic val$endTime:I

.field final synthetic val$maxDuration:I

.field final synthetic val$startTime:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$title:Ljava/lang/String;

    iput p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$startTime:I

    iput p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$maxDuration:I

    iput p6, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$endTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 551
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$1302(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Z)Z

    .line 552
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$title:Ljava/lang/String;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$startTime:I

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$maxDuration:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->startVideoRecord(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 553
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$startTime:I

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;->val$endTime:I

    invoke-virtual {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->stopVideoRecord(II)V

    .line 554
    return-void
.end method
