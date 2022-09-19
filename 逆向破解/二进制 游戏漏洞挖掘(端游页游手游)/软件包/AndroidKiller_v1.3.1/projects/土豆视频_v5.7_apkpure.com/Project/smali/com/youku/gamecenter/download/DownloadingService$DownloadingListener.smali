.class Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 12
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    .line 1160
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 1161
    .local v2, "downloadTask":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    if-eqz v2, :cond_4

    .line 1162
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    .line 1163
    iget-object v1, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1164
    .local v1, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    .line 1165
    .local v3, "notification":Landroid/app/Notification;
    if-eqz v3, :cond_0

    .line 1166
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v7, Lcom/youku/gamecenter/R$id;->game_center_progress_text:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1169
    :cond_0
    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v6, :cond_1

    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v6}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1171
    :cond_1
    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v6}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-wide v8, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/youku/gamecenter/download/SQLManager;->updateEnd(Ljava/lang/String;J)V

    .line 1173
    const-string v6, "48"

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1174
    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mEndTrack:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$2600(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    .line 1181
    :cond_2
    :goto_0
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDownloadEnd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 1184
    .local v5, "serviceMessage":Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->what:I

    .line 1185
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1186
    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v6}, Lcom/youku/gamecenter/download/DownloadingService;->access$2900(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1188
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1189
    .local v0, "clientMessage":Landroid/os/Message;
    iput v11, v0, Landroid/os/Message;->what:I

    .line 1190
    invoke-static {v0, v1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 1193
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v6

    if-eqz v6, :cond_3

    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eq v6, v10, :cond_3

    .line 1195
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v6}, Lcom/youku/gamecenter/download/DownloadingService;->access$400(Lcom/youku/gamecenter/download/DownloadingService;)V

    .line 1203
    .end local v0    # "clientMessage":Landroid/os/Message;
    .end local v1    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v5    # "serviceMessage":Landroid/os/Message;
    :cond_4
    return-void

    .line 1176
    .restart local v1    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .restart local v3    # "notification":Landroid/app/Notification;
    :cond_5
    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v6, v10, :cond_2

    .line 1177
    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v6}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v8, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/youku/gamecenter/download/SQLManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mEndTrack:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$2600(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    goto :goto_0

    .line 1196
    .restart local v0    # "clientMessage":Landroid/os/Message;
    .restart local v5    # "serviceMessage":Landroid/os/Message;
    :catch_0
    move-exception v4

    .line 1197
    .local v4, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDownloadFailed(ILjava/lang/Exception;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1208
    return-void
.end method

.method public onDownloadPending(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1213
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1217
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1218
    .local v0, "clientMessage":Landroid/os/Message;
    const/16 v2, 0x12

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1219
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v2}, Lcom/youku/gamecenter/download/DownloadingService;->access$2700(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadNotification;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/youku/gamecenter/download/DownloadNotification;->generateID(Lcom/youku/gamecenter/download/DownloadInfo;)I

    move-result v2

    iput v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    .line 1220
    invoke-static {v0, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 1223
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1224
    :catch_0
    move-exception v1

    .line 1225
    .local v1, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDownloadStart(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1100
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v3}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/youku/gamecenter/download/SQLManager;->insertToDB(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v0

    .line 1101
    .local v0, "inserted":Z
    if-nez v0, :cond_0

    .line 1103
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v3}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/youku/gamecenter/download/SQLManager;->updatePauseState(Ljava/lang/String;I)V

    .line 1107
    :cond_0
    if-eqz v0, :cond_1

    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    :cond_1
    const-string v3, "48"

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1108
    :cond_2
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStartTrack:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$2600(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    .line 1110
    :cond_3
    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1127
    :cond_4
    :goto_0
    return-void

    .line 1114
    :cond_5
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadingService;->access$2700(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadNotification;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/youku/gamecenter/download/DownloadNotification;->generateNotification(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v1

    .line 1116
    .local v1, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 1117
    .local v2, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    if-eqz v2, :cond_7

    .line 1118
    iput-object v1, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    .line 1122
    :goto_1
    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v3, :cond_6

    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 1124
    :cond_6
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v3, p1, v2}, Lcom/youku/gamecenter/download/DownloadingService;->access$2800(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;)V

    .line 1125
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadingService;->access$600(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1120
    :cond_7
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDownloadStart null task"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onProgressUpdate(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadingService;->access$2900(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;-><init>(Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;Lcom/youku/gamecenter/download/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1155
    return-void
.end method
