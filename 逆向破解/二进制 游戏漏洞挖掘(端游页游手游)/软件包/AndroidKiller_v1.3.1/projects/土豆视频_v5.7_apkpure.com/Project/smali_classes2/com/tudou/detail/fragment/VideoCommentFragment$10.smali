.class Lcom/tudou/detail/fragment/VideoCommentFragment$10;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$10;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 726
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$10;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showAddComment()V

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$10;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->goLogin(Landroid/app/Activity;)V

    goto :goto_0
.end method
