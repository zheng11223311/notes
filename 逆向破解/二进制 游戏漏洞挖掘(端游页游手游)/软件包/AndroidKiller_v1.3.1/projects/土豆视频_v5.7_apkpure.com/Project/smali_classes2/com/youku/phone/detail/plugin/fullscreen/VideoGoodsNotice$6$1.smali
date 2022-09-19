.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6$1;
.super Ljava/lang/Object;
.source "VideoGoodsNotice.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    invoke-interface {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;->onHide()V

    .line 238
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 230
    return-void
.end method
