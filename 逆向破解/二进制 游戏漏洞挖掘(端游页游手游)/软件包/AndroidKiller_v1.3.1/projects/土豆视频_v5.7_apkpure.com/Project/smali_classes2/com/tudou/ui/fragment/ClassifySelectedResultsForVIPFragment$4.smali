.class Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsForVIPFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 7
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
    const/16 v3, 0x8

    const/4 v6, 0x1

    .line 357
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    const-string v2, "1"

    const/4 v3, 0x0

    const-string v4, "50"

    const-string v5, "1"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1900(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    const/4 v2, 0x3

    invoke-static {v1, v6, v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;II)V

    .line 376
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    .line 388
    :goto_2
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 382
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1, v6}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$302(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;I)I

    .line 384
    const-string v1, "filter_tag"

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3, v4}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

    goto :goto_2

    .line 387
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->labeltop_first_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/SkipInfo;->labeltop_second_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/tudou/service/classify/Classify;->getChannelLabelTop(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_2
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 5
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
    .line 392
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 394
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$308(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    .line 403
    const-string v0, "filter_tag"

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$2100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->labeltop_first_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->labeltop_second_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tudou/service/classify/Classify;->getChannelLabelTop(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
