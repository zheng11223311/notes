.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;
.super Ljava/lang/Object;
.source "FullscreenHdNotice.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;I)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;->val$startWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 351
    .local v0, "fraction":F
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;->val$startWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 353
    .local v2, "width":I
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 355
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 356
    return-void
.end method
