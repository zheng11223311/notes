.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullscreenHdNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 319
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 320
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;

    iget v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;->val$endWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 321
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 311
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;

    iget v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;->val$endWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 313
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->requestLayout()V

    .line 314
    return-void
.end method
