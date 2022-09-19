.class Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    .line 478
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 479
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 482
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadManager.handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 486
    :pswitch_0
    const-string v1, "GameCenter"

    const-string v2, "WIRELESS-31820: DownloadServiceMessage.MESSAGE_ON_GETALL"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 493
    .local v15, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 494
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 495
    .local v11, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get All:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v1, :cond_2

    iget v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 498
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    iget-object v2, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v3, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    iget v4, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    iget-wide v5, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    iget v7, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    iget-wide v8, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    invoke-interface/range {v1 .. v9}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onUpdate(Ljava/lang/String;IIJIJ)V

    goto :goto_1

    .line 510
    :cond_3
    iget v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$800(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 513
    :cond_4
    iget v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$900(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 516
    :cond_5
    iget v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$1000(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 522
    .end local v11    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 523
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;>;"
    :cond_7
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 525
    .local v14, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    iget v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 527
    :cond_8
    iget v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 528
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    iget-object v2, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/download/DownloadManager;->pause(Ljava/lang/String;)V

    .line 529
    :cond_9
    const/4 v1, 0x3

    iput v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    iget-object v2, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v3, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    iget v4, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    iget-wide v5, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    iget v7, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    iget-wide v8, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    invoke-interface/range {v1 .. v9}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onUpdate(Ljava/lang/String;IIJIJ)V

    .line 536
    :cond_a
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service has no downloadinfo, stop client download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 545
    .end local v14    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v15    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;>;"
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v14

    .line 547
    .restart local v14    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    const-string v1, "GameCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIRELESS-31820: DownloadServiceMessage.MESSAGE_ON_DOWNLOAD_START, info.mType == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 552
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadManager;->access$000()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tip_download_start:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 557
    :cond_b
    iget v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$800(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 561
    :cond_c
    iget v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$900(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 565
    :cond_d
    iget v1, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$1000(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 569
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 570
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadManager;->access$000()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tip_download_start:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 577
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v14, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    invoke-interface {v1, v14}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onStart(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 574
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1, v14}, Lcom/youku/gamecenter/download/DownloadManager;->access$1100(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v2}, Lcom/youku/gamecenter/download/DownloadManager;->access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/gamecenter/download/DownloadManager;->access$1200(Lcom/youku/gamecenter/download/DownloadManager;Ljava/util/Map;)V

    goto :goto_3

    .line 582
    .end local v14    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->access$1300(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 585
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->access$1300(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 588
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->access$1300(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 591
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v12

    .line 593
    .local v12, "downloadedInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v12, :cond_0

    .line 595
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v1, :cond_10

    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    .line 598
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 600
    .local v17, "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 601
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-interface {v1, v2, v3}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onEnd(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 605
    .end local v17    # "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_11
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$800(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 608
    .restart local v17    # "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 609
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 610
    iget-object v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 611
    .end local v17    # "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_12
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$900(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 614
    .restart local v17    # "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 615
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 616
    iget-object v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 617
    .end local v17    # "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_13
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$1000(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 620
    .restart local v17    # "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 621
    iget v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    move-object/from16 v0, v17

    iput v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 622
    iget-object v1, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 626
    .end local v12    # "downloadedInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v17    # "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->access$1400(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 629
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 630
    .local v10, "data":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 631
    .local v18, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onDownloadIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
