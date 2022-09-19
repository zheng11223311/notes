.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullscreenHotseat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->expand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 216
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;->onHotseatExpand(ZZ)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnExpand()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    .line 220
    return-void
.end method
