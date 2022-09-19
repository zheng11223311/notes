.class Lcom/tudou/detail/fragment/VideoCommentFragment$8;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 667
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshComplete()V

    .line 676
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$300(Lcom/tudou/detail/fragment/VideoCommentFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshComplete()V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1302(Lcom/tudou/detail/fragment/VideoCommentFragment;I)I

    .line 675
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1400(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1300(Lcom/tudou/detail/fragment/VideoCommentFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getVideoComment(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 681
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 682
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshComplete()V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$300(Lcom/tudou/detail/fragment/VideoCommentFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshComplete()V

    goto :goto_0

    .line 689
    :cond_2
    const/4 v0, 0x0

    .line 690
    .local v0, "fetch":Z
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1500(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1500(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1500(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v2

    iget v2, v2, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    if-ge v1, v2, :cond_3

    .line 692
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1400(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 693
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1400(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1304(Lcom/tudou/detail/fragment/VideoCommentFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getVideoComment(Ljava/lang/String;I)V

    .line 694
    const/4 v0, 0x1

    .line 698
    :cond_3
    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshComplete()V

    goto :goto_0
.end method
