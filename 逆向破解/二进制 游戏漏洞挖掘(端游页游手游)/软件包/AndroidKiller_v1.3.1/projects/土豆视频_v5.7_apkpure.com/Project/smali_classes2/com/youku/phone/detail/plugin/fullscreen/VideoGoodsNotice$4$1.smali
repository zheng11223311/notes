.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;
.super Ljava/lang/Object;
.source "VideoGoodsNotice.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 162
    .local v0, "fraction":F
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;->mEvaluator:Landroid/animation/IntEvaluator;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->val$startWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->val$endWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 164
    .local v2, "width":I
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 165
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 166
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->requestLayout()V

    .line 167
    return-void
.end method
