.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoGoodsNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

.field final synthetic val$endWidth:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;I)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->val$endWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 251
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->val$endWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 253
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 220
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 221
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->val$endWidth:I

    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 223
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 224
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 225
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 227
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    return-void
.end method
