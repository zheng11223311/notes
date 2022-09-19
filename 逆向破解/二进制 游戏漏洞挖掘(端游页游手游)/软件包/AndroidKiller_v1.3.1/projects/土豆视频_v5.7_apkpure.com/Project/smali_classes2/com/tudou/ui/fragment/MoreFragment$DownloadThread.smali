.class public Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;
.super Ljava/lang/Thread;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadThread"
.end annotation


# static fields
.field private static sDownloadThread:Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1308
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1309
    return-void
.end method

.method public static Destroy()V
    .locals 1

    .prologue
    .line 1319
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->sDownloadThread:Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    if-eqz v0, :cond_0

    .line 1320
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->isDownloading:Z

    .line 1321
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->sDownloadThread:Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->interrupt()V

    .line 1322
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->sDownloadThread:Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    .line 1324
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;
    .locals 1

    .prologue
    .line 1312
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->sDownloadThread:Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    if-nez v0, :cond_0

    .line 1313
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;-><init>()V

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->sDownloadThread:Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    .line 1315
    :cond_0
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->sDownloadThread:Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 1340
    const-string v20, "TAG_TUDOU"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u4e0b\u8f7d\u5b89\u88c5\u5305========"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v19, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v19, :cond_4

    const-string v19, "\u524d\u53f0\u4e0b\u8f7d"

    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const/4 v11, 0x0

    .line 1345
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$2300()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v14, "myUrl":Ljava/net/URL;
    sget-boolean v19, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v19, :cond_0

    .line 1347
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    if-nez v19, :cond_0

    .line 1348
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3100()V

    .line 1351
    :cond_0
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 1353
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1354
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1355
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 1357
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1360
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 1361
    .local v12, "len":I
    const/4 v6, 0x0

    .line 1364
    .local v6, "downloadCount":I
    if-eqz v11, :cond_9

    .line 1372
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->createNewApkFile()Ljava/io/File;

    move-result-object v8

    .line 1380
    .local v8, "file":Ljava/io/File;
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v19, "rwd"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1382
    .local v18, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v13, -0x1

    .line 1383
    .local v13, "length":I
    invoke-static {v12}, Lcom/tudou/ui/fragment/MoreFragment;->access$3202(I)I

    .line 1384
    int-to-long v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/tudou/ui/fragment/MoreFragment;->access$3302(J)J

    .line 1385
    :cond_1
    :goto_1
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3400()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_6

    .line 1386
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3400()[B

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1387
    invoke-static {v13}, Lcom/tudou/ui/fragment/MoreFragment;->access$3512(I)I

    .line 1388
    if-eqz v6, :cond_2

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3500()I

    move-result v19

    mul-int/lit8 v19, v19, 0x64

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3200()I

    move-result v20

    div-int v19, v19, v20

    add-int/lit8 v19, v19, -0x5

    move/from16 v0, v19

    if-gt v0, v6, :cond_2

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v6, v0, :cond_1

    .line 1391
    :cond_2
    add-int/lit8 v6, v6, 0x5

    .line 1392
    sget-boolean v19, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v19, :cond_1

    .line 1393
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    if-nez v19, :cond_3

    .line 1394
    const-string v19, "TAG_TUDOU"

    const-string v20, "mNotificationManager\u4e3a\u7a7a========\u521b\u5efa"

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3100()V

    .line 1398
    :cond_3
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1399
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v19, v0

    const v20, 0x7f0c0b16

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3200()I

    move-result v21

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3500()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1402
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v19, v0

    const v20, 0x7f0c0b14

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u5df2\u4e0b\u8f7d:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3500()I

    move-result v22

    mul-int/lit8 v22, v22, 0x64

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3200()I

    move-result v23

    div-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1409
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1410
    .local v9, "i":Landroid/content/Intent;
    sget-object v19, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const/16 v20, 0x1

    const/high16 v21, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 1413
    .local v17, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1414
    sget-boolean v19, Lcom/tudou/android/Youku;->sPageStillExist:Z

    if-eqz v19, :cond_5

    .line 1415
    const-string v19, "TAG_TUDOU"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u53d1\u9001\u901a\u77e5\u5df2\u4e0b\u8f7d:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3500()I

    move-result v21

    mul-int/lit8 v21, v21, 0x64

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3200()I

    move-result v22

    div-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1456
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "downloadCount":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "i":Landroid/content/Intent;
    .end local v12    # "len":I
    .end local v13    # "length":I
    .end local v14    # "myUrl":Ljava/net/URL;
    .end local v17    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v7

    .line 1458
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v20, "TAG_TUDOU"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u4e0b\u8f7d\u51fa\u9519========\u539f\u56e0\u662f\uff1a"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v7, :cond_a

    const-string v19, "\u539f\u56e0\u672a\u77e5"

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$2200()Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;J)V

    .line 1461
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/tudou/ui/fragment/MoreFragment;->access$3502(I)I

    .line 1463
    sget-boolean v19, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v19, :cond_b

    .line 1491
    const-string v19, "TAG_TUDOU"

    const-string v20, "\u6e05\u9664\u76f8\u5173\u7ebf\u7a0b\u4fe1\u606f"

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->Destroy()V

    .line 1493
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/tudou/ui/fragment/MoreFragment;->access$3002(Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 1495
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 1340
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_4
    const-string v19, "\u540e\u53f0\u4e0b\u8f7d"

    goto/16 :goto_0

    .line 1420
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "downloadCount":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "i":Landroid/content/Intent;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "len":I
    .restart local v13    # "length":I
    .restart local v14    # "myUrl":Ljava/net/URL;
    .restart local v17    # "pi":Landroid/app/PendingIntent;
    .restart local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_5
    :try_start_2
    const-string v19, "TAG_TUDOU"

    const-string v20, "\u9996\u9875\u4e0d\u5b58\u5728\uff0c\u5220\u9664\u901a\u77e5\u680f"

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1491
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "downloadCount":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "i":Landroid/content/Intent;
    .end local v12    # "len":I
    .end local v13    # "length":I
    .end local v14    # "myUrl":Ljava/net/URL;
    .end local v17    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v19

    const-string v20, "TAG_TUDOU"

    const-string v21, "\u6e05\u9664\u76f8\u5173\u7ebf\u7a0b\u4fe1\u606f"

    invoke-static/range {v20 .. v21}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->Destroy()V

    .line 1493
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/tudou/ui/fragment/MoreFragment;->access$3002(Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    throw v19

    .line 1426
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "downloadCount":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v12    # "len":I
    .restart local v13    # "length":I
    .restart local v14    # "myUrl":Ljava/net/URL;
    .restart local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_6
    :try_start_3
    sget-boolean v19, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v19, :cond_7

    .line 1427
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v19, v0

    const v20, 0x7f0c0b16

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3200()I

    move-result v21

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3200()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1429
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v19, v0

    const v20, 0x7f0c0b12

    sget-object v21, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v22, 0x7f0d0089

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1432
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v19, v0

    const v20, 0x7f0c0b14

    const-string v21, "\u5df2\u4e0b\u8f7d:100%"

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1435
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1436
    .restart local v9    # "i":Landroid/content/Intent;
    sget-object v19, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const/16 v20, 0x1

    const/high16 v21, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 1440
    .restart local v17    # "pi":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1441
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1445
    .end local v9    # "i":Landroid/content/Intent;
    .end local v17    # "pi":Landroid/app/PendingIntent;
    :cond_7
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/tudou/ui/fragment/MoreFragment;->access$3502(I)I

    .line 1446
    const-string v19, "TAG_TUDOU"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u66f4\u65b0\u5305\u4e0b\u8f7d\u6210\u529f======vertion===="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$2200()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$2200()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3300()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;J)V

    .line 1449
    sget-boolean v19, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v19, :cond_8

    .line 1450
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->installApk()V

    .line 1453
    :cond_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1454
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1491
    .end local v8    # "file":Ljava/io/File;
    .end local v13    # "length":I
    .end local v18    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_9
    const-string v19, "TAG_TUDOU"

    const-string v20, "\u6e05\u9664\u76f8\u5173\u7ebf\u7a0b\u4fe1\u606f"

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->Destroy()V

    .line 1493
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/tudou/ui/fragment/MoreFragment;->access$3002(Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    goto/16 :goto_3

    .line 1458
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "downloadCount":I
    .end local v12    # "len":I
    .end local v14    # "myUrl":Ljava/net/URL;
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 1467
    :cond_b
    const v10, 0x7f020435

    .line 1468
    .local v10, "icon":I
    new-instance v19, Landroid/app/Notification;

    sget-object v20, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v21, 0x7f0d0086

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v10, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-static/range {v19 .. v19}, Lcom/tudou/ui/fragment/MoreFragment;->access$3602(Landroid/app/Notification;)Landroid/app/Notification;

    .line 1471
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1472
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    sget-object v20, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v21, 0x7f0d0086

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1474
    new-instance v15, Landroid/content/Intent;

    sget-object v19, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v20, Lcom/tudou/ui/fragment/MoreFragment;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1476
    .local v15, "notificationIntent":Landroid/content/Intent;
    sget-object v19, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const/16 v20, 0x0

    const/high16 v21, 0x10000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1479
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v19

    sget-object v20, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    sget-object v21, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v22, 0x7f0d0086

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v23, 0x7f0d0087

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1483
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    if-nez v19, :cond_c

    .line 1484
    const-string v16, "notification"

    .line 1485
    .local v16, "ns":Ljava/lang/String;
    sget-object v19, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    invoke-static/range {v19 .. v19}, Lcom/tudou/ui/fragment/MoreFragment;->access$3002(Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 1488
    .end local v16    # "ns":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3000()Landroid/app/NotificationManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$3600()Landroid/app/Notification;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1491
    const-string v19, "TAG_TUDOU"

    const-string v20, "\u6e05\u9664\u76f8\u5173\u7ebf\u7a0b\u4fe1\u606f"

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->Destroy()V

    .line 1493
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/tudou/ui/fragment/MoreFragment;->access$3002(Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    goto/16 :goto_3
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 1330
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->isDownloading:Z

    .line 1331
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    monitor-exit p0

    return-void

    .line 1330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
