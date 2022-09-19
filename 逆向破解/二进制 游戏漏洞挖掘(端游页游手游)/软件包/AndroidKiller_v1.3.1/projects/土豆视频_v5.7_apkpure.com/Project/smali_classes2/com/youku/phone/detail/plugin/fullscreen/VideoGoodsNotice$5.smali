.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;
.super Ljava/lang/Object;
.source "VideoGoodsNotice.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

.field final synthetic val$endWidth:I

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;II)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->val$startWidth:I

    iput p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->val$endWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 210
    .local v0, "fraction":F
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->val$startWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->val$endWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 212
    .local v2, "width":I
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 214
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->requestLayout()V

    .line 215
    return-void
.end method
