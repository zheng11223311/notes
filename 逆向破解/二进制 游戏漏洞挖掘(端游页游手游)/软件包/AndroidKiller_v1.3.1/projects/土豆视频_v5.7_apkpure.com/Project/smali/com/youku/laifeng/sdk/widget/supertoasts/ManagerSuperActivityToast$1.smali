.class Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast$1;
.super Ljava/lang/Object;
.source "ManagerSuperActivityToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->removeSuperToast(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

.field final synthetic val$superActivityToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast$1;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast$1;->val$superActivityToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast$1;->val$superActivityToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getOnDismissWrapper()Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast$1;->val$superActivityToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getOnDismissWrapper()Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast$1;->val$superActivityToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;->onDismiss(Landroid/view/View;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast$1;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->access$000(Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;)V

    .line 240
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 226
    return-void
.end method
