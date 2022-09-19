.class Lcom/mobisage/android/MobiSageApkService$Downloader;
.super Ljava/lang/Object;
.source "MobiSageApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Downloader"
.end annotation


# static fields
.field public static final DL_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/mobisage/android/MobiSageApkService$Downloader;",
            ">;"
        }
    .end annotation
.end field

.field static context:Landroid/content/Context;


# instance fields
.field public cancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageApkService$Downloader;->DL_MAP:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageApkService$Downloader;->cancel:Z

    return-void
.end method

.method public static cancel(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    sget-object v1, Lcom/mobisage/android/MobiSageApkService$Downloader;->DL_MAP:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageApkService$Downloader;

    .line 275
    .local v0, "download":Lcom/mobisage/android/MobiSageApkService$Downloader;
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobisage/android/MobiSageApkService$Downloader;->cancel:Z

    .line 277
    invoke-static {p0}, Lcom/mobisage/android/MobiSageApkService$Downloader;->cancelDownloadNotification(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public static cancelDownloadNotification(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v1, Lcom/mobisage/android/MobiSageApkService$Downloader;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 291
    sget-object v1, Lcom/mobisage/android/MobiSageApkService$Downloader;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 293
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 295
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/net/URL;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    sput-object p0, Lcom/mobisage/android/MobiSageApkService$Downloader;->context:Landroid/content/Context;

    .line 284
    new-instance v0, Lcom/mobisage/android/MobiSageApkService$Downloader;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageApkService$Downloader;-><init>()V

    .line 285
    .local v0, "download":Lcom/mobisage/android/MobiSageApkService$Downloader;
    sget-object v1, Lcom/mobisage/android/MobiSageApkService$Downloader;->DL_MAP:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v0, p1, p2, p3}, Lcom/mobisage/android/MobiSageApkService$Downloader;->start(Ljava/lang/String;Ljava/io/File;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized sendDownloadNotification(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "pos"    # I
    .param p5, "size"    # Ljava/lang/String;

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/mobisage/android/MobiSageApkService$Downloader;->context:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 301
    sget-object v4, Lcom/mobisage/android/MobiSageApkService$Downloader;->context:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .local v1, "nm":Landroid/app/NotificationManager;
    const/16 v4, 0x64

    if-ne p4, v4, :cond_0

    .line 307
    :cond_0
    if-nez p1, :cond_1

    .line 309
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 311
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p2}, Lcom/mobisage/android/MobiSageHtmlUtility;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    sget-object v4, Lcom/mobisage/android/MobiSageApkService$Downloader;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 318
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    :try_start_2
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 320
    .local v2, "notification":Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 324
    const v4, 0x1080081

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u6587\u4ef6\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 326
    sget-object v4, Lcom/mobisage/android/MobiSageApkService$Downloader;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6587\u4ef6\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6587\u4ef6\u5927\u5c0f: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u4e0b\u8f7d\u8fdb\u5ea6: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 328
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "notification":Landroid/app/Notification;
    :cond_2
    monitor-exit p0

    return-object p1

    .line 300
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 315
    .restart local v1    # "nm":Landroid/app/NotificationManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Ljava/io/File;Ljava/net/URL;)Ljava/lang/String;
    .locals 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    const/4 v2, 0x0

    .line 377
    :goto_0
    return-object v2

    .line 338
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 339
    .local v9, "conn":Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentLength()I

    move-result v18

    .line 340
    .local v18, "size":I
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 341
    .local v11, "in":Ljava/io/InputStream;
    const-string v10, "MB"

    .line 342
    .local v10, "dw":Ljava/lang/String;
    move/from16 v0, v18

    int-to-double v4, v0

    const-wide/high16 v20, 0x4090000000000000L    # 1024.0

    div-double v4, v4, v20

    const-wide/high16 v20, 0x4090000000000000L    # 1024.0

    div-double v12, v4, v20

    .line 343
    .local v12, "fs":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v12, v4

    if-gez v2, :cond_1

    .line 344
    move/from16 v0, v18

    int-to-double v4, v0

    const-wide/high16 v20, 0x4090000000000000L    # 1024.0

    div-double v12, v4, v20

    .line 345
    const-string v10, "KB"

    .line 346
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v12, v4

    if-gez v2, :cond_1

    .line 347
    move/from16 v0, v18

    int-to-double v12, v0

    .line 348
    const-string v10, "B"

    .line 351
    :cond_1
    const-string v2, "%.2f %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "fsize":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 353
    const/4 v2, 0x0

    goto :goto_0

    .line 354
    :cond_2
    const/16 v2, 0x1000

    new-array v8, v2, [B

    .line 355
    .local v8, "buf":[B
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/mobisage/android/MobiSageApkService$Downloader;->sendDownloadNotification(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 358
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 360
    .local v16, "out":Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 361
    .local v17, "read":I
    const/4 v15, 0x0

    .line 363
    .local v15, "o":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mobisage/android/MobiSageApkService$Downloader;->cancel:Z

    if-nez v2, :cond_4

    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "len":I
    if-lez v14, :cond_4

    .line 364
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v2, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 365
    add-int v17, v17, v14

    .line 366
    mul-int/lit8 v2, v17, 0x64

    div-int v6, v2, v18

    .line 367
    .local v6, "n":I
    if-eq v15, v6, :cond_3

    .line 368
    move v15, v6

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 369
    invoke-virtual/range {v2 .. v7}, Lcom/mobisage/android/MobiSageApkService$Downloader;->sendDownloadNotification(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;)Landroid/app/PendingIntent;

    goto :goto_1

    .line 372
    .end local v6    # "n":I
    .end local v14    # "len":I
    :cond_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 373
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 374
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mobisage/android/MobiSageApkService$Downloader;->cancel:Z

    if-eqz v2, :cond_5

    .line 375
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 377
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
