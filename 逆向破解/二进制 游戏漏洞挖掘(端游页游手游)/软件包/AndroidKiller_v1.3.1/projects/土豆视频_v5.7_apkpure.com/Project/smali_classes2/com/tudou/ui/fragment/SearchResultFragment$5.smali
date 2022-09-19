.class Lcom/tudou/ui/fragment/SearchResultFragment$5;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

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
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->startTime:J

    .line 510
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->onRefreshComplete()V

    .line 512
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 527
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/youku/adapter/SearchResultAdapter;->currentPage:I

    .line 517
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    iput v2, v0, Lcom/youku/adapter/SearchResultAdapter;->curDirectPos:I

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1500(Lcom/tudou/ui/fragment/SearchResultFragment;I)V

    .line 520
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-boolean v0, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->isAgainBronAaid:Z

    if-eqz v0, :cond_2

    .line 521
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iput-boolean v3, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->isAgainBronAaid:Z

    .line 523
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iput-boolean v2, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->shala_more:Z

    .line 524
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iput-boolean v3, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->xiala_refresh:Z

    .line 525
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1800(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    .line 526
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1900(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 9
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
    const/4 v5, 0x1

    .line 531
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->onRefreshComplete()V

    .line 533
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iput-boolean v5, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->shala_more:Z

    .line 538
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->xiala_refresh:Z

    .line 539
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$500(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 541
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 542
    const-string v8, "\u7efc\u5408"

    .line 543
    .local v8, "sortStr":Ljava/lang/String;
    sget-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    const-string v1, "total_pv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    const-string v8, "\u6700\u706b"

    .line 552
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u641c\u7d22\u9875"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u89c6\u9891\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u641c\u7d22\u9875-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u89c6\u9891\u5217\u8868\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1100(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v2

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    sget-object v4, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v6

    iget-boolean v6, v6, Lcom/tudou/ui/fragment/SearchManager;->ugc1noqc:Z

    iget-object v7, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v7}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v7, v7, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 546
    :cond_2
    sget-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    const-string v1, "createtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    const-string v8, "\u6700\u65b0"

    goto :goto_1

    .line 550
    :cond_3
    const-string v8, "\u7efc\u5408"

    goto :goto_1

    .line 557
    .end local v8    # "sortStr":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$500(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 560
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1100(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$5;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->getBokeList(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
