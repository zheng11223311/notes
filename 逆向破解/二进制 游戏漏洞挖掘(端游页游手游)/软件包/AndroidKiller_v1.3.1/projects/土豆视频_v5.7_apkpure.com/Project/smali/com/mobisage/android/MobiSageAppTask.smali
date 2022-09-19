.class Lcom/mobisage/android/MobiSageAppTask;
.super Lcom/mobisage/android/MobiSageTask;
.source "MobiSageAppTask.java"


# static fields
.field private static final SEND_INTERVAL_TIME:J = 0x5265c00L


# instance fields
.field private mConfig:Lorg/json/JSONObject;

.field private mConfigFile:Ljava/io/File;

.field private mFileLock:Ljava/nio/channels/FileLock;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageTask;-><init>()V

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfig:Lorg/json/JSONObject;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/mobisage/android/MobiSageAppTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAppTask;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAppTask;->closeAccessFile()V

    return-void
.end method

.method private closeAccessFile()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAppTask;->mFileLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAppTask;->mFileLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAppTask;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAppTask;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :cond_1
    :goto_1
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_1

    .line 34
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 47
    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 111
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v6, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MobiSage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cfg.dat"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfigFile:Ljava/io/File;

    .line 61
    :goto_1
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfigFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfigFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_1
    const-wide/16 v2, -0x1

    .line 65
    .local v2, "lastSendTime":J
    const/4 v4, 0x0

    .line 67
    .local v4, "mFileLockSuccess":Z
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfigFile:Ljava/io/File;

    const-string/jumbo v8, "rws"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 68
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v6

    iput-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mFileLock:Ljava/nio/channels/FileLock;

    .line 69
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mFileLock:Ljava/nio/channels/FileLock;

    if-eqz v6, :cond_2

    .line 70
    const/4 v4, 0x1

    .line 71
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfigFile:Ljava/io/File;

    invoke-static {v6}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 74
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfig:Lorg/json/JSONObject;

    .line 75
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfig:Lorg/json/JSONObject;

    const-string v7, "app_track_time"

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 83
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAppTask;->closeAccessFile()V

    goto/16 :goto_0

    .line 57
    .end local v2    # "lastSendTime":J
    .end local v4    # "mFileLockSuccess":Z
    :cond_4
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->packageCacheDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cfg.dat"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfigFile:Ljava/io/File;

    goto/16 :goto_1

    .line 78
    .restart local v2    # "lastSendTime":J
    .restart local v4    # "mFileLockSuccess":Z
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfig:Lorg/json/JSONObject;

    const-string v7, "app_track_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfigFile:Ljava/io/File;

    iget-object v7, p0, Lcom/mobisage/android/MobiSageAppTask;->mConfig:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :goto_3
    new-instance v5, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v5}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 98
    .local v5, "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    new-instance v6, Lcom/mobisage/android/MobiSageAppTask$1;

    invoke-direct {v6, p0}, Lcom/mobisage/android/MobiSageAppTask$1;-><init>(Lcom/mobisage/android/MobiSageAppTask;)V

    iput-object v6, v5, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 109
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v6

    const/16 v7, 0x7da

    invoke-virtual {v6, v7, v5}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0

    .line 93
    .end local v5    # "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    :catch_1
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3
.end method
