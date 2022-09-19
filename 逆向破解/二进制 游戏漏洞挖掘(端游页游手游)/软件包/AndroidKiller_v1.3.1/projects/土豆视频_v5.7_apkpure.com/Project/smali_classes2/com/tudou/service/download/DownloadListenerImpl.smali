.class public Lcom/tudou/service/download/DownloadListenerImpl;
.super Ljava/lang/Object;
.source "DownloadListenerImpl.java"

# interfaces
.implements Lcom/tudou/service/download/DownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadListenerImpl"

.field public static context:Landroid/content/Context; = null

.field private static needChange:Z = false

.field public static nm:Landroid/app/NotificationManager; = null

.field private static final pageName:Ljava/lang/String; = "\u7f13\u5b58\u6a21\u5757"

.field private static videoId:Ljava/lang/String;

.field public static wakeLock:Landroid/os/PowerManager$WakeLock;

.field public static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# instance fields
.field public download:Lcom/tudou/service/download/DownloadServiceManager;

.field private info:Lcom/tudou/service/download/DownloadInfo;

.field private progress_temp:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/service/download/DownloadListenerImpl;->needChange:Z

    .line 337
    const-string v0, ""

    sput-object v0, Lcom/tudou/service/download/DownloadListenerImpl;->videoId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->progress_temp:D

    .line 56
    sput-object p1, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    .line 58
    invoke-static {}, Lcom/tudou/service/download/DownloadServiceManager;->getInstance()Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    .line 59
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->nm:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 60
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sput-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->nm:Landroid/app/NotificationManager;

    .line 62
    :cond_0
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_1

    .line 63
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 67
    :cond_1
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    .line 68
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 70
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "mywakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    return-void
.end method

.method private changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 340
    iget-object v0, p1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private static createNotification(Landroid/content/Context;Lcom/tudou/service/download/DownloadInfo;)Landroid/app/Notification;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 347
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 348
    .local v1, "n":Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/CacheActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "cache_tab"

    const-string v3, "caching_tab"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "go"

    const-string v3, "downloading"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v2, "isNotification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    sput-object v2, Lcom/tudou/service/download/DownloadListenerImpl;->videoId:Ljava/lang/String;

    .line 353
    const-string v2, "videoId"

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const/4 v2, 0x4

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 356
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030249

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 357
    return-object v1
.end method

.method private release()V
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/tudou/service/download/DownloadListenerImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/service/download/DownloadListenerImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/tudou/service/download/DownloadListenerImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 363
    :cond_0
    sget-object v0, Lcom/tudou/service/download/DownloadListenerImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tudou/service/download/DownloadListenerImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    sget-object v0, Lcom/tudou/service/download/DownloadListenerImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 365
    :cond_1
    return-void
.end method

