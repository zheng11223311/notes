.class Lcom/tudou/ui/fragment/SearchResultFragment$9;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;


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
    .line 807
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 8
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 811
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    sget-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    :cond_2
    sput-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    .line 820
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I

    .line 821
    sput-object p1, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1800(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    .line 823
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 824
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1100(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    sget-object v4, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v5

    iget-boolean v6, v5, Lcom/tudou/ui/fragment/SearchManager;->ugc1noqc:Z

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v7, v5, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/adapter/SearchResultAdapter;->setFiltering(Z)V

    .line 828
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$9;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
