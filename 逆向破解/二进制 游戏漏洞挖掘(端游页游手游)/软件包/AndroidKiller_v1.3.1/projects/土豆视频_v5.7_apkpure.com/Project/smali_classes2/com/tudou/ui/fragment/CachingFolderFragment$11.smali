.class Lcom/tudou/ui/fragment/CachingFolderFragment$11;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllClick(Z)V
    .locals 4
    .param p1, "isall"    # Z

    .prologue
    .line 567
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 568
    .local v1, "length":I
    if-eqz p1, :cond_3

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 570
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    .line 569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 586
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 587
    return-void

    .line 578
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 579
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 581
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 578
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDelClick()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$11;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$1100(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    .line 562
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_0
    const v0, 0x7f0d00b1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method
