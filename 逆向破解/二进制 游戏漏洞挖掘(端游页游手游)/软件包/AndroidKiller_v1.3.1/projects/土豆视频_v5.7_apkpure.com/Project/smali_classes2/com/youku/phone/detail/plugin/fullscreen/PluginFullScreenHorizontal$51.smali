.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->checkHdInfos(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 4175
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 4178
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v4, "mHdNoticeView onHide"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$6200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    .line 4180
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->getCurrentState()Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4181
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$6300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4182
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 4183
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 4184
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4185
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4200
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$6300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4202
    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    :cond_0
    return-void
.end method
