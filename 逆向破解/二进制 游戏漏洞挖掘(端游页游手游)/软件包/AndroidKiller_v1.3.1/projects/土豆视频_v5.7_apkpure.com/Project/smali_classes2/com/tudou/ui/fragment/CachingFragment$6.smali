.class Lcom/tudou/ui/fragment/CachingFragment$6;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 397
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v6, "CachingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u88ab\u70b9\u51fb\u7684position:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v6, "cache"

    const-wide/16 v8, 0x12c

    invoke-static {v6, v8, v9}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$700(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p3, v6, :cond_0

    .line 402
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$700(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 403
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/CachingFragment;->isEdit()Z

    move-result v6

    if-nez v6, :cond_a

    .line 404
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tudou/ui/fragment/CachingFragment;->access$800(Lcom/tudou/ui/fragment/CachingFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v4

    .line 409
    .local v4, "state":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "refercode"

    const-string v7, "myChannel|downloadingVideoClick"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    if-eqz v4, :cond_3

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x5

    if-eq v4, v6, :cond_3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 417
    :cond_3
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 418
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    const/16 v6, 0x6f

    iput v6, v3, Landroid/os/Message;->what:I

    .line 420
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$900(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 423
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$900(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/CachingFragment;->changeAllText()V

    .line 427
    :cond_4
    const-string v6, "\u7f13\u5b58\u9875\u89c6\u9891\u4e0b\u8f7d\u6682\u505c"

    const-class v7, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u7f13\u5b58\u9875-\u6b63\u5728\u4e0b\u8f7d\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v6, v7, v8, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 430
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    .line 431
    const-string v6, "\u7f13\u5b58\u9875\u89c6\u9891\u4e0b\u8f7d\u7ee7\u7eed"

    const-class v7, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u7f13\u5b58\u9875-\u6b63\u5728\u4e0b\u8f7d\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v6, v7, v8, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 434
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_6

    .line 435
    const v6, 0x7f0d02c3

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 438
    :cond_6
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v6

    if-nez v6, :cond_8

    .line 439
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v6

    if-nez v6, :cond_7

    .line 440
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v6, v1}, Lcom/tudou/ui/fragment/CachingFragment;->show2G3GDialog(Lcom/tudou/service/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 443
    :cond_7
    const v6, 0x7f0d0115

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    .line 448
    :cond_8
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$900(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 449
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$900(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/CachingFragment;->changeAllText()V

    .line 452
    :cond_9
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$400(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tudou/service/download/DownloadManager;->startDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "state":I
    :cond_a
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 457
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$1000(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 458
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$1000(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 459
    .local v5, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 460
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/service/download/DownloadInfo;

    iget-object v6, v6, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 463
    .end local v2    # "j":I
    .end local v5    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_b
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/youku/util/DeleteCachingItemList;->removeItem(Ljava/lang/String;)V

    .line 478
    :cond_c
    :goto_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 479
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$1100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/util/DeleteCachingItemList;->getpositions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    .line 483
    :goto_3
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/CachingFragment;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v6}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 485
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$1100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v7, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v7

    iget-object v8, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/CachingFragment;->access$1200(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/youku/widget/PageBottomDeleteLayout;->allOrNotAll(Lcom/youku/util/DeleteCachingItemList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 466
    :cond_d
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$1000(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 467
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$1000(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 468
    .restart local v5    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 469
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/service/download/DownloadInfo;

    iget-object v6, v6, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 470
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/service/download/DownloadInfo;

    iget-object v6, v6, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    .line 468
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 474
    .end local v2    # "j":I
    .end local v5    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_f
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$600(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/util/DeleteCachingItemList;

    move-result-object v6

    iget-object v7, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/youku/util/DeleteCachingItemList;->addItems(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 481
    :cond_10
    iget-object v6, p0, Lcom/tudou/ui/fragment/CachingFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CachingFragment;->access$1100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/youku/vo/CacheViewHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/widget/PageBottomDeleteLayout;->setDelBtnTex(Ljava/lang/Integer;)V

    goto/16 :goto_3
.end method
