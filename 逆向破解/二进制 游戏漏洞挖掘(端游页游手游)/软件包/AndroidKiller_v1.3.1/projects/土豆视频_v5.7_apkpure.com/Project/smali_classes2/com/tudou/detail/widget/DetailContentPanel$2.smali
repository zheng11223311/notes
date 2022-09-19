.class Lcom/tudou/detail/widget/DetailContentPanel$2;
.super Ljava/lang/Object;
.source "DetailContentPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/DetailContentPanel;->showPlaylist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/tudou/detail/widget/DetailContentPanel;

.field final synthetic val$endHeight:I

.field final synthetic val$location:[I

.field final synthetic val$mPlaylistBarLocation:[I

.field final synthetic val$startPadding:I

.field final synthetic val$startScrollY:I

.field final synthetic val$startheight:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/DetailContentPanel;IIII[I[I)V
    .locals 1

    .prologue
    .line 437
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    iput p2, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$startheight:I

    iput p3, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$endHeight:I

    iput p4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$startPadding:I

    iput p5, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$startScrollY:I

    iput-object p6, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$mPlaylistBarLocation:[I

    iput-object p7, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$location:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->mEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 443
    .local v0, "fraction":F
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v5, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$startheight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$endHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 444
    .local v1, "height":I
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->mEvaluator:Landroid/animation/IntEvaluator;

    iget v5, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$startPadding:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 445
    .local v2, "padding":I
    iget v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$startScrollY:I

    iget-object v5, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->mEvaluator:Landroid/animation/IntEvaluator;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$mPlaylistBarLocation:[I

    aget v7, v7, v9

    iget-object v8, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->val$location:[I

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v0, v6, v7}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v3, v4, v5

    .line 446
    .local v3, "tScrollY":I
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v4}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v4}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 449
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-virtual {v4, v3}, Lcom/tudou/detail/widget/DetailContentPanel;->setScrollY(I)V

    .line 450
    iget-object v4, p0, Lcom/tudou/detail/widget/DetailContentPanel$2;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v4}, Lcom/tudou/detail/widget/DetailContentPanel;->access$100(Lcom/tudou/detail/widget/DetailContentPanel;)Lcom/tudou/detail/widget/VideoPlaylistBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/detail/widget/VideoPlaylistBar;->requestLayout()V

    .line 452
    :cond_0
    return-void
.end method
