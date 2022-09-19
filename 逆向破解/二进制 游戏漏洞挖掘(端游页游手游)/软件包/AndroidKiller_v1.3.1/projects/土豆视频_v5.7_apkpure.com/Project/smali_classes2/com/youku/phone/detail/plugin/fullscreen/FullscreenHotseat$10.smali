.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$10;
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


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$10;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 346
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$10;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 347
    .local v1, "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setAlpha(F)V

    .line 348
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 349
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    goto :goto_0

    .line 351
    .end local v1    # "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 356
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$10;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .line 357
    .local v1, "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    invoke-virtual {v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 358
    invoke-virtual {v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setTitleVisible(I)V

    goto :goto_0

    .line 360
    .end local v1    # "item":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    :cond_0
    return-void
.end method
