.class Lcom/tudou/detail/fragment/VideoPointFragment$5;
.super Ljava/lang/Object;
.source "VideoPointFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoPointFragment;->collapseDesc(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

.field final synthetic val$endHeight:I

.field final synthetic val$startHeight:I

.field final synthetic val$startScrollY:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoPointFragment;III)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iput p2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->val$startHeight:I

    iput p3, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->val$endHeight:I

    iput p4, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->val$startScrollY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v7, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 284
    .local v0, "fraction":F
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v5, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->val$startHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->val$endHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 285
    .local v1, "height":I
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v5, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->val$startScrollY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 286
    .local v3, "tScrollY":I
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->mEvaluator:Landroid/animation/IntEvaluator;

    const/16 v5, 0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 288
    .local v2, "tRotate":I
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandIcon:Landroid/widget/ImageView;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 289
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoPointFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v4, v4, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 292
    return-void
.end method
