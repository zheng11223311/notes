.class Lcom/tudou/detail/fragment/VideoCommentFragment$9;
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
    .line 704
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 707
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1600(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_2

    .line 712
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1400(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1300(Lcom/tudou/detail/fragment/VideoCommentFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getVideoComment(Ljava/lang/String;I)V

    goto :goto_0

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1600(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->DETAILED_COMMENT:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_0

    .line 714
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showAddComment()V

    goto :goto_0

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->goLogin(Landroid/app/Activity;)V

    goto :goto_0
.end method
