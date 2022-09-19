.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$5;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->startVideoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$5;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 330
    .local v0, "fraction":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 331
    return-void
.end method
