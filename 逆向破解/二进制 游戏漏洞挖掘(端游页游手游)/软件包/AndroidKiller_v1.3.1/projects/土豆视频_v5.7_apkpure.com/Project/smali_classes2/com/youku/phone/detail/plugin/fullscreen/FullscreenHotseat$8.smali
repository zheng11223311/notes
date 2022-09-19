.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullscreenHotseat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

.field final synthetic val$showController:Z


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;Z)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iput-boolean p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->val$showController:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 297
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$002(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;Z)Z

    .line 298
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 299
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->val$showController:Z

    invoke-interface {v0, v2, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;->onHotseatExpand(ZZ)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->val$showController:Z

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setVisibility(I)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$600(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mVideoRecordEnable:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 309
    :cond_2
    return-void
.end method
