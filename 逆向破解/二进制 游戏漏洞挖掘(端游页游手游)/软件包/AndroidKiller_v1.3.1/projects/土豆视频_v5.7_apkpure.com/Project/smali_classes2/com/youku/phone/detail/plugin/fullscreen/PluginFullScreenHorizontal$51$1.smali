.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51$1;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->onHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;)V
    .locals 0

    .prologue
    .line 4185
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 4192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$6300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4193
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 4198
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 4188
    return-void
.end method
