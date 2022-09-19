.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoGoodsNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 180
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->val$endWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 182
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 173
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4$2;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;

    iget v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$4;->val$endWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 175
    return-void
.end method
