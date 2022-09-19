.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;
.super Landroid/os/Handler;
.source "VideoRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoRecoredTask"
.end annotation


# instance fields
.field private mDropped:Z

.field public mModel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/detail/DetailModel;",
            ">;"
        }
    .end annotation
.end field

.field public mResult:Lcom/tudou/detail/DetailModel$StartVideoRecordResult;

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .line 544
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mDropped:Z

    .line 545
    return-void
.end method

.method static synthetic access$1100(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mDropped:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;
    .param p1, "x1"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mDropped:Z

    return p1
.end method


# virtual methods
.method cancelVideoRecord()V
    .locals 1

    .prologue
    .line 647
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;)V

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->post(Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method

.method restartVideoRecord(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I
    .param p5, "maxDuration"    # I

    .prologue
    .line 548
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method startVideoRecord(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 9
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "startTime"    # I
    .param p4, "maxDuration"    # I
    .param p5, "immediate"    # Z

    .prologue
    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 560
    .local v2, "methodStart":J
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecoredTask startVideoRecord"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$702(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Z)Z

    .line 562
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;

    move-object v1, p0

    move v4, p5

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;JZLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method

.method stopVideoRecord(II)V
    .locals 1
    .param p1, "startTime"    # I
    .param p2, "endTime"    # I

    .prologue
    .line 609
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;II)V

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->post(Ljava/lang/Runnable;)Z

    .line 644
    return-void
.end method
