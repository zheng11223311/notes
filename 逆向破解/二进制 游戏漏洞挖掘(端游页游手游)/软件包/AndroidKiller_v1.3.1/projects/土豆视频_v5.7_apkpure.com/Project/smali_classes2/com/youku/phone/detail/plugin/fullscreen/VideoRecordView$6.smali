.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->startVideoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

.field final synthetic val$timeout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->val$timeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->mCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->mCancel:Z

    .line 340
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startVideoRecord mProgressAnim Cancel"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 346
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startVideoRecord mProgressAnim End"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->mCancel:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->val$timeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;->val$timeout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 352
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 357
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startVideoRecord mProgressAnim Start"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method
