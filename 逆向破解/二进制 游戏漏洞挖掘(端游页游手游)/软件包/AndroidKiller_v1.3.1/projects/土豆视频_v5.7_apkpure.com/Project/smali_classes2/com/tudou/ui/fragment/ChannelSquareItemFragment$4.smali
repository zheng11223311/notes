.class Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;
.super Ljava/lang/Object;
.source "ChannelSquareItemFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 11
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
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v10, 0x1

    .line 401
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 403
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 416
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0, v10}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$202(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;I)I

    .line 407
    const-string v0, "\u81ea\u9891\u9053\u5e7f\u573a\u4e0b\u62c9\u5237\u65b0"

    const-class v1, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u81ea\u9891\u9053\u5e7f\u573a\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$100(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 410
    iget-object v9, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/ChannelSquareTag;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/ChannelSquareTag;->getGender()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/ChannelSquareTag;->getFc()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/ChannelSquareTag;->getQualityUser()I

    move-result v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/ChannelSquareTag;->getUserType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/ChannelSquareTag;->getOrderByField()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/ChannelSquareTag;->getOrderByType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$200(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I

    move-result v7

    const/16 v8, 0x1e

    invoke-static/range {v0 .. v8}, Lcom/youku/http/TudouURLContainer;->getChannelSquareClassfyItems(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1302(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannelSquareTag;Z)V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 10
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
    .line 420
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1100(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 425
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 426
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 430
    :cond_2
    const-string v0, "\u81ea\u9891\u9053\u5e7f\u573a\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    const-class v1, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u81ea\u9891\u9053\u5e7f\u573a\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v9, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/ChannelSquareTag;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/ChannelSquareTag;->getGender()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/ChannelSquareTag;->getFc()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/ChannelSquareTag;->getQualityUser()I

    move-result v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/ChannelSquareTag;->getUserType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/ChannelSquareTag;->getOrderByField()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/ChannelSquareTag;->getOrderByType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$204(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I

    move-result v7

    const/16 v8, 0x1e

    invoke-static/range {v0 .. v8}, Lcom/youku/http/TudouURLContainer;->getChannelSquareClassfyItems(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1302(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannelSquareTag;Z)V

    goto/16 :goto_0
.end method
