.class final Lcom/youku/gamecenter/player/GameVideoBottomView$4;
.super Ljava/lang/Object;
.source "GameVideoBottomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/player/GameVideoBottomView;->pluginBottomHide(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$4;->val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;

    iput-object p2, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$4;->val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$4;->val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;->onAnimationEnd()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 266
    invoke-static {}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$700()Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$700()Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;->onHide()V

    .line 269
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 257
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    return-void
.end method
