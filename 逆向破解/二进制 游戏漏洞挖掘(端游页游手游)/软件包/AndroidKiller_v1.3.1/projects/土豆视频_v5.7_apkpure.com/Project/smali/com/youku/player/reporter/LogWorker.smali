.class public Lcom/youku/player/reporter/LogWorker;
.super Ljava/lang/Thread;
.source "LogWorker.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected httpUtil:Lcom/youku/player/reporter/IHttpUtil;

.field protected logName:Ljava/lang/String;

.field protected logTime:J

.field protected mHandler:Landroid/os/Handler;

.field protected mPath:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/youku/player/reporter/IHttpUtil;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;
    .param p3, "logtime"    # J
    .param p5, "Tag"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "http"    # Lcom/youku/player/reporter/IHttpUtil;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/youku/player/reporter/LogWorker;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/youku/player/reporter/LogWorker$1;

    invoke-direct {v0, p0}, Lcom/youku/player/reporter/LogWorker$1;-><init>(Lcom/youku/player/reporter/LogWorker;)V

    iput-object v0, p0, Lcom/youku/player/reporter/LogWorker;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object v1, p0, Lcom/youku/player/reporter/LogWorker;->httpUtil:Lcom/youku/player/reporter/IHttpUtil;

    .line 57
    iput-object p2, p0, Lcom/youku/player/reporter/LogWorker;->logName:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/youku/player/reporter/LogWorker;->mPath:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/youku/player/reporter/LogWorker;->logTime:J

    .line 60
    iput-object p7, p0, Lcom/youku/player/reporter/LogWorker;->context:Landroid/content/Context;

    .line 61
    iput-object p5, p0, Lcom/youku/player/reporter/LogWorker;->tag:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/youku/player/reporter/LogWorker;->url:Ljava/lang/String;

    .line 63
    iput-object p8, p0, Lcom/youku/player/reporter/LogWorker;->httpUtil:Lcom/youku/player/reporter/IHttpUtil;

    .line 64
    return-void
.end method

.method private startLog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 78
    const/4 v2, 0x0

    .line 80
    .local v2, "process":Ljava/lang/Process;
    sget v4, Lcom/youku/android/player/R$string;->start_log:I

    invoke-virtual {p0, v4}, Lcom/youku/player/reporter/LogWorker;->showToast(I)V

    .line 81
    iget-object v4, p0, Lcom/youku/player/reporter/LogWorker;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/libmanager/FileUtils;->creatDir(Ljava/lang/String;)Ljava/io/File;

    .line 83
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/baseproject/utils/Logger;->setDebugMode(Z)V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/youku/player/reporter/LogWorker;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/reporter/LogWorker;->logName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "log":Ljava/lang/String;
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start log "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/youku/player/reporter/LogWorker;->writeInformation(Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -v time -s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/player/reporter/LogWorker;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    :try_start_1
    iget-wide v4, p0, Lcom/youku/player/reporter/LogWorker;->logTime:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 108
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v5, "stop log"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "zipfile":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/youku/player/reporter/ZipUtil;->zip(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v5, "zip complete"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {v7}, Lcom/baseproject/utils/Logger;->setDebugMode(Z)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/youku/player/reporter/LogWorker;->Delete(Ljava/lang/String;)V

    .line 120
    sget v4, Lcom/youku/android/player/R$string;->stop_log:I

    invoke-virtual {p0, v4}, Lcom/youku/player/reporter/LogWorker;->showToast(I)V

    .line 122
    iget-object v4, p0, Lcom/youku/player/reporter/LogWorker;->httpUtil:Lcom/youku/player/reporter/IHttpUtil;

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/youku/player/reporter/LogWorker;->httpUtil:Lcom/youku/player/reporter/IHttpUtil;

    iget-object v5, p0, Lcom/youku/player/reporter/LogWorker;->url:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/youku/player/reporter/IHttpUtil;->upload(Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    .end local v3    # "zipfile":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v5, "error in startLog"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v7}, Lcom/baseproject/utils/Logger;->setDebugMode(Z)V

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v5, "interrupt log"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected Delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 181
    return-void
.end method

.method protected getSWInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 162
    iget-object v4, p0, Lcom/youku/player/reporter/LogWorker;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 163
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const-string v3, ""

    .line 166
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/youku/player/reporter/LogWorker;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 167
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 174
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 69
    invoke-direct {p0}, Lcom/youku/player/reporter/LogWorker;->startLog()V

    .line 70
    return-void
.end method

.method public setExit()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/youku/player/reporter/LogWorker;->interrupt()V

    .line 75
    return-void
.end method

.method protected showToast(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/youku/player/reporter/LogWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/reporter/LogWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/reporter/LogWorker$2;-><init>(Lcom/youku/player/reporter/LogWorker;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method protected writeInformation(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 144
    .local v1, "out":Ljava/io/PrintStream;
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v1    # "out":Ljava/io/PrintStream;
    .local v2, "out":Ljava/io/PrintStream;
    :try_start_1
    sget-object v3, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/youku/player/reporter/LogWorker;->getSWInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    move-object v1, v2

    .line 159
    .end local v2    # "out":Ljava/io/PrintStream;
    .restart local v1    # "out":Ljava/io/PrintStream;
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    :cond_1
    throw v3

    .line 155
    .end local v1    # "out":Ljava/io/PrintStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintStream;
    .restart local v1    # "out":Ljava/io/PrintStream;
    goto :goto_2

    .line 150
    .end local v1    # "out":Ljava/io/PrintStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintStream;
    .restart local v1    # "out":Ljava/io/PrintStream;
    goto :goto_1

    .end local v1    # "out":Ljava/io/PrintStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintStream;
    .restart local v1    # "out":Ljava/io/PrintStream;
    goto :goto_0
.end method
