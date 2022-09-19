.class Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;
.super Landroid/os/Handler;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 693
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 730
    :goto_0
    return-void

    .line 695
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 696
    .local v6, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v0, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v0, v2, :cond_0

    .line 697
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v0, v6}, Lcom/youku/gamecenter/download/DownloadingService;->sendSilentTrackEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_0

    .line 700
    :cond_0
    iget v0, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v0, v6}, Lcom/youku/gamecenter/download/DownloadingService;->sendGameSilentTrackEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_0

    .line 706
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v0, v6}, Lcom/youku/gamecenter/download/DownloadingService;->removeNotification(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 707
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/download/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 708
    .local v8, "noticicationManager":Landroid/app/NotificationManager;
    new-instance v0, Lcom/youku/gamecenter/download/DownloadDonedNotification;

    invoke-direct {v0}, Lcom/youku/gamecenter/download/DownloadDonedNotification;-><init>()V

    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/youku/gamecenter/download/DownloadDonedNotification;->generateNotification(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v9

    .line 711
    .local v9, "notification":Landroid/app/Notification;
    const/16 v0, 0x10

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 712
    iget v0, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 715
    iget v0, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v0, :cond_3

    iget v0, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v0, v6}, Lcom/youku/gamecenter/download/DownloadingService;->access$2200(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 718
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v0, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    .local v1, "file":Ljava/io/File;
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v2, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$700(Lcom/youku/gamecenter/download/DownloadingService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadingService;->access$800(Lcom/youku/gamecenter/download/DownloadingService;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->handleAppInstallPageInDownloadProcess(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 721
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%1$10s downloaded. Saved to: %2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 725
    .end local v1    # "file":Ljava/io/File;
    .end local v8    # "noticicationManager":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v7

    .line 726
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not install. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
