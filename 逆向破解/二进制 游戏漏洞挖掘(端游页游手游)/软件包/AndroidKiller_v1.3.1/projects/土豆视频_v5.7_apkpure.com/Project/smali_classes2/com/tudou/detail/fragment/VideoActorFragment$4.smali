.class Lcom/tudou/detail/fragment/VideoActorFragment$4;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment;->expandDesc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

.field final synthetic val$endHeight:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment;I)V
    .locals 1

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    iput p2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->val$endHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v6, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 203
    .local v0, "fraction":F
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->mEvaluator:Landroid/animation/IntEvaluator;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->val$endHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    .local v1, "height":I
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->mEvaluator:Landroid/animation/IntEvaluator;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 206
    .local v2, "tRotate":I
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$000(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 207
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoActorFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 209
    return-void
.end method
