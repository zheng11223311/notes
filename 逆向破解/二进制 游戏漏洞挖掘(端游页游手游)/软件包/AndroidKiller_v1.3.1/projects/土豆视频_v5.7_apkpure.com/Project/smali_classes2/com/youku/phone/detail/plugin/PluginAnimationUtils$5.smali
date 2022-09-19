.class final Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;
.super Ljava/lang/Object;
.source "PluginAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginAnimationUtils;->pluginBottomHide(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mAnimationActionListener:Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;->val$mAnimationActionListener:Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;->val$mAnimationActionListener:Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;->val$mAnimationActionListener:Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    invoke-interface {v0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;->onAnimationEnd()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 149
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 137
    return-void
.end method
