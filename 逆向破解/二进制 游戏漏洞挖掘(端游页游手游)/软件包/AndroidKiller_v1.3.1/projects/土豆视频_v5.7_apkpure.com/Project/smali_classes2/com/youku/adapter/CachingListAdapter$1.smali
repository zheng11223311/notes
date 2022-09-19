.class Lcom/youku/adapter/CachingListAdapter$1;
.super Landroid/os/Handler;
.source "CachingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/CachingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/CachingListAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/CachingListAdapter;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 502
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 504
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 507
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/tudou/service/download/DownloadInfo;

    .line 508
    .local v9, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v9}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v13

    .line 509
    .local v13, "vid":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "speed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 513
    .local v11, "speed":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cacheTxtStatue"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 515
    .local v7, "cacheTxtStatue":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "roundprogressbar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/youku/widget/RoundProgressBar;

    .line 517
    .local v10, "roundProgressBar":Lcom/youku/widget/RoundProgressBar;
    if-eqz v7, :cond_1

    .line 518
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :cond_1
    if-eqz v11, :cond_2

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1200(Lcom/youku/adapter/CachingListAdapter;)Landroid/content/Context;

    move-result-object v1

    const v14, 0x7f0d0103

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :cond_2
    if-eqz v10, :cond_3

    .line 526
    invoke-virtual {v9}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 528
    :cond_3
    if-eqz v11, :cond_0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "/S"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 534
    .end local v7    # "cacheTxtStatue":Landroid/widget/TextView;
    .end local v9    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v10    # "roundProgressBar":Lcom/youku/widget/RoundProgressBar;
    .end local v11    # "speed":Landroid/widget/TextView;
    .end local v13    # "vid":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 535
    .local v2, "di":Lcom/tudou/service/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "roundprogressbar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/RoundProgressBar;

    .line 537
    .local v5, "pRoundProgressBar2":Lcom/youku/widget/RoundProgressBar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "stateImageView"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 539
    .local v3, "statusImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "speed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 541
    .local v4, "speed2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cacheTxtStatue"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 543
    .local v6, "cacheTxtStatue2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "stateTextView"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 545
    .local v12, "stateText":Landroid/widget/TextView;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1300(Lcom/youku/adapter/CachingListAdapter;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1}, Lcom/youku/adapter/CachingListAdapter;->access$1300(Lcom/youku/adapter/CachingListAdapter;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v1

    if-nez v1, :cond_5

    .line 546
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static {v1, v12, v2}, Lcom/youku/adapter/CachingListAdapter;->access$1400(Lcom/youku/adapter/CachingListAdapter;Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V

    .line 547
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/adapter/CachingListAdapter$1;->this$0:Lcom/youku/adapter/CachingListAdapter;

    invoke-static/range {v1 .. v6}, Lcom/youku/adapter/CachingListAdapter;->access$1500(Lcom/youku/adapter/CachingListAdapter;Lcom/tudou/service/download/DownloadInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/youku/widget/RoundProgressBar;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 549
    :catch_0
    move-exception v8

    .line 550
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "Youku"

    const-string v14, "DownloadAdapter#enclosing_method()"

    invoke-static {v1, v14, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x309 -> :sswitch_2
    .end sparse-switch
.end method
