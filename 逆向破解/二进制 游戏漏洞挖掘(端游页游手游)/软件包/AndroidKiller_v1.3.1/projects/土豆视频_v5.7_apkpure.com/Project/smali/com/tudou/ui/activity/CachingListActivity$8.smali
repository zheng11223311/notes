.class Lcom/tudou/ui/activity/CachingListActivity$8;
.super Landroid/os/Handler;
.source "CachingListActivity.java"


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
    .line 421
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 424
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 428
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$700(Lcom/tudou/ui/activity/CachingListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 430
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tudou/ui/activity/CachingListActivity;->access$800(Lcom/tudou/ui/activity/CachingListActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 459
    const-string v2, "CachingListActivity"

    invoke-static {v2, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 433
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/ui/activity/CachingListActivity;->access$800(Lcom/tudou/ui/activity/CachingListActivity;Z)V

    .line 434
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    if-nez v2, :cond_2

    .line 435
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    new-instance v3, Lcom/youku/adapter/CachingListAdapter;

    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v5}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v6}, Lcom/tudou/ui/activity/CachingListActivity;->access$1000(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/youku/adapter/CachingListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;Ljava/util/HashMap;)V

    iput-object v3, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    .line 438
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v3}, Lcom/tudou/ui/activity/CachingListActivity;->access$000(Lcom/tudou/ui/activity/CachingListActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/youku/adapter/CachingListAdapter;->setEdit(Z)V

    .line 439
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1000(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v3, v3, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 450
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1100(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1100(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "videoId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1000(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v3, v3, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    iget-object v4, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CachingListActivity;->access$1100(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "videoId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/adapter/CachingListAdapter;->getIdByPos(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 456
    :cond_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1000(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 444
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$1000(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v3}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/youku/adapter/CachingListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 447
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 463
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 468
    .local v0, "dinfo":Lcom/tudou/service/download/DownloadInfo;
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    iget-object v3, v0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->pauseDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    .end local v0    # "dinfo":Lcom/tudou/service/download/DownloadInfo;
    :pswitch_2
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$500(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 474
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$500(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 475
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$600(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 476
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CachingListActivity;->access$600(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 477
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v3}, Lcom/tudou/ui/activity/CachingListActivity;->access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/youku/adapter/CachingListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 478
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity$8;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 479
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
