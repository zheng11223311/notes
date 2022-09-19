.class public Lcom/tudou/service/download/DownloadServiceManager;
.super Lcom/tudou/service/download/BaseDownload;
.source "DownloadServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Download_ServiceManager"

.field private static instance:Lcom/tudou/service/download/DownloadServiceManager;


# instance fields
.field private callback:Lcom/tudou/service/download/ICallback;

.field private downloadingData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private first_tips:Z

.field private initlock:Z

.field private networkReceiver:Landroid/content/BroadcastReceiver;

.field private sdcardReceiver:Landroid/content/BroadcastReceiver;

.field private thread:Lcom/tudou/service/download/FileDownloadThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 267
    invoke-direct {p0}, Lcom/tudou/service/download/BaseDownload;-><init>()V

    .line 66
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tudou/service/download/DownloadServiceManager;->initlock:Z

    .line 68
    iput-boolean v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->first_tips:Z

    .line 73
    new-instance v3, Lcom/tudou/service/download/DownloadServiceManager$1;

    invoke-direct {v3, p0}, Lcom/tudou/service/download/DownloadServiceManager$1;-><init>(Lcom/tudou/service/download/DownloadServiceManager;)V

    iput-object v3, p0, Lcom/tudou/service/download/DownloadServiceManager;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v3, Lcom/tudou/service/download/DownloadServiceManager$2;

    invoke-direct {v3, p0}, Lcom/tudou/service/download/DownloadServiceManager$2;-><init>(Lcom/tudou/service/download/DownloadServiceManager;)V

    iput-object v3, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdcardReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    iput-object p1, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    .line 271
    iput-boolean v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->initlock:Z

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "path":Ljava/lang/String;
    const-string v3, "Download_ServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDownloadFilePath():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadServiceManager;->registerReceiver()V

    .line 276
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tudou/offlinedata/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tudou/offlinedata/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Download_ServiceManager"

    invoke-static {v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tudou/service/download/DownloadServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadServiceManager;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->initlock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tudou/service/download/DownloadServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/tudou/service/download/DownloadServiceManager;->initlock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tudou/service/download/DownloadServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadServiceManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadServiceManager;->isCacheProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/tudou/service/download/DownloadServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/tudou/service/download/DownloadServiceManager;->first_tips:Z

    return p1
.end method

.method private friendlyTips()V
    .locals 4

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->first_tips:Z

    if-eqz v0, :cond_0

    .line 752
    const v0, 0x7f0d0113

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->showTips(IJ)V

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->first_tips:Z

    .line 755
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tudou/service/download/DownloadServiceManager;
    .locals 3

    .prologue
    .line 260
    const-class v1, Lcom/tudou/service/download/DownloadServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/service/download/DownloadServiceManager;->instance:Lcom/tudou/service/download/DownloadServiceManager;

    if-nez v0, :cond_0

    .line 261
    const-string v0, "Download_ServiceManager"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/tudou/service/download/DownloadServiceManager;

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tudou/service/download/DownloadServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tudou/service/download/DownloadServiceManager;->instance:Lcom/tudou/service/download/DownloadServiceManager;

    .line 264
    :cond_0
    sget-object v0, Lcom/tudou/service/download/DownloadServiceManager;->instance:Lcom/tudou/service/download/DownloadServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasEnoughSpace(J)Z
    .locals 9
    .param p1, "needSpace"    # J

    .prologue
    const/4 v2, 0x0

    .line 1026
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "savePath":Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return v2

    .line 1031
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/32 v6, 0x100000

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1034
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private hasLivingTask()Z
    .locals 6

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 700
    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 702
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 703
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    .line 704
    .local v3, "state":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 708
    :cond_1
    const-string v4, "Download_ServiceManager"

    const-string v5, "hasLivingTask():true"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v4, 0x1

    .line 713
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "state":I
    :goto_0
    return v4

    .line 712
    :cond_2
    const-string v4, "Download_ServiceManager"

    const-string v5, "hasLivingTask():false"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isCacheProcess()Z
    .locals 8

    .prologue
    .line 1043
    const/4 v1, 0x0

    .line 1044
    .local v1, "TUDOU_PID":I
    const/4 v0, 0x0

    .line 1045
    .local v0, "DOWNLOAD_PID":I
    sget-object v6, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 1047
    .local v4, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1049
    .local v5, "mRunningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1050
    .local v2, "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "com.tudou.android"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1051
    iget v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 1055
    .end local v2    # "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1056
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-ne v1, v0, :cond_2

    .line 1057
    const/4 v6, 0x1

    .line 1059
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "com.tudou.download.ACTION_DOWNLOAD_OPEN_2g_3g"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "com.tudou.download.ACTION_DOWNLOAD_CLOSE_2g_3g"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "i":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .restart local v0    # "i":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method private startThread(Ljava/lang/String;)V
    .locals 6
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 451
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    const-string v1, "curdownloadinfo"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->size:J

    iget-wide v4, v0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/tudou/service/download/DownloadServiceManager;->hasEnoughSpace(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->cleanNoRoom()V

    .line 458
    :cond_0
    const-string v1, "curdownloadinfo"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 461
    :cond_1
    new-instance v1, Lcom/tudou/service/download/FileDownloadThread;

    invoke-direct {v1, v0}, Lcom/tudou/service/download/FileDownloadThread;-><init>(Lcom/tudou/service/download/DownloadInfo;)V

    iput-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 462
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    iput-object v1, v0, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 463
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->start()V

    .line 464
    :cond_2
    return-void
.end method


# virtual methods
.method public addDownloadingInfo(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Lcom/tudou/service/download/DownloadListenerImpl;

    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tudou/service/download/DownloadListenerImpl;-><init>(Landroid/content/Context;Lcom/tudou/service/download/DownloadInfo;)V

    iput-object v0, p1, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    .line 356
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    return-void
.end method

.method public appExit()Z
    .locals 2

    .prologue
    .line 1071
    const-string v0, "isexit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public canUse3GDownload()Z
    .locals 2

    .prologue
    .line 852
    const-string v0, "nowlandownload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public canUseAcc()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 872
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getP2p_switch()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanNoRoom()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 736
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 737
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 739
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 740
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 741
    invoke-virtual {v1, v5}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 742
    :cond_0
    iput v5, v1, Lcom/tudou/service/download/DownloadInfo;->retry:I

    goto :goto_0

    .line 744
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    return-void
.end method

.method public cleanRetry()V
    .locals 5

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 721
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 724
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    const-string v3, "0K"

    iput-object v3, v1, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 725
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 726
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 727
    :cond_0
    const/4 v3, 0x0

    iput v3, v1, Lcom/tudou/service/download/DownloadInfo;->retry:I

    goto :goto_0

    .line 730
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    return-void
.end method

.method public createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "palyName"    # Ljava/lang/String;
    .param p3, "showName"    # Ljava/lang/String;
    .param p4, "showSubTitle"    # Ljava/lang/String;
    .param p5, "xuanjiTitle"    # Ljava/lang/String;
    .param p6, "format"    # I
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "fromto"    # Ljava/lang/String;
    .param p9, "showid"    # Ljava/lang/String;
    .param p10, "imgurl"    # Ljava/lang/String;
    .param p11, "istrailer"    # Z

    .prologue
    .line 366
    sget-object v0, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isNeedRefresh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    :goto_1
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    const v0, 0x7f0d0106

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 375
    :cond_1
    const v0, 0x7f0d0107

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    const v0, 0x7f0d0109

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 379
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 381
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    new-instance v0, Lcom/tudou/service/download/FileCreateThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/tudou/service/download/FileCreateThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/tudou/service/download/FileCreateThread;->start()V

    goto :goto_1

    .line 389
    :cond_4
    new-instance v0, Lcom/tudou/service/download/FileCreateThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/tudou/service/download/FileCreateThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/tudou/service/download/FileCreateThread;->start()V

    goto/16 :goto_0

    .line 397
    :cond_5
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0
.end method

.method public createDownloads([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "videoIds"    # [Ljava/lang/String;
    .param p2, "videoNames"    # [Ljava/lang/String;

    .prologue
    .line 416
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isNeedRefresh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    new-instance v0, Lcom/tudou/service/download/FileCreateThread;

    invoke-direct {v0, p1, p2}, Lcom/tudou/service/download/FileCreateThread;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/service/download/FileCreateThread;->start()V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->canUse3GDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Lcom/tudou/service/download/FileCreateThread;

    invoke-direct {v0, p1, p2}, Lcom/tudou/service/download/FileCreateThread;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/service/download/FileCreateThread;->start()V

    goto :goto_0
.end method

.method public deleteAllDownloading()Z
    .locals 8

    .prologue
    .line 668
    const-string v6, "download_last_notify_taskid"

    invoke-static {v6}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "nId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 671
    .local v0, "clone":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 672
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 673
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 674
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 675
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 676
    iget-object v6, v2, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 677
    iget-object v6, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 679
    .local v5, "nm":Landroid/app/NotificationManager;
    const/16 v6, 0x1700

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 680
    const-string v6, "download_last_notify_taskid"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v5    # "nm":Landroid/app/NotificationManager;
    :cond_1
    new-instance v6, Lcom/tudou/service/download/DownloadServiceManager$4;

    invoke-direct {v6, p0, v0}, Lcom/tudou/service/download/DownloadServiceManager$4;-><init>(Lcom/tudou/service/download/DownloadServiceManager;Ljava/util/HashMap;)V

    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadServiceManager$4;->start()V

    .line 693
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 694
    const/4 v6, 0x1

    return v6
.end method

.method public deleteArray([Ljava/lang/String;)Z
    .locals 7
    .param p1, "taskIds"    # [Ljava/lang/String;

    .prologue
    .line 994
    array-length v2, p1

    .line 995
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 996
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 998
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 999
    iget-object v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v4}, Lcom/tudou/service/download/FileDownloadThread;->isStop()Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v5}, Lcom/tudou/service/download/FileDownloadThread;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    iget-object v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v4}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 1004
    :cond_0
    aget-object v4, p1, v0

    const-string v5, "curdownloadinfo"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1005
    const-string v4, "curdownloadinfo"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v4, "firstToCache"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1008
    :cond_1
    iget-object v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1010
    .local v3, "nm":Landroid/app/NotificationManager;
    const-string v4, "download_last_notify_taskid"

    invoke-static {v4}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1012
    const/16 v4, 0x1700

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1013
    const-string v4, "download_last_notify_taskid"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_2
    new-instance v4, Lcom/tudou/service/download/DownloadServiceManager$5;

    invoke-direct {v4, p0, v1}, Lcom/tudou/service/download/DownloadServiceManager$5;-><init>(Lcom/tudou/service/download/DownloadServiceManager;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadServiceManager$5;->start()V

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    :cond_3
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    .line 1022
    const/4 v4, 0x1

    return v4
.end method

.method public deleteDownloading(Ljava/lang/String;)Z
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 644
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 645
    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v2}, Lcom/tudou/service/download/FileDownloadThread;->isStop()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v2}, Lcom/tudou/service/download/FileDownloadThread;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v2}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 652
    .local v1, "nm":Landroid/app/NotificationManager;
    const-string v2, "download_last_notify_taskid"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    const/16 v2, 0x1700

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 654
    const-string v2, "download_last_notify_taskid"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_1
    new-instance v2, Lcom/tudou/service/download/DownloadServiceManager$3;

    invoke-direct {v2, p0, v0}, Lcom/tudou/service/download/DownloadServiceManager$3;-><init>(Lcom/tudou/service/download/DownloadServiceManager;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager$3;->start()V

    .line 661
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    .line 662
    const/4 v2, 0x1

    return v2
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->stopAllTaskNoTips()V

    .line 759
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 761
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x1700

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 762
    return-void
.end method

.method public getAccPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    const-string v0, ""

    return-object v0
.end method

.method public getAccState()I
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lcom/tudou/service/download/ICallback;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->callback:Lcom/tudou/service/download/ICallback;

    return-object v0
.end method

.method public final getCurrentDownloadSDCardPath()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 767
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "defauleSDCardPath":Ljava/lang/String;
    const-string v10, "first_install_for_download_path"

    invoke-static {v10, v12}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 770
    const-string v10, "first_install_for_download_path"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 771
    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 772
    :cond_0
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    .line 775
    :cond_1
    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v12, :cond_4

    .line 776
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/tudou/offlinedata/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    .local v3, "dir":Ljava/io/File;
    const/4 v0, 0x0

    .line 778
    .local v0, "count":I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 779
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, "dirs":[Ljava/lang/String;
    array-length v10, v4

    add-int/lit8 v5, v10, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 781
    aget-object v8, v4, v5

    .line 782
    .local v8, "vid":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v1

    .line 783
    .local v1, "d":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    .line 785
    add-int/lit8 v0, v0, 0x1

    .line 780
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 791
    .end local v1    # "d":Lcom/tudou/service/download/DownloadInfo;
    .end local v4    # "dirs":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "vid":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 792
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 793
    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-boolean v10, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    if-nez v10, :cond_6

    .line 794
    const-string v11, "download_file_path"

    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v10, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .end local v0    # "count":I
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "i":I
    :cond_4
    const-string v10, "download_file_path"

    invoke-static {v10, v2}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 833
    .local v7, "path":Ljava/lang/String;
    new-instance v6, Lcom/tudou/service/download/SDCardManager;

    invoke-direct {v6, v7}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 834
    .local v6, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v6}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v10

    if-nez v10, :cond_5

    .line 835
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 836
    move-object v7, v2

    .line 837
    const-string v10, "download_file_path"

    invoke-static {v10, v7}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v10, v7

    .line 840
    .end local v6    # "m":Lcom/tudou/service/download/SDCardManager;
    :goto_2
    return-object v10

    .line 792
    .end local v7    # "path":Ljava/lang/String;
    .restart local v0    # "count":I
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v5    # "i":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 801
    .end local v0    # "count":I
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "i":I
    :cond_7
    const-string v10, "first_install_for_download_path_33"

    invoke-static {v10, v12}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 803
    const-string v10, "first_install_for_download_path_33"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 804
    const-string v10, "download_file_path"

    invoke-static {v10, v2}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 806
    .restart local v7    # "path":Ljava/lang/String;
    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    .line 807
    const/4 v9, 0x0

    .line 808
    .local v9, "xiangtong":Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    .line 809
    iget-object v10, p0, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v10, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 810
    const/4 v9, 0x1

    .line 808
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 813
    :cond_9
    if-nez v9, :cond_4

    .line 814
    const-string v10, "first_install_for_download_path"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 816
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 819
    .end local v5    # "i":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "xiangtong":Z
    :cond_a
    const-string v10, "first_install_for_download_path_40"

    invoke-static {v10, v12}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 822
    const-string v10, "first_install_for_download_path_40"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 823
    const-string v10, "download_file_path"

    const-string v11, ""

    invoke-static {v10, v11}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 824
    .restart local v7    # "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 826
    const-string v10, "first_install_for_download_path"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 827
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public getDownloadCreating()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    sget-object v0, Lcom/tudou/service/download/FileCreateThread;->tempCreateData:Ljava/util/Map;

    return-object v0
.end method

.method public getDownloadFormat()I
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadLanguage()I
    .locals 1

    .prologue
    .line 924
    invoke-static {}, Lcom/tudou/service/download/DownloadUtils;->getDownloadLanguage()I

    move-result v0

    return v0
.end method

.method public getDownloadingData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    .line 350
    :goto_0
    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getNewDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    .line 350
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public getDownloadingData(Z)Ljava/util/HashMap;
    .locals 1
    .param p1, "updata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadings(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1076
    .local p1, "vids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1077
    .local v0, "count":I
    if-nez p1, :cond_1

    const/4 v7, 0x0

    .line 1078
    .local v7, "vidsLen":I
    :goto_0
    if-eqz v7, :cond_4

    .line 1079
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadCreating()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1080
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadCreating()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1081
    .local v4, "iter0":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1082
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1083
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1084
    .local v6, "videoid":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1085
    invoke-interface {p1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1077
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "iter0":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "videoid":Ljava/lang/String;
    .end local v7    # "vidsLen":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_0

    .line 1091
    .restart local v7    # "vidsLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1092
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1093
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1094
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 1095
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v5, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 1096
    .local v5, "videoId":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1097
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1102
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;>;"
    .end local v5    # "videoId":Ljava/lang/String;
    :cond_4
    return v0
.end method

.method public getP2p_switch()I
    .locals 2

    .prologue
    .line 885
    const-string v0, "p2p_switch"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getCPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasDownloadingTask()Z
    .locals 4

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "state":Z
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->isStop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 320
    :cond_0
    const-string v1, "Download_ServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasDownloadingTask():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return v0
.end method

.method public hasDownloadingWaiting()Z
    .locals 5

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getNewDownloadingData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 326
    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 328
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 329
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 332
    :cond_1
    const/4 v3, 0x1

    .line 335
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAccAvailable()Z
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method public noDisturb()Z
    .locals 2

    .prologue
    .line 867
    const-string v0, "nodisturb"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public pauseAllTask(Z)V
    .locals 8
    .param p1, "pause"    # Z

    .prologue
    const/4 v7, 0x0

    .line 943
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v5, :cond_0

    .line 944
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v5}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 945
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData(Z)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 946
    .local v3, "iter":Ljava/util/Iterator;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v4, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 948
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 949
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 950
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 954
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 957
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    sput-boolean v7, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 958
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 959
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 960
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v5

    if-nez v5, :cond_4

    .line 961
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v5, :cond_4

    .line 962
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v5}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 963
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 966
    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v7}, Lcom/tudou/service/download/DownloadInfo;->setState(IZ)V

    goto :goto_1

    .line 968
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_5
    return-void
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v0}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 474
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 567
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v1}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getNewDownloadingData()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    .line 570
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->callback:Lcom/tudou/service/download/ICallback;

    if-eqz v1, :cond_1

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager;->callback:Lcom/tudou/service/download/ICallback;

    invoke-interface {v1}, Lcom/tudou/service/download/ICallback;->refresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_ServiceManager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/tudou/service/download/ICallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/tudou/service/download/ICallback;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tudou/service/download/DownloadServiceManager;->callback:Lcom/tudou/service/download/ICallback;

    .line 303
    return-void
