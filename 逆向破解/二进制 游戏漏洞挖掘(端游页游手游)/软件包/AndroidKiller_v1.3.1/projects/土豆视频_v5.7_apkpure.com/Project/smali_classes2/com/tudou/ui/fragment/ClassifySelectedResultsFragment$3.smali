.class Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 6
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
    .line 276
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    .line 297
    :goto_1
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 291
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$302(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;I)I

    .line 293
    const-string v1, "filter_tag"

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3, v4}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

    goto :goto_1

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->labeltop_first_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/SkipInfo;->labeltop_second_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/tudou/service/classify/Classify;->getChannelLabelTop(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_1
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
    .line 301
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 303
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$308(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    .line 312
    const-string v0, "filter_tag"

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->labeltop_first_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->labeltop_second_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tudou/service/classify/Classify;->getChannelLabelTop(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
