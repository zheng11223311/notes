.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$1;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$1;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 379
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 380
    .local v0, "mHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$1;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$000(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 389
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 396
    return-void
.end method
