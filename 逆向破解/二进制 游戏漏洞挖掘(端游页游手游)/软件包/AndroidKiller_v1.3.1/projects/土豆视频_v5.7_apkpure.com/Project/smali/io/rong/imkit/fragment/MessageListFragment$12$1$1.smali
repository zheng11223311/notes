.class Lio/rong/imkit/fragment/MessageListFragment$12$1$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment$12$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment$12$1;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x1e

    .line 970
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$12;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$12;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    if-gt v0, v2, :cond_1

    .line 973
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$12;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment$12$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$12;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget v1, v1, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    rsub-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$12;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    if-lt v0, v2, :cond_0

    .line 975
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$12;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const/16 v1, 0x96

    iput v1, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    .line 977
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$12$1$1;->this$2:Lio/rong/imkit/fragment/MessageListFragment$12$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$12;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 984
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 966
    return-void
.end method
