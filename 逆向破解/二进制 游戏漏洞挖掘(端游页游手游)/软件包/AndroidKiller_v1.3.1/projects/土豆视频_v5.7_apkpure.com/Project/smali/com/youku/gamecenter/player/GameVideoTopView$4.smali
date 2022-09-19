.class final Lcom/youku/gamecenter/player/GameVideoTopView$4;
.super Ljava/lang/Object;
.source "GameVideoTopView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/player/GameVideoTopView;->pluginTopHide(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoTopView$4;->val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;

    iput-object p2, p0, Lcom/youku/gamecenter/player/GameVideoTopView$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView$4;->val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView$4;->val$mAnimationActionListener:Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;->onAnimationEnd()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 129
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 121
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 117
    return-void
.end method
