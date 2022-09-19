.class Lcom/tudou/ui/fragment/HistoryFragment$3;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;


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
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
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
    .line 531
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPull(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p2, "direction"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method

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
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/16 v2, 0x8

    .line 543
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$500(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$502(Lcom/tudou/ui/fragment/HistoryFragment;Z)Z

    .line 548
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryFragment;->access$500(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/HistoryAdapter;->setEditable(Z)V

    .line 549
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$600(Lcom/tudou/ui/fragment/HistoryFragment;)V

    .line 550
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$700(Lcom/tudou/ui/fragment/HistoryFragment;)V

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 554
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryFragment;->access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRelease(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p2, "direction"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
