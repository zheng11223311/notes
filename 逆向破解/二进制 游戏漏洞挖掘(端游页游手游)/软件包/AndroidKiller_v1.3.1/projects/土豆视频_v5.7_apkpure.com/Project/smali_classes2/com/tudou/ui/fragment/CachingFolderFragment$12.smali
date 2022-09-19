.class Lcom/tudou/ui/fragment/CachingFolderFragment$12;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 591
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x3

    .line 596
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-boolean v4, v4, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    if-nez v4, :cond_1

    const-string v4, "onItemClick"

    const-wide/16 v6, 0x1f4

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 600
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-boolean v4, v4, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    if-nez v4, :cond_7

    .line 601
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    .line 602
    .local v3, "state":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 603
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "refercode"

    const-string v5, "myChannel|downloadingVideoClick"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    if-eqz v3, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 608
    :cond_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 609
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 610
    iput v8, v2, Landroid/os/Message;->what:I

    .line 611
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$700(Lcom/tudou/ui/fragment/CachingFolderFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    const-string v4, "\u7f13\u5b58\u9875\u89c6\u9891\u4e0b\u8f7d\u6682\u505c"

    const-class v5, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u7f13\u5b58\u9875-\u6b63\u5728\u4e0b\u8f7d\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v4, v5, v6, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 615
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    if-ne v3, v8, :cond_0

    .line 616
    const-string v4, "\u7f13\u5b58\u9875\u89c6\u9891\u4e0b\u8f7d\u7ee7\u7eed"

    const-class v5, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u7f13\u5b58\u9875-\u6b63\u5728\u4e0b\u8f7d\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v4, v5, v6, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 619
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_4

    .line 620
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 623
    :cond_4
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v4

    if-nez v4, :cond_6

    .line 624
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v4

    if-nez v4, :cond_5

    .line 625
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v4, v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->show2G3GDialog(Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0

    .line 628
    :cond_5
    const v4, 0x7f0d0115

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 631
    :cond_6
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$600(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tudou/service/download/DownloadManager;->startDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "state":I
    :cond_7
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 635
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 640
    :goto_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 641
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v5, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 645
    :goto_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$300(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/adapter/CachingListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 647
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v5, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$1200(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/youku/widget/PageBottomDeleteLayout;->allOrNotAll(Lcom/youku/util/DeleteCachingItemList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 637
    :cond_8
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$900(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    goto :goto_1

    .line 643
    :cond_9
    iget-object v4, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$12;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$400(Lcom/tudou/ui/fragment/CachingFolderFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    goto :goto_2
.end method
