.class Lcom/tudou/ui/fragment/SearchResultFragment$8;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/widget/TextView;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "moreText"    # Landroid/widget/TextView;
    .param p2, "sort"    # Ljava/lang/String;
    .param p3, "pos"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 774
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/SearchListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v0

    .line 803
    :cond_0
    :goto_0
    return v5

    .line 777
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "filter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 778
    :cond_2
    const-string v0, "\u641c\u7d22\u9875\u7b5b\u9009\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u9875-\u7b5b\u9009"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    const/16 v1, 0x309

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 783
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_4

    .line 784
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    move v5, v0

    .line 785
    goto :goto_0

    .line 787
    :cond_4
    sget-object v1, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    sget-object v1, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v0

    .line 789
    goto :goto_0

    .line 791
    :cond_5
    sput-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    .line 792
    sput-object p2, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0, v5}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 794
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1800(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    .line 795
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 796
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1100(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v2

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    sget-object v4, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v6

    iget-boolean v6, v6, Lcom/tudou/ui/fragment/SearchManager;->ugc1noqc:Z

    iget-object v7, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v7}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v7, v7, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/youku/adapter/SearchResultAdapter;->setFiltering(Z)V

    .line 800
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$8;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
