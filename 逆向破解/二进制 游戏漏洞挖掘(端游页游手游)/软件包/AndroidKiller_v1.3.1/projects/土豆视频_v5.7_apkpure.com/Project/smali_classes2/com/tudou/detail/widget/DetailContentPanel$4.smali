.class Lcom/tudou/detail/widget/DetailContentPanel$4;
.super Ljava/lang/Object;
.source "DetailContentPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/DetailContentPanel;->hidePlayList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/tudou/detail/widget/DetailContentPanel;

.field final synthetic val$endHeight:I

.field final synthetic val$endPadding:I

.field final synthetic val$endScrollY:I

.field final synthetic val$startHeight:I

.field final synthetic val$startScrollY:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/DetailContentPanel;IIIII)V
    .locals 1

    .prologue
    .line 512
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    iput p2, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$startHeight:I

    iput p3, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$endHeight:I

    iput p4, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$endPadding:I

    iput p5, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$startScrollY:I

    iput p6, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$endScrollY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 518
    .local v0, "fraction":F
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v5, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$startHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$endHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 519
    .local v1, "height":I
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->mEvaluator:Landroid/animation/IntEvaluator;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$endPadding:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 520
    .local v2, "padding":I
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v5, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$startScrollY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->val$endScrollY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 521
    .local v3, "tScrollY":I
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v4}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 523
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v4, v3}, Lcom/tudou/detail/widget/DetailContentPanel;->setScrollY(I)V

    .line 524
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$4;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v4}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/detail/widget/VideoPlaylistBar;->requestLayout()V

    .line 525
    return-void
.end method