.end method

.method public removeByPath(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 581
    .local v4, "iter":Ljava/util/Iterator;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 583
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 584
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    .line 585
    .local v3, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v7, v3, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 586
    iget-object v7, v3, Lcom/tudou/service/download/DownloadInfo;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v7, :cond_1

    .line 587
    iget-object v7, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v7}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 589
    :cond_1
    iget-object v7, v3, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 593
    .local v6, "taskId":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/service/download/DownloadServiceManager;->downloadingData:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 595
    .end local v6    # "taskId":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/tudou/service/download/DownloadServiceManager;->callback:Lcom/tudou/service/download/ICallback;

    if-eqz v7, :cond_4

    .line 597
    :try_start_0
    iget-object v7, p0, Lcom/tudou/service/download/DownloadServiceManager;->callback:Lcom/tudou/service/download/ICallback;

    invoke-interface {v7}, Lcom/tudou/service/download/ICallback;->refresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :cond_4
    :goto_2
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "Download_ServiceManager"

    invoke-static {v7, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setAppExit(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1065
    const-string v0, "isexit"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1067
    return-void
.end method

.method public setCanUse3GDownload(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 857
    const-string v0, "nowlandownload"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 858
    return-void
.end method

.method public setCurrentDownloadSDCardPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 846
    const-string v0, "download_file_path"

    invoke-static {v0, p1}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.service.download.ACTION_SDCARD_PATH_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 848
    return-void
.end method

.method public setDownloadFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 919
    invoke-static {p1}, Lcom/tudou/service/download/DownloadUtils;->setDownloadFormat(I)V

    .line 920
    return-void
.end method

.method public setDownloadLanguage(I)V
    .locals 0
    .param p1, "language"    # I

    .prologue
    .line 929
    invoke-static {p1}, Lcom/tudou/service/download/DownloadUtils;->setDownloadLanguage(I)V

    .line 930
    return-void
.end method

.method public setNoDisturb(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 862
    const-string v0, "nodisturb"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 863
    return-void
.end method

.method public setP2p_switch(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 890
    const-string v0, "p2p_switch"

    invoke-static {v0, p1}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;I)V

    .line 891
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 939
    return-void
.end method

.method public startAllTask()V
    .locals 5

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 973
    .local v2, "iter":Ljava/util/Iterator;
    if-nez v2, :cond_0

    .line 990
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 977
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 980
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 981
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 982
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 983
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 985
    :cond_2
    const/4 v3, 0x0

    iput v3, v1, Lcom/tudou/service/download/DownloadInfo;->retry:I

    .line 986
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    goto :goto_1

    .line 989
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    goto :goto_0
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-direct {p0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->startThread(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startNewTask()V
    .locals 14

    .prologue
    .line 478
    const-string v11, "Download_ServiceManager"

    const-string/jumbo v12, "startNewTask()"

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v11

    if-nez v11, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->stopAllTaskNoTips()V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v11

    if-nez v11, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->canUse3GDownload()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v11

    if-nez v11, :cond_0

    .line 489
    const/4 v10, 0x0

    .line 490
    .local v10, "taskId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 491
    .local v5, "iter":Ljava/util/Iterator;
    const-string v11, "firstToCache"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/tudou/android/Youku;->getCPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 492
    const-string v11, "firstToCache"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 493
    const-wide/16 v8, 0x0

    .line 494
    .local v8, "startTime":J
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 495
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 496
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/service/download/DownloadInfo;

    .line 497
    .local v4, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v7

    .line 498
    .local v7, "state":I
    if-nez v7, :cond_4

    .line 499
    iget-object v11, v4, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/tudou/service/download/DownloadServiceManager;->startThread(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_4
    const/4 v11, 0x5

    if-eq v7, v11, :cond_5

    const/4 v11, -0x1

    if-eq v7, v11, :cond_5

    const/4 v11, 0x2

    if-ne v7, v11, :cond_3

    :cond_5
    iget-wide v12, v4, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    cmp-long v11, v12, v8

    if-lez v11, :cond_3

    .line 504
    iget-wide v8, v4, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    .line 505
    iget-object v10, v4, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    goto :goto_1

    .line 509
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v7    # "state":I
    :cond_6
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/service/download/DownloadInfo;

    .line 510
    .local v6, "lastInfo":Lcom/tudou/service/download/DownloadInfo;
    if-nez v6, :cond_9

    .line 527
    .end local v6    # "lastInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v8    # "startTime":J
    :cond_7
    const-wide v2, 0xde0b6b3a763ffffL

    .line 528
    .local v2, "firstStartTime":J
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 529
    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 530
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 531
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/service/download/DownloadInfo;

    .line 532
    .restart local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v7

    .line 533
    .restart local v7    # "state":I
    if-nez v7, :cond_d

    .line 534
    iget-object v11, v4, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/tudou/service/download/DownloadServiceManager;->startThread(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 511
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "firstStartTime":J
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v7    # "state":I
    .restart local v6    # "lastInfo":Lcom/tudou/service/download/DownloadInfo;
    .restart local v8    # "startTime":J
    :cond_9
    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_a

    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 513
    :cond_a
    const-string v11, "DownloadListenerImpl"

    const-string/jumbo v12, "\u5f00\u59cb\u6700\u540e\u4e0b\u8f7d\u64cd\u4f5c\u7684\u89c6\u9891 wating init"

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v10}, Lcom/tudou/service/download/DownloadServiceManager;->startThread(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    :cond_b
    invoke-virtual {v6}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    iget v11, v6, Lcom/tudou/service/download/DownloadInfo;->retry:I

    if-lez v11, :cond_c

    iget-object v11, v6, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    const-string v12, "curdownloadinfo"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 519
    :cond_c
    const-string v11, "DownloadListenerImpl"

    const-string/jumbo v12, "\u5f00\u59cb\u6700\u540e\u4e0b\u8f7d\u64cd\u4f5c\u7684\u89c6\u9891 STATE_EXCEPTION"

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget v11, v6, Lcom/tudou/service/download/DownloadInfo;->retry:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v6, Lcom/tudou/service/download/DownloadInfo;->retry:I

    .line 521
    invoke-direct {p0, v10}, Lcom/tudou/service/download/DownloadServiceManager;->startThread(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    .end local v6    # "lastInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v8    # "startTime":J
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "firstStartTime":J
    .restart local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    .restart local v7    # "state":I
    :cond_d
    const/4 v11, 0x5

    if-eq v7, v11, :cond_e

    const/4 v11, -0x1

    if-eq v7, v11, :cond_e

    const/4 v11, 0x2

    if-ne v7, v11, :cond_8

    :cond_e
    iget v11, v4, Lcom/tudou/service/download/DownloadInfo;->retry:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_f

    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    :cond_f
    iget-wide v12, v4, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    cmp-long v11, v12, v2

    if-gez v11, :cond_8

    .line 541
    iget-wide v2, v4, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    .line 542
    iget-object v10, v4, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    goto/16 :goto_2

    .line 545
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v7    # "state":I
    :cond_10
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 546
    .local v1, "firstInfo":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_11

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_12

    .line 550
    :cond_11
    const-string v11, "DownloadListenerImpl"

    const-string/jumbo v12, "\u521b\u5efa\u65f6\u95f4\u987a\u5e8f\u5f00\u59cb\u4e0b\u8f7d wating init"

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v10}, Lcom/tudou/service/download/DownloadServiceManager;->startThread(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    :cond_12
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    iget v11, v1, Lcom/tudou/service/download/DownloadInfo;->retry:I

    if-lez v11, :cond_13

    iget-object v11, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    const-string v12, "curdownloadinfo"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/tudou/android/Youku;->getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    .line 558
    :cond_13
    const-string v11, "DownloadListenerImpl"

    const-string/jumbo v12, "\u521b\u5efa\u65f6\u95f4\u987a\u5e8f\u5f00\u59cb\u4e0b\u8f7d STATE_EXCEPTION"

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget v11, v1, Lcom/tudou/service/download/DownloadInfo;->retry:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v1, Lcom/tudou/service/download/DownloadInfo;->retry:I

    .line 560
    invoke-direct {p0, v10}, Lcom/tudou/service/download/DownloadServiceManager;->startThread(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopAllTask()V
    .locals 5

    .prologue
    .line 606
    iget-object v3, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v3, :cond_0

    .line 607
    iget-object v3, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v3}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 609
    .local v2, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 610
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 611
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 612
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 613
    const-string v3, "firstToCache"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 614
    const-string v3, "curdownloadinfo"

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    goto :goto_0

    .line 618
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_2
    return-void
.end method

.method public stopAllTaskNoTips()V
    .locals 5

    .prologue
    .line 621
    iget-object v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    if-eqz v4, :cond_0

    .line 622
    iget-object v4, p0, Lcom/tudou/service/download/DownloadServiceManager;->thread:Lcom/tudou/service/download/FileDownloadThread;

    invoke-virtual {v4}, Lcom/tudou/service/download/FileDownloadThread;->cancel()V

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 624
    .local v3, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 626
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 627
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v4

    if-nez v4, :cond_1

    .line 628
    const/4 v4, 0x5

    iput v4, v2, Lcom/tudou/service/download/DownloadInfo;->state:I

    .line 629
    invoke-static {v2}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 631
    :try_start_0
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadServiceManager;->getCallback()Lcom/tudou/service/download/ICallback;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tudou/service/download/ICallback;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Download_ServiceManager"

    invoke-static {v4, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_2
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/service/download/DownloadServiceManager;->setAppExit(Z)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadServiceManager;->callback:Lcom/tudou/service/download/ICallback;

    .line 308
    return-void
.end method
