.class Lcom/youku/gamecenter/download/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/youku/gamecenter/download/DownloadNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/download/DownloadNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method generateID(Lcom/youku/gamecenter/download/DownloadInfo;)I
    .locals 1
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 18
    iget-object v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method generateNotification(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;)Landroid/app/Notification;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x8000000

    const/4 v8, 0x0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x1080081

    sget v4, Lcom/youku/gamecenter/R$string;->game_center_start_download_notification:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-direct {v1, v3, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 29
    .local v1, "notification":Landroid/app/Notification;
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/youku/gamecenter/R$layout;->game_center_download_notification:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 31
    .local v2, "remoteView":Landroid/widget/RemoteViews;
    sget v3, Lcom/youku/gamecenter/R$id;->game_center_progress_bar:I

    const/16 v4, 0x64

    iget v5, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 33
    sget v3, Lcom/youku/gamecenter/R$id;->game_center_progress_text:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 35
    sget v3, Lcom/youku/gamecenter/R$id;->game_center_title:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/youku/gamecenter/R$string;->game_center_download_notification_prefix:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 42
    iget v3, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v3, :cond_0

    .line 43
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/youku/gamecenter/GameManagerActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "source"

    const-string v5, "999"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 47
    iput v10, v1, Landroid/app/Notification;->flags:I

    .line 57
    :goto_0
    return-object v1

    .line 48
    :cond_0
    iget v3, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 49
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 51
    iput v10, v1, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 53
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 55
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method notifyContinue(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "id"    # I

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "appContext":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 71
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 72
    return-void
.end method

.method notifyPause(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "id"    # I

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "appContext":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 64
    .local v1, "noticicationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 65
    return-void
.end method
