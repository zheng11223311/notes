.class public Lcom/mobisage/android/MobiSageApkService;
.super Landroid/app/Service;
.source "MobiSageApkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageApkService$Downloader;
    }
.end annotation


# static fields
.field static final Apk_Already_Download:I = 0x6

.field static final Cancel_Apk_Download:I = 0x1

.field static final Finish_Sys_Download:I = 0x4

.field static final Finsih_Apk_Download:I = 0x3

.field static final MSG_APK_UNAVALIABLE_ERRO:I = 0x8

.field static final MSG_DOWNLOADDING:I = 0xc

.field static final MSG_DOWNLOADER_ERRO:I = 0x7

.field static final MSG_NETWORK_UNAVALIABLE_ERRO:I = 0x9

.field static final MSG_NO_NETWORK:I = 0xb

.field static final MSG_SD_NOSPACE_ERRO:I = 0xa

.field static final Retry_Apk_Download:I = 0x2

.field static final Start_Apk_Download:I = 0x0

.field static final Start_Download:I = 0x5

.field static downloadingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static flag:I

.field private static messageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mobisage/android/MobiSageApkMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/mobisage/android/MobiSageApkMessage;",
            ">;"
        }
    .end annotation
.end field

.field static retryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field static retryTimesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static runnable:Lcom/mobisage/android/MobiSageApkRunnable;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageApkService;->retryTimesMap:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/mobisage/android/MobiSageApkService;->flag:I

    .line 382
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 383
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageApkService;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Lcom/mobisage/android/MobiSageApkService$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageApkService$1;-><init>(Lcom/mobisage/android/MobiSageApkService;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/mobisage/android/MobiSageApkService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageApkService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mobisage/android/MobiSageApkService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageApkService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageApkService;->toStartDownLoaderTask(Landroid/os/Bundle;)V

    return-void
.end method

.method private checkApk(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 798
    const/4 v3, 0x0

    .line 800
    .local v3, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageApkService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 801
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 803
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 804
    const/4 v3, 0x1

    .line 809
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getRemoteApkSize(Ljava/lang/String;)J
    .locals 5
    .param p0, "downLoadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    const-wide/16 v2, -0x1

    .line 855
    .local v2, "fileSize":J
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 856
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 857
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 858
    .local v0, "conn":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 859
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    int-to-long v2, v4

    .line 861
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    return-wide v2
.end method

.method public static getSdAvailableSize()J
    .locals 10

    .prologue
    .line 870
    const-wide/16 v4, -0x1

    .line 871
    .local v4, "sdAvaliableSize":J
    const-string v7, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 873
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 875
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 876
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 877
    .local v0, "avaliableBlocks":J
    mul-long v4, v2, v0

    .line 878
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_0

    .line 879
    const-wide/16 v4, 0x1

    .line 882
    .end local v0    # "avaliableBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :cond_0
    return-wide v4
.end method

.method public static isConnect(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "isConnected":Z
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 897
    .local v2, "manager":Landroid/net/ConnectivityManager;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 898
    .local v5, "wifi":Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_0

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_1

    .line 899
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 910
    .end local v0    # "isConnected":Z
    .local v1, "isConnected":I
    :goto_0
    return v1

    .line 901
    .end local v1    # "isConnected":I
    .restart local v0    # "isConnected":Z
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 903
    .local v4, "mobileni":Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 904
    .local v3, "mobile":Landroid/net/NetworkInfo$State;
    if-eqz v4, :cond_2

    .line 905
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 907
    :cond_2
    if-eqz v3, :cond_4

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v6, :cond_3

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_4

    .line 908
    :cond_3
    const/4 v0, 0x1

    move v1, v0

    .restart local v1    # "isConnected":I
    goto :goto_0

    .end local v1    # "isConnected":I
    :cond_4
    move v1, v0

    .line 910
    .restart local v1    # "isConnected":I
    goto :goto_0
.end method

.method private processCancelApkDownload(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 587
    const-string v5, "did"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "did":Ljava/lang/String;
    sget-object v5, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 610
    :goto_0
    return-void

    .line 591
    :cond_0
    sget-object v5, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobisage/android/MobiSageApkMessage;

    .line 592
    .local v2, "message":Lcom/mobisage/android/MobiSageApkMessage;
    sget-object v5, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v5, Lcom/mobisage/android/MobiSageApkService;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 595
    sget-object v5, Lcom/mobisage/android/MobiSageApkService;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 604
    :goto_1
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 605
    .local v0, "context":Landroid/content/Context;
    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 607
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, v2, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 609
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageApkService;->schedulerApkDownload()V

    goto :goto_0

    .line 597
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    sget-object v5, Lcom/mobisage/android/MobiSageApkService;->runnable:Lcom/mobisage/android/MobiSageApkRunnable;

    if-eqz v5, :cond_2

    .line 598
    sget-object v5, Lcom/mobisage/android/MobiSageApkService;->runnable:Lcom/mobisage/android/MobiSageApkRunnable;

    invoke-virtual {v5}, Lcom/mobisage/android/MobiSageApkRunnable;->destoryRunnable()V

    .line 599
    const/4 v5, 0x0

    sput-object v5, Lcom/mobisage/android/MobiSageApkService;->runnable:Lcom/mobisage/android/MobiSageApkRunnable;

    .line 601
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/mobisage/android/MobiSageApkMessage;->tempURL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v4, "temp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private processDownload(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobisage/android/MobiSageApkService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/mobisage/android/MobiSageApkService$2;-><init>(Lcom/mobisage/android/MobiSageApkService;Landroid/os/Bundle;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method private processDownloadSysFinish(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 697
    const-string v17, "did"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 698
    .local v6, "downloadid":J
    new-instance v13, Landroid/app/DownloadManager$Query;

    invoke-direct {v13}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 699
    .local v13, "query":Landroid/app/DownloadManager$Query;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-wide v6, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 701
    const-string v17, "download"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    .line 703
    .local v5, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v5, v13}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 704
    .local v4, "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 707
    const-string/jumbo v17, "status"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 709
    .local v15, "status":I
    const-string/jumbo v17, "uri"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 712
    .local v16, "url":Ljava/lang/String;
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 716
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v15, v0, :cond_a

    .line 718
    const-string v17, "local_uri"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, "apkPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    .local v8, "file":Ljava/io/File;
    const/4 v12, 0x0

    .line 722
    .local v12, "pack":Ljava/lang/String;
    const/4 v10, 0x0

    .line 723
    .local v10, "lpg":Ljava/lang/String;
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 724
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/http/NameValuePair;

    .line 725
    .local v11, "nameValuePair":Lorg/apache/http/NameValuePair;
    invoke-interface {v11}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v12

    .line 726
    invoke-interface {v11}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 730
    .end local v11    # "nameValuePair":Lorg/apache/http/NameValuePair;
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 731
    const-string v17, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/mobisage/android/MobiSageApkService;->sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_3
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mobisage/android/MobiSageApkService;->checkApk(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 736
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 738
    const-string v17, "21"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/mobisage/android/MobiSageApkService;->sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_4
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 743
    .local v9, "intent":Landroid/content/Intent;
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const-string v18, "application/vnd.android.package-archive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 747
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mobisage/android/MobiSageApkService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 749
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v17, "YCW"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadingSet.contains(lpg)--->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";lines--->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2e1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 753
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 754
    const-string v17, "YCW"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadingSet.contains(lpg)--->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";lines--->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2ec

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 758
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-static/range {v17 .. v18}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 759
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 760
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 762
    :cond_7
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 763
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryTimesMap:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 764
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryTimesMap:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 765
    .local v14, "retryTimes":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 766
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryTimesMap:Ljava/util/Map;

    add-int/lit8 v18, v14, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 768
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v17, "lpg"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v17, "name"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v17, "pack"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mobisage/android/MobiSageApkService;->processStartApkDownload(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 773
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_8
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryTimesMap:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 777
    .end local v14    # "retryTimes":I
    :cond_9
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryTimesMap:Ljava/util/Map;

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 779
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v17, "lpg"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v17, "name"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v17, "pack"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mobisage/android/MobiSageApkService;->processStartApkDownload(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 791
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "lpg":Ljava/lang/String;
    .end local v12    # "pack":Ljava/lang/String;
    :cond_a
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 792
    sget-object v17, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    goto/16 :goto_0
.end method

.method private processDownloaded(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 176
    const-string v4, "lpg"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "lpg":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "lpg"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, "temp":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mobisage/android/MobiSageApkService;->readPackageFromApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mobisage/android/MobiSageApkService;->checkApk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    sget-object v4, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    sget-object v4, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    const-string v4, "21"

    invoke-direct {p0, v2, v4}, Lcom/mobisage/android/MobiSageApkService;->sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageApkService;->startActivity(Landroid/content/Intent;)V

    .line 198
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    sget-object v4, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 193
    iget-object v4, p0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private processFinsihApkDownload(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 613
    sget-object v14, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v15, "did"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 615
    .local v2, "context":Landroid/content/Context;
    const-string v14, "notification"

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 617
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    const-string v14, "did"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 681
    .end local v2    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 620
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    sget-object v14, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v15, "did"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mobisage/android/MobiSageApkMessage;

    .line 621
    .local v8, "message":Lcom/mobisage/android/MobiSageApkMessage;
    const-string v14, "ErrorText"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "StatusCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x190

    if-lt v14, v15, :cond_2

    .line 624
    :cond_1
    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    .line 625
    .restart local v2    # "context":Landroid/content/Context;
    const-string v14, "notification"

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 627
    .restart local v10    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v6, Landroid/content/Intent;

    const-class v14, Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {v6, v2, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .local v6, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 629
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v14, "did"

    iget-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v14, "action"

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    const-string v14, "ExtraData"

    invoke-virtual {v6, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 632
    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    invoke-static {v2, v14, v6, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 634
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 635
    .local v9, "notification":Landroid/app/Notification;
    const/16 v14, 0x10

    iput v14, v9, Landroid/app/Notification;->flags:I

    .line 636
    iget-object v14, v8, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    iput-object v14, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 637
    const v14, 0x1080078

    iput v14, v9, Landroid/app/Notification;->icon:I

    .line 638
    iget-object v14, v8, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    const-string/jumbo v15, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v9, v2, v14, v15, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 640
    iget-object v14, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v14}, Ljava/util/UUID;->hashCode()I

    move-result v14

    invoke-virtual {v10, v14, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 642
    const-string/jumbo v14, "\u7f51\u7edc\u5f02\u5e38\uff01"

    const/4 v15, 0x1

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 643
    sget-object v14, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 679
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v12    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    const/4 v14, 0x0

    sput-object v14, Lcom/mobisage/android/MobiSageApkService;->runnable:Lcom/mobisage/android/MobiSageApkRunnable;

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/mobisage/android/MobiSageApkService;->schedulerApkDownload()V

    goto/16 :goto_0

    .line 646
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 647
    .local v3, "contexts":Landroid/content/Context;
    const-string v14, "notification"

    invoke-virtual {v3, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 649
    .restart local v10    # "notificationManager":Landroid/app/NotificationManager;
    iget-object v14, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v14}, Ljava/util/UUID;->hashCode()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 651
    sget-object v14, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v14, v8, Lcom/mobisage/android/MobiSageApkMessage;->targetURL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mobisage/android/MobiSageApkService;->readPackageFromApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 655
    .local v11, "packageName":Ljava/lang/String;
    const-string v14, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/mobisage/android/MobiSageApkService;->sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v4, Ljava/io/File;

    iget-object v14, v8, Lcom/mobisage/android/MobiSageApkMessage;->targetURL:Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 660
    .local v5, "filePath":Ljava/lang/String;
    const-string v14, ":"

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 663
    .local v13, "targetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mobisage/android/MobiSageApkService;->checkApk(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 664
    const-string v14, "21"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/mobisage/android/MobiSageApkService;->sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 667
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v14, "android.intent.action.VIEW"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->targetURL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "application/vnd.android.package-archive"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const/high16 v14, 0x10000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 671
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mobisage/android/MobiSageApkService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 673
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v14, "lpg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, "lpg":Ljava/lang/String;
    sget-object v14, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    goto/16 :goto_1
.end method

.method private processRetryApkDownload(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 577
    sget-object v1, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "did"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 580
    :cond_0
    sget-object v1, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "did"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageApkMessage;

    .line 581
    .local v0, "message":Lcom/mobisage/android/MobiSageApkMessage;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/mobisage/android/MobiSageApkMessage;->result:Landroid/os/Bundle;

    .line 582
    sget-object v1, Lcom/mobisage/android/MobiSageApkService;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageApkService;->schedulerApkDownload()V

    goto :goto_0
.end method

.method private processStartApkDownload(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mobisage/android/MobiSageApkService;->isConnect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    new-instance v1, Lcom/mobisage/android/MobiSageApkService$3;

    invoke-direct {v1, p0, p1}, Lcom/mobisage/android/MobiSageApkService$3;-><init>(Lcom/mobisage/android/MobiSageApkService;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageApkService$3;->start()V

    .line 401
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v1, "lpg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "lpg":Ljava/lang/String;
    sget-object v1, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    sget-object v1, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private pushTaskToDownloader(Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "temp"    # Ljava/io/File;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p4, "lpg"    # Ljava/lang/String;

    .prologue
    .line 453
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 455
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/mobisage/android/MobiSageApkService;->isConnect(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 456
    invoke-static {}, Lcom/mobisage/android/MobiSageApkService;->getSdAvailableSize()J

    move-result-wide v16

    invoke-static/range {p4 .. p4}, Lcom/mobisage/android/MobiSageApkService;->getRemoteApkSize(Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-lez v15, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xc

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "download"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 460
    .local v3, "downloadManager":Landroid/app/DownloadManager;
    new-instance v14, Landroid/app/DownloadManager$Request;

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 462
    .local v14, "request":Landroid/app/DownloadManager$Request;
    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 465
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 467
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 468
    const-string v15, "application/vnd.android.package-archive"

    invoke-virtual {v14, v15}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    const-wide/16 v4, -0x1

    .line 471
    .local v4, "downloadid":J
    :try_start_1
    invoke-virtual {v3, v14}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 479
    :try_start_2
    const-string v15, "pack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 480
    const-string v15, "pack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 482
    .local v12, "packageName":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p4

    invoke-direct {v9, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .local v9, "nameValue":Lorg/apache/http/NameValuePair;
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v15, "11"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/mobisage/android/MobiSageApkService;->sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .end local v3    # "downloadManager":Landroid/app/DownloadManager;
    .end local v4    # "downloadid":J
    .end local v9    # "nameValue":Lorg/apache/http/NameValuePair;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "request":Landroid/app/DownloadManager$Request;
    :cond_0
    :goto_0
    return-void

    .line 472
    .restart local v3    # "downloadManager":Landroid/app/DownloadManager;
    .restart local v4    # "downloadid":J
    .restart local v14    # "request":Landroid/app/DownloadManager$Request;
    :catch_0
    move-exception v6

    .line 473
    .local v6, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 474
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x7

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 502
    .end local v3    # "downloadManager":Landroid/app/DownloadManager;
    .end local v4    # "downloadid":J
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v14    # "request":Landroid/app/DownloadManager$Request;
    :catch_1
    move-exception v6

    .line 504
    .local v6, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x9

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 505
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 491
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 493
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xa

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    goto :goto_0

    .line 497
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xb

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 498
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 499
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 512
    :cond_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/mobisage/android/MobiSageApkService;->isConnect(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 513
    invoke-static {}, Lcom/mobisage/android/MobiSageApkService;->getSdAvailableSize()J

    move-result-wide v16

    invoke-static/range {p4 .. p4}, Lcom/mobisage/android/MobiSageApkService;->getRemoteApkSize(Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-lez v15, :cond_8

    .line 514
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xc

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 515
    new-instance v8, Lcom/mobisage/android/MobiSageApkMessage;

    invoke-direct {v8}, Lcom/mobisage/android/MobiSageApkMessage;-><init>()V

    .line 516
    .local v8, "message":Lcom/mobisage/android/MobiSageApkMessage;
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/mobisage/android/MobiSageApkMessage;->sourceURL:Ljava/lang/String;

    .line 517
    const-string v15, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    .line 518
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->targetURL:Ljava/lang/String;

    .line 519
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".tp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->tempURL:Ljava/lang/String;

    .line 520
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v15, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 523
    const-string v15, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/mobisage/android/MobiSageApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 524
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    new-instance v7, Landroid/content/Intent;

    const-class v15, Lcom/mobisage/android/MobiSageApkService;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v7, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 527
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v15, "did"

    iget-object v0, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v15, "action"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string v15, "ExtraData"

    invoke-virtual {v7, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 530
    iget-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v15}, Ljava/util/UUID;->hashCode()I

    move-result v15

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v7, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 533
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 534
    .local v10, "notification":Landroid/app/Notification;
    const/16 v15, 0x10

    iput v15, v10, Landroid/app/Notification;->flags:I

    .line 535
    iget-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    iput-object v15, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 536
    const v15, 0x1080081

    iput v15, v10, Landroid/app/Notification;->icon:I

    .line 537
    iget-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    const-string/jumbo v16, "\u4e0b\u8f7d\u51c6\u5907\u4e2d\uff0c\u70b9\u51fb\u53d6\u6d88\u4e0b\u8f7d"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v15, v1, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 539
    iget-object v15, v8, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v15}, Ljava/util/UUID;->hashCode()I

    move-result v15

    invoke-virtual {v11, v15, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 541
    const-string v15, "pack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 542
    const-string v15, "pack"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 547
    .restart local v12    # "packageName":Ljava/lang/String;
    const-string v15, "11"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/mobisage/android/MobiSageApkService;->sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/mobisage/android/MobiSageApkService;->schedulerApkDownload()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 565
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "message":Lcom/mobisage/android/MobiSageApkMessage;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "notificationManager":Landroid/app/NotificationManager;
    .end local v13    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_2
    move-exception v6

    .line 566
    .restart local v6    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x9

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 567
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 568
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 570
    :cond_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 553
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_5
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 554
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 556
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xa

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 560
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xb

    invoke-static/range {v15 .. v16}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 561
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 562
    sget-object v15, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method

.method private readPackageFromApk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 839
    const-string v1, ""

    .line 841
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageApkService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 842
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 844
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 845
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 847
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private schedulerApkDownload()V
    .locals 3

    .prologue
    .line 684
    sget-object v2, Lcom/mobisage/android/MobiSageApkService;->runnable:Lcom/mobisage/android/MobiSageApkRunnable;

    if-eqz v2, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    sget-object v2, Lcom/mobisage/android/MobiSageApkService;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    sget-object v2, Lcom/mobisage/android/MobiSageApkService;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageApkMessage;

    .line 690
    .local v0, "message":Lcom/mobisage/android/MobiSageApkMessage;
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageApkMessage;->createMessageRunnable()Ljava/lang/Runnable;

    move-result-object v2

    check-cast v2, Lcom/mobisage/android/MobiSageApkRunnable;

    sput-object v2, Lcom/mobisage/android/MobiSageApkService;->runnable:Lcom/mobisage/android/MobiSageApkRunnable;

    .line 691
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/mobisage/android/MobiSageApkService;->runnable:Lcom/mobisage/android/MobiSageApkRunnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 692
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private sendDownloadTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;

    .prologue
    .line 813
    const/4 v7, 0x0

    invoke-static {p1, v7}, Lcom/mobisage/android/MobiSageAdModuleHelper;->getJSON(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 814
    .local v3, "jsonObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 816
    :try_start_0
    const-string v7, "adgroupid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "adgroupid":Ljava/lang/String;
    const-string v7, "adid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "adid":Ljava/lang/String;
    const-string/jumbo v7, "token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, "token":Ljava/lang/String;
    const-string v7, "pid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, "pid":Ljava/lang/String;
    new-instance v4, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v4}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 822
    .local v4, "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    iget-object v7, v4, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v8, "event"

    invoke-virtual {v7, v8, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v7, v4, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v8, "adgroupid"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v7, v4, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v8, "adid"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v7, v4, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string/jumbo v8, "token"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v7, v4, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v8, "pid"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v7

    const/16 v8, 0x7dc

    invoke-virtual {v7, v8, v4}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 836
    .end local v0    # "adgroupid":Ljava/lang/String;
    .end local v1    # "adid":Ljava/lang/String;
    .end local v4    # "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    .end local v5    # "pid":Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v2

    .line 831
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 832
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 833
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendErroMsg(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "mHandler"    # Landroid/os/Handler;
    .param p1, "error"    # I

    .prologue
    .line 112
    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private toStartDownLoaderTask(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 404
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 406
    .local v3, "sdCard":Ljava/io/File;
    const/4 v5, 0x0

    .line 408
    .local v5, "temp":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    .end local v5    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .restart local v5    # "temp":Ljava/io/File;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 415
    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 419
    .local v4, "targetPath":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 425
    :goto_1
    new-instance v5, Ljava/io/File;

    .end local v5    # "temp":Ljava/io/File;
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .restart local v5    # "temp":Ljava/io/File;
    const-string v6, "lpg"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "lpg":Ljava/lang/String;
    sget-object v6, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mobisage/android/MobiSageApkService;->isConnect(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 440
    invoke-direct {p0, p1, v5, v4, v2}, Lcom/mobisage/android/MobiSageApkService;->pushTaskToDownloader(Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    :goto_2
    return-void

    .line 410
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "lpg":Ljava/lang/String;
    .end local v4    # "targetPath":Ljava/lang/String;
    .end local v5    # "temp":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/NoSuchFieldError;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Download/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "temp":Ljava/io/File;
    goto :goto_0

    .line 421
    .end local v0    # "e":Ljava/lang/NoSuchFieldError;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v4    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 422
    .restart local v0    # "e":Ljava/lang/NoSuchFieldError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Download/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 442
    .end local v0    # "e":Ljava/lang/NoSuchFieldError;
    .restart local v2    # "lpg":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/mobisage/android/MobiSageApkService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-static {v6, v7}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 443
    sget-object v6, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    sget-object v6, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 130
    sget-object v0, Lcom/mobisage/android/MobiSageApkService;->retryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    sget-object v0, Lcom/mobisage/android/MobiSageApkService;->retryTimesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    sget-object v0, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 172
    :goto_0
    return v2

    .line 143
    :cond_0
    :try_start_0
    const-string v2, "ExtraData"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 172
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    goto :goto_0

    .line 147
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageApkService;->processStartApkDownload(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 168
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageApkService;->processCancelApkDownload(Landroid/os/Bundle;)V

    goto :goto_1

    .line 153
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageApkService;->processRetryApkDownload(Landroid/os/Bundle;)V

    goto :goto_1

    .line 156
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageApkService;->processFinsihApkDownload(Landroid/os/Bundle;)V

    goto :goto_1

    .line 159
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageApkService;->processDownloadSysFinish(Landroid/os/Bundle;)V

    goto :goto_1

    .line 162
    :pswitch_5
    invoke-direct {p0, p0, v0}, Lcom/mobisage/android/MobiSageApkService;->processDownload(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 165
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/mobisage/android/MobiSageApkService;->processDownloaded(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
