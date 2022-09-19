.class Lcom/tudou/ui/activity/CachingListActivity$13;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/CachingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 563
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v4, "CachingListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u88ab\u70b9\u51fb\u7684position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$000(Lcom/tudou/ui/activity/CachingListActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "onItemClick"

    const-wide/16 v6, 0x1f4

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 568
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$000(Lcom/tudou/ui/activity/CachingListActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 569
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    .line 570
    .local v3, "state":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "refercode"

    const-string v5, "myChannel|downloadingVideoClick"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    if-eqz v3, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 578
    :cond_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 579
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 580
    const/16 v4, 0x6f

    iput v4, v2, Landroid/os/Message;->what:I

    .line 581
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v4, v4, Lcom/tudou/ui/activity/CachingListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 582
    const-string/jumbo v4, "\u7f13\u5b58\u9875\u89c6\u9891\u4e0b\u8f7d\u6682\u505c"

    const-class v5, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u7f13\u5b58\u9875-\u6b63\u5728\u4e0b\u8f7d\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v4, v5, v6, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 586
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 587
    const-string/jumbo v4, "\u7f13\u5b58\u9875\u89c6\u9891\u4e0b\u8f7d\u7ee7\u7eed"

    const-class v5, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u7f13\u5b58\u9875-\u6b63\u5728\u4e0b\u8f7d\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v4, v5, v6, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 590
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_4

    .line 591
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 594
    :cond_4
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v4

    if-nez v4, :cond_6

    .line 595
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v4

    if-nez v4, :cond_5

    .line 596
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v4, v1}, Lcom/tudou/ui/activity/CachingListActivity;->show2G3GDialog(Lcom/tudou/service/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 599
    :cond_5
    const v4, 0x7f0d0115

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 609
    :cond_6
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tudou/service/download/DownloadManager;->startDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "state":I
    :cond_7
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 613
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 617
    :goto_1
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 618
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1400(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/widget/PageBottomDeleteLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 622
    :goto_2
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v4, v4, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v4}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 624
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1400(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/widget/PageBottomDeleteLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v6}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/youku/widget/PageBottomDeleteLayout;->allOrNotAll(Lcom/youku/util/DeleteCachingItemList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 615
    :cond_8
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    goto :goto_1

    .line 620
    :cond_9
    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$13;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1400(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/widget/PageBottomDeleteLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    goto :goto_2
.end method
