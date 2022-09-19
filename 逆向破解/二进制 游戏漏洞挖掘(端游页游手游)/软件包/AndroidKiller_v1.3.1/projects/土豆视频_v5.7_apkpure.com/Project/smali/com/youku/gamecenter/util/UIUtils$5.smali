.class final Lcom/youku/gamecenter/util/UIUtils$5;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/util/UIUtils;->pluginRightShow(Landroid/view/View;Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mAnimationActionListener:Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/gamecenter/util/UIUtils$5;->val$mAnimationActionListener:Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;

    iput-object p2, p0, Lcom/youku/gamecenter/util/UIUtils$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/youku/gamecenter/util/UIUtils$5;->val$mAnimationActionListener:Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/youku/gamecenter/util/UIUtils$5;->val$mAnimationActionListener:Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;->onAnimationEnd()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/util/UIUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 261
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 249
    return-void
.end method
