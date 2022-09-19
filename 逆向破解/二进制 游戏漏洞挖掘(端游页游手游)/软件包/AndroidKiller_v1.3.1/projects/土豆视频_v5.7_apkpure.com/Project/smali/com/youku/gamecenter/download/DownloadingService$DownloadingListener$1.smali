.class Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->onProgressUpdate(Lcom/youku/gamecenter/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;

.field final synthetic val$info:Lcom/youku/gamecenter/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;->this$1:Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;->val$info:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1135
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;->val$info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 1136
    .local v2, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    if-nez v2, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v0, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1139
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v1, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    .line 1140
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_1

    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    iget v3, v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->mErrorCode:I

    if-gez v3, :cond_1

    .line 1142
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcom/youku/gamecenter/R$id;->game_center_progress_bar:I

    const/16 v5, 0x64

    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;->val$info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v6, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1145
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcom/youku/gamecenter/R$id;->game_center_progress_text:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;->val$info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v6, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1149
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;->this$1:Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;

    iget-object v3, v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadingService;->access$600(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener$1;->val$info:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1152
    :cond_1
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressUpdate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
