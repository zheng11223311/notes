.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 2348
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseClick(I)V
    .locals 2
    .param p1, "fromType"    # I

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->dismiss()V

    .line 2352
    packed-switch p1, :pswitch_data_0

    .line 2390
    :goto_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_dialog_close"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    .line 2392
    return-void

    .line 2354
    :pswitch_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_follow_wait"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2357
    :pswitch_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_unfollow_wait"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2360
    :pswitch_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_5_wait"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2363
    :pswitch_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_10_wait"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2366
    :pswitch_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_15_wait"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2369
    :pswitch_5
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_send_star_close"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2372
    :pswitch_6
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_send_chat_message_close"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2375
    :pswitch_7
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_three_days_close"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2376
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->finish()V

    goto :goto_0

    .line 2379
    :pswitch_8
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_three_shows_close"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2380
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->finish()V

    goto :goto_0

    .line 2383
    :pswitch_9
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_vote_wait"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2352
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public OnDownloadClick(I)V
    .locals 8
    .param p1, "fromType"    # I

    .prologue
    .line 2396
    packed-switch p1, :pswitch_data_0

    .line 2431
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2432
    const-string v3, "LaifengLiveRoomActivity"

    const-string v4, "Dialog on download click--------LAIFENG-APP is installed"

    invoke-static {v3, v4}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_dialog_open"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2434
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/LaifengSDKApplication;->getEnterRoomApi()Lcom/youku/api/EventDoApi;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    move-result-object v4

    const-string/jumbo v5, "rid"

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/api/EventDoApi;->doEnterLaifengLivingRoom(Ljava/lang/String;)V

    .line 2468
    :cond_0
    :goto_1
    return-void

    .line 2398
    :pswitch_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_follow_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2401
    :pswitch_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_unfollow_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2404
    :pswitch_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_5_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2407
    :pswitch_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_10_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2410
    :pswitch_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_15_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2413
    :pswitch_5
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_send_star_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2416
    :pswitch_6
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_send_chat_message_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2419
    :pswitch_7
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_three_days_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2422
    :pswitch_8
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_three_shows_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2425
    :pswitch_9
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_vote_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2436
    :cond_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_download_pop_dialog_download"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2437
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2438
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    goto/16 :goto_1

    .line 2440
    :cond_2
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->getCurrentQueueSize()I

    move-result v0

    .line 2441
    .local v0, "downloadTaskSize":I
    const-string v3, "LaifengLiveRoomActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog on download click[]>>>>> download task size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    if-lez v0, :cond_6

    .line 2443
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 2444
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->getCurrentQueue()Ljava/util/Set;

    move-result-object v2

    .line 2445
    .local v2, "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/laifeng/sdk/download/DownloadRequest;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 2446
    .local v1, "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v4

    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 2447
    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v4

    new-instance v5, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;

    iget-object v6, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadListener(Lcom/youku/laifeng/sdk/download/DownloadStatusListener;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 2449
    :cond_4
    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2450
    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->showSwitcherNext()V

    goto :goto_2

    .line 2454
    .end local v1    # "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .end local v2    # "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/laifeng/sdk/download/DownloadRequest;>;"
    :cond_5
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->cancelAll()V

    .line 2455
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    .line 2456
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2457
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->showSwitcherNext()V

    goto/16 :goto_1

    .line 2461
    :cond_6
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    .line 2462
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2463
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->showSwitcherNext()V

    goto/16 :goto_1

    .line 2396
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
