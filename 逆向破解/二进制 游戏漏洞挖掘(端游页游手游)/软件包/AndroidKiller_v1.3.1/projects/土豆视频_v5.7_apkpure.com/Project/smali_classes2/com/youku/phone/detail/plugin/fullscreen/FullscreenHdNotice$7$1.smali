.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;
.super Ljava/lang/Object;
.source "FullscreenHdNotice.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    invoke-interface {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;->onHide()V

    .line 384
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 388
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 375
    return-void
.end method
