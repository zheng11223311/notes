.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-boolean v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v0

    .line 291
    .local v0, "current":I
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 292
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, p0, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    .end local v0    # "current":I
    :cond_0
    return-void
.end method
