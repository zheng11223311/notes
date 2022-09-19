.class public Lcom/youku/player/reporter/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static INSTANCE:Lcom/youku/player/reporter/LogManager;


# instance fields
.field protected logTime:J

.field protected tag:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field protected worker:Lcom/youku/player/reporter/LogWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/player/reporter/LogManager;->INSTANCE:Lcom/youku/player/reporter/LogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/reporter/LogManager;->url:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/reporter/LogManager;->tag:Ljava/lang/String;

    .line 39
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/youku/player/reporter/LogManager;->logTime:J

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/youku/player/reporter/LogManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/youku/player/reporter/LogManager;->INSTANCE:Lcom/youku/player/reporter/LogManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/youku/player/reporter/LogManager;

    invoke-direct {v0}, Lcom/youku/player/reporter/LogManager;-><init>()V

    sput-object v0, Lcom/youku/player/reporter/LogManager;->INSTANCE:Lcom/youku/player/reporter/LogManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/youku/player/reporter/LogManager;->INSTANCE:Lcom/youku/player/reporter/LogManager;

    return-object v0
.end method

.method public static setParameter(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "time"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lcom/youku/player/reporter/LogManager;->getInstance()Lcom/youku/player/reporter/LogManager;

    move-result-object v0

    iput-object p0, v0, Lcom/youku/player/reporter/LogManager;->tag:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/youku/player/reporter/LogManager;->getInstance()Lcom/youku/player/reporter/LogManager;

    move-result-object v0

    iput-wide p1, v0, Lcom/youku/player/reporter/LogManager;->logTime:J

    .line 53
    invoke-static {}, Lcom/youku/player/reporter/LogManager;->getInstance()Lcom/youku/player/reporter/LogManager;

    move-result-object v0

    iput-object p3, v0, Lcom/youku/player/reporter/LogManager;->url:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "folderPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    invoke-static {}, Lcom/youku/player/reporter/LogManager;->getInstance()Lcom/youku/player/reporter/LogManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/youku/player/reporter/LogManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/youku/player/reporter/LogManager;->getInstance()Lcom/youku/player/reporter/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/reporter/LogManager;->destory()V

    .line 75
    return-void
.end method


# virtual methods
.method protected destory()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    invoke-virtual {v0}, Lcom/youku/player/reporter/LogWorker;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    invoke-virtual {v0}, Lcom/youku/player/reporter/LogWorker;->setExit()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    .line 100
    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH#mm#ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "log":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    invoke-virtual {v1}, Lcom/youku/player/reporter/LogWorker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "log already start"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v1, Lcom/youku/player/reporter/LogWorker;

    iget-wide v4, p0, Lcom/youku/player/reporter/LogManager;->logTime:J

    iget-object v6, p0, Lcom/youku/player/reporter/LogManager;->tag:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/player/reporter/LogManager;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p2

    invoke-direct/range {v1 .. v9}, Lcom/youku/player/reporter/LogWorker;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/youku/player/reporter/IHttpUtil;)V

    iput-object v1, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    .line 88
    iget-object v1, p0, Lcom/youku/player/reporter/LogManager;->worker:Lcom/youku/player/reporter/LogWorker;

    invoke-virtual {v1}, Lcom/youku/player/reporter/LogWorker;->start()V

    goto :goto_0
.end method
