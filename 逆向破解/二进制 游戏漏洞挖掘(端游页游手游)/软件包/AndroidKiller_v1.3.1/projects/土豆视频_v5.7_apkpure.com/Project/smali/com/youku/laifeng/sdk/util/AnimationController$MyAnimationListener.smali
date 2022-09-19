.class Lcom/youku/laifeng/sdk/util/AnimationController$MyAnimationListener;
.super Ljava/lang/Object;
.source "AnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/util/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/util/AnimationController;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/sdk/util/AnimationController;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/laifeng/sdk/util/AnimationController$MyAnimationListener;->this$0:Lcom/youku/laifeng/sdk/util/AnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/youku/laifeng/sdk/util/AnimationController$MyAnimationListener;->view:Landroid/view/View;

    .line 47
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/AnimationController$MyAnimationListener;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 61
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 52
    return-void
.end method
