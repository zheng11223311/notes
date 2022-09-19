.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullscreenHdNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;I)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->val$startWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 395
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 396
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 397
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

    .line 361
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 363
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 364
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->val$startWidth:I

    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 365
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 368
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 369
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 370
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$500(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 390
    return-void
.end method
