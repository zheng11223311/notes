.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$5;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->dismissWithAnimation()V
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
    .line 963
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$5;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 968
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 971
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 972
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$5;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$300(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 982
    :goto_0
    return-void

    .line 977
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 978
    .restart local v0    # "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$5;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$100(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 989
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 996
    return-void
.end method
