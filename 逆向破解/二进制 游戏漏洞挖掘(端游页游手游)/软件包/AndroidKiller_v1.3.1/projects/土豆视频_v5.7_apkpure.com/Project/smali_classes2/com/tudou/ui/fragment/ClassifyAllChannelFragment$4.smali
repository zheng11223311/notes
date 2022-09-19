.class Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;
.super Ljava/lang/Object;
.source "ClassifyAllChannelFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
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
    .line 379
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    .line 382
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFliterBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SkipInfo;->first_tag_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/classify/Classify;->getChannelsFilterData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 391
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 388
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1502(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;I)I

    .line 390
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

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
    .line 395
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 397
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 408
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v0, "channel_filter_pull_up"

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1508(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I

    .line 407
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$2300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

    goto :goto_0
.end method
