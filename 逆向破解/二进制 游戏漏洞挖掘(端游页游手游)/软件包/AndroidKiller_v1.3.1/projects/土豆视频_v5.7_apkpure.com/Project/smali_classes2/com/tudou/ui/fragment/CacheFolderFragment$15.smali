.class Lcom/tudou/ui/fragment/CacheFolderFragment$15;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllClick(Z)V
    .locals 4
    .param p1, "isall"    # Z

    .prologue
    .line 642
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 643
    .local v1, "length":I
    if-eqz p1, :cond_3

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 645
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$400(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 661
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/adapter/CacheFloderAdapter;->setPositionList(Lcom/youku/util/DeleteCachingItemList;)V

    .line 662
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$300(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/adapter/CacheFloderAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/adapter/CacheFloderAdapter;->notifyDataSetChanged()V

    .line 663
    return-void

    .line 653
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 654
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 656
    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$200(Lcom/tudou/ui/fragment/CacheFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 653
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDelClick()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$800(Lcom/tudou/ui/fragment/CacheFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$15;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$1100(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    .line 637
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 635
    :cond_0
    const v0, 0x7f0d00b1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method