.method public static updateNotification(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "barText"    # Ljava/lang/String;
    .param p2, "notify_state"    # Ljava/lang/String;
    .param p3, "playSound"    # Z
    .param p4, "iconRunning"    # Z

    .prologue
    .line 277
    iget-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->notification:Landroid/app/Notification;

    if-nez v5, :cond_0

    .line 278
    sget-object v5, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/tudou/service/download/DownloadListenerImpl;->createNotification(Landroid/content/Context;Lcom/tudou/service/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->notification:Landroid/app/Notification;

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->notification:Landroid/app/Notification;

    .line 281
    .local v3, "n":Landroid/app/Notification;
    if-eqz p4, :cond_6

    const v5, 0x7f020435

    :goto_0
    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 282
    if-eqz p3, :cond_7

    const/16 v5, 0x10

    :goto_1
    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 284
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/tudou/service/download/DownloadServiceManager;->getInstance()Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadServiceManager;->noDisturb()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 286
    .local v4, "t":Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 287
    iget v1, v4, Landroid/text/format/Time;->hour:I

    .line 288
    .local v1, "hour":I
    const/16 v5, 0x16

    if-ge v1, v5, :cond_1

    const/16 v5, 0x8

    if-gt v1, v5, :cond_2

    .line 289
    :cond_1
    const/4 p3, 0x0

    .line 291
    .end local v1    # "hour":I
    .end local v4    # "t":Landroid/text/format/Time;
    :cond_2
    if-eqz p3, :cond_8

    const/4 v5, 0x1

    :goto_2
    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 292
    iput-object p1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 293
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f0c0b10

    if-eqz p4, :cond_9

    const v5, 0x7f0203ee

    :goto_3
    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 295
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f0c0b12

    iget-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    :goto_4
    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 297
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0c0b14

    invoke-virtual {v5, v6, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 298
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f0c0b16

    const/16 v8, 0x64

    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v9

    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v10, 0x5

    if-eq v5, v10, :cond_3

    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v10, 0x3

    if-eq v5, v10, :cond_3

    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_b

    :cond_3
    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 305
    iget-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    sget-object v6, Lcom/tudou/service/download/DownloadListenerImpl;->videoId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 306
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tudou/service/download/DownloadListenerImpl;->needChange:Z

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 309
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0c0b16

    const/16 v7, 0x64

    const/16 v8, 0x64

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 311
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    const-class v6, Lcom/tudou/ui/activity/CacheActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v2, "i":Landroid/content/Intent;
    sget-object v5, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    const/4 v6, 0x4

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 315
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tudou/service/download/DownloadListenerImpl;->needChange:Z

    .line 328
    .end local v2    # "i":Landroid/content/Intent;
    :cond_5
    :goto_6
    const-string v5, "download_last_notify_taskid"

    iget-object v6, p0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :try_start_0
    sget-object v5, Lcom/tudou/service/download/DownloadListenerImpl;->nm:Landroid/app/NotificationManager;

    const/16 v6, 0x1700

    invoke-virtual {v5, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_7
    return-void

    .line 281
    :cond_6
    const v5, 0x7f020435

    goto/16 :goto_0

    .line 282
    :cond_7
    const/16 v5, 0x20

    goto/16 :goto_1

    .line 291
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 293
    :cond_9
    const v5, 0x7f0203ee

    goto/16 :goto_3

    .line 295
    :cond_a
    iget-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    goto/16 :goto_4

    .line 298
    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    .line 317
    :cond_c
    sget-boolean v5, Lcom/tudou/service/download/DownloadListenerImpl;->needChange:Z

    if-eqz v5, :cond_5

    .line 318
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    const-class v6, Lcom/tudou/ui/activity/CacheActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v5, "isNotification"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v5, "cache_tab"

    const-string v6, "caching_tab"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    iget-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    sput-object v5, Lcom/tudou/service/download/DownloadListenerImpl;->videoId:Ljava/lang/String;

    .line 322
    const-string v5, "videoId"

    iget-object v6, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    sget-object v5, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    const/4 v6, 0x4

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 325
    const/4 v5, 0x0

    sput-boolean v5, Lcom/tudou/service/download/DownloadListenerImpl;->needChange:Z

    goto :goto_6

    .line 331
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DownloadListenerImpl"

    const-string v6, "nm.notify"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public onCancel()V
    .locals 8

    .prologue
    .line 226
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 228
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 231
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v6, v6, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/tudou/service/download/ICallback;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DownloadListenerImpl"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onException()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 135
    const-string v1, "DownloadListenerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onException \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v3}, Lcom/tudou/service/download/DownloadListenerImpl;->changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 140
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v6, v6, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 143
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b49\u5f85\u7f13\u5b58"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v3}, Lcom/tudou/service/download/DownloadListenerImpl;->changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7b49\u5f85\u4e2d..."

    invoke-static {v1, v2, v3, v8, v8}, Lcom/tudou/service/download/DownloadListenerImpl;->updateNotification(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 149
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tudou.service.download.ACTION_DOWNLOAD_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    const-string v1, "\u7f13\u5b58\u9875\u7f13\u5b58\u89c6\u9891\u51fa\u9519"

    const-class v2, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u89c6\u9891\u51fa\u9519"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/tudou/service/download/ICallback;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadListenerImpl;->release()V

    .line 161
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 166
    :cond_3
    :goto_1
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DownloadListenerImpl"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 10

    .prologue
    .line 172
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v2, v2, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v2, v2, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v2}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 174
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v4, v2, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v8, v3, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u300a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v3, v3, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300b\u5df2\u7f13\u5b58\u5b8c\u6210"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v4}, Lcom/tudou/service/download/DownloadListenerImpl;->changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u5b8c\u6210"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u5b8c\u6210"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tudou/service/download/DownloadListenerImpl;->updateNotification(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    .line 182
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 183
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v2, v2, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    const-string v3, "curdownloadinfo"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    const-string v2, "curdownloadinfo"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "showid"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v3, v3, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    sget-object v2, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-interface {v2, v3}, Lcom/tudou/service/download/ICallback;->onFinish(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadListenerImpl;->release()V

    .line 196
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    .line 197
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DownloadListenerImpl"

    invoke-static {v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPause(Z)V
    .locals 9
    .param p1, "start"    # Z

    .prologue
    const/4 v8, 0x0

    .line 104
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 106
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v6, v6, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 109
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iput v8, v1, Lcom/tudou/service/download/DownloadInfo;->retry:I

    .line 110
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 111
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v3}, Lcom/tudou/service/download/DownloadListenerImpl;->changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u6682\u505c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6682\u505c\u4e2d"

    invoke-static {v1, v2, v3, v8, v8}, Lcom/tudou/service/download/DownloadListenerImpl;->updateNotification(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    const-string v2, "curdownloadinfo"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "firstToCache"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const-string v1, "curdownloadinfo"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/tudou/service/download/ICallback;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadListenerImpl;->release()V

    .line 131
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DownloadListenerImpl"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onProgressChange(D)V
    .locals 7
    .param p1, "progress"    # D

    .prologue
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "time":J
    iget-wide v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->progress_temp:D

    sub-double v2, p1, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u7f13\u5b58"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v4}, Lcom/tudou/service/download/DownloadListenerImpl;->changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f13\u5b58\u4e2d... - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v5}, Lcom/tudou/service/download/DownloadUtils;->getProgress(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tudou/service/download/DownloadListenerImpl;->updateNotification(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 209
    :cond_0
    iput-wide p1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->progress_temp:D

    .line 210
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-interface {v2, v3}, Lcom/tudou/service/download/ICallback;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 80
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u7f13\u5b58"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v3}, Lcom/tudou/service/download/DownloadListenerImpl;->changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f13\u5b58\u4e2d... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v4}, Lcom/tudou/service/download/DownloadUtils;->getProgress(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Lcom/tudou/service/download/DownloadListenerImpl;->updateNotification(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 82
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    .line 83
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iput-object v6, v1, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iput-object v6, v1, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v1, v5}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 86
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 87
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tudou.service.download.ACTION_DOWNLOAD_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 90
    :cond_0
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lcom/tudou/service/download/DownloadListenerImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 93
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/tudou/service/download/ICallback;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_2
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DownloadListenerImpl"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onWaiting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 247
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 249
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    iget-wide v6, v6, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 252
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b49\u5f85\u7f13\u5b58"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0, v3}, Lcom/tudou/service/download/DownloadListenerImpl;->changTitle(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7b49\u5f85\u4e2d..."

    invoke-static {v1, v2, v3, v8, v8}, Lcom/tudou/service/download/DownloadListenerImpl;->updateNotification(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/tudou/service/download/DownloadListenerImpl;->download:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/download/DownloadListenerImpl;->info:Lcom/tudou/service/download/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/tudou/service/download/ICallback;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadListenerImpl;->release()V

    .line 263
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DownloadListenerImpl"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
