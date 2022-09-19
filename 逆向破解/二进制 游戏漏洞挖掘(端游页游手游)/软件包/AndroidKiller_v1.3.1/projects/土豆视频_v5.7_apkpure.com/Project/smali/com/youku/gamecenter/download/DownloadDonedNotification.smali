.class Lcom/youku/gamecenter/download/DownloadDonedNotification;
.super Ljava/lang/Object;
.source "DownloadDonedNotification.java"


# direct methods
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
    .line 17
    iget-object v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method generateNotification(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;)Landroid/app/Notification;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v10, 0x10000000

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    .local v0, "appContext":Landroid/content/Context;
    iget-object v5, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/youku/gamecenter/util/SystemUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/app/Notification;

    const v5, 0x1080082

    sget v6, Lcom/youku/gamecenter/R$string;->game_center_start_download_done_notification:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-direct {v3, v5, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 31
    .local v3, "notification":Landroid/app/Notification;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/youku/gamecenter/R$layout;->game_center_download_doned_notification:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 33
    .local v4, "remoteView":Landroid/widget/RemoteViews;
    sget v5, Lcom/youku/gamecenter/R$id;->icon_img:I

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 34
    sget v5, Lcom/youku/gamecenter/R$id;->title_txt:I

    iget-object v6, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 35
    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 37
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.youku.appcenter.action.LAUNCH_APP_INSTALL_ACTION_TUDOU"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    const-string v5, "packagename"

    iget-object v6, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v5, "local_apk_url"

    iget-object v6, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v5, "game_id"

    iget-object v6, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget v5, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-static {v0, v5, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 44
    const/16 v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 46
    return-object v3
.end method
