.class Lcom/tudou/ui/fragment/HistoryFragment$2;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

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
    .line 474
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1700(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 476
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1800(Lcom/tudou/ui/fragment/HistoryFragment;)V

    .line 511
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/HintView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 481
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/HintView;->dismiss()V

    .line 483
    :cond_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1400(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/HistoryFragment;->access$902(Lcom/tudou/ui/fragment/HistoryFragment;I)I

    .line 510
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1900(Lcom/tudou/ui/fragment/HistoryFragment;)V

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
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
    const/16 v1, 0x8

    .line 516
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 518
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 528
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$908(Lcom/tudou/ui/fragment/HistoryFragment;)I

    .line 527
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1900(Lcom/tudou/ui/fragment/HistoryFragment;)V

    goto :goto_0
.end method
