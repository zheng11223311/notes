.class public Lcom/youdo/tracking/ReportManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/tracking/ReportManager$1;,
        Lcom/youdo/tracking/ReportManager$ReportTask;
    }
.end annotation


# static fields
.field private static final REPORT_TASK_DELAY:J = 0xea60L

.field private static final REPORT_TASK_NAME:Ljava/lang/String; = "report_data_task"

.field private static final REPORT_TASK_PERIOD:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "ReportManager"

.field private static self:Lcom/youdo/tracking/ReportManager;


# instance fields
.field private cacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isInit:Z

.field private ldProcessor:Lcom/youdo/tracking/LocalDataProcessor;

.field private mContext:Landroid/content/Context;

.field private ndProcessor:Lcom/youdo/tracking/NetworkDataProcessor;


# direct methods
.method private constructor <init>(Lcom/youdo/tracking/NetworkDataProcessor;Lcom/youdo/tracking/LocalDataProcessor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/tracking/ReportManager;->isInit:Z

    iput-object p1, p0, Lcom/youdo/tracking/ReportManager;->ndProcessor:Lcom/youdo/tracking/NetworkDataProcessor;

    iput-object p2, p0, Lcom/youdo/tracking/ReportManager;->ldProcessor:Lcom/youdo/tracking/LocalDataProcessor;

    return-void
.end method

.method static synthetic access$100(Lcom/youdo/tracking/ReportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/tracking/ReportManager;->sendXAdHttpTracking()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youdo/tracking/ReportManager;
    .locals 4

    const-class v1, Lcom/youdo/tracking/ReportManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youdo/tracking/ReportManager;->self:Lcom/youdo/tracking/ReportManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/youdo/tracking/ReportManager;

    new-instance v2, Lcom/youdo/tracking/NetworkDataProcessor;

    invoke-direct {v2}, Lcom/youdo/tracking/NetworkDataProcessor;-><init>()V

    new-instance v3, Lcom/youdo/tracking/LocalDataProcessor;

    invoke-direct {v3}, Lcom/youdo/tracking/LocalDataProcessor;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/youdo/tracking/ReportManager;-><init>(Lcom/youdo/tracking/NetworkDataProcessor;Lcom/youdo/tracking/LocalDataProcessor;)V

    sput-object v0, Lcom/youdo/tracking/ReportManager;->self:Lcom/youdo/tracking/ReportManager;

    :cond_0
    sget-object v0, Lcom/youdo/tracking/ReportManager;->self:Lcom/youdo/tracking/ReportManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isOnLine()Z
    .locals 4

    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/openad/common/util/Utils;->getMraidNetworkType(Landroid/content/Context;)Lorg/openad/constants/IOpenAdContants$MraidNetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$MraidNetworkType;->isOnline()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized sendXAdHttpTracking()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/youdo/tracking/ReportManager;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/youdo/tracking/ReportManager;->isOnLine()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/youdo/tracking/ReportManager;->rsyncLocalFile()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/youdo/tracking/ReportManager;->ndProcessor:Lcom/youdo/tracking/NetworkDataProcessor;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/youdo/tracking/NetworkDataProcessor;->invoke(Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 6

    const-wide/32 v4, 0xea60

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/youdo/tracking/ReportManager;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/youdo/tracking/ReportManager;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->ldProcessor:Lcom/youdo/tracking/LocalDataProcessor;

    invoke-virtual {v0, p2}, Lcom/youdo/tracking/LocalDataProcessor;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->ldProcessor:Lcom/youdo/tracking/LocalDataProcessor;

    invoke-virtual {v0}, Lcom/youdo/tracking/LocalDataProcessor;->readData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->ndProcessor:Lcom/youdo/tracking/NetworkDataProcessor;

    invoke-virtual {v0, p3, p4, p5}, Lcom/youdo/tracking/NetworkDataProcessor;->init(III)V

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "report_data_task"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    new-instance v1, Lcom/youdo/tracking/ReportManager$ReportTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/youdo/tracking/ReportManager$ReportTask;-><init>(Lcom/youdo/tracking/ReportManager;Lcom/youdo/tracking/ReportManager$1;)V

    int-to-long v2, v2

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/tracking/ReportManager;->isInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rsyncLocalFile()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/youdo/tracking/ReportManager;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/tracking/ReportManager;->ldProcessor:Lcom/youdo/tracking/LocalDataProcessor;

    iget-object v1, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youdo/tracking/LocalDataProcessor;->writeData(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendXAdHttpTracking(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/youdo/tracking/ReportManager;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/youdo/tracking/ReportManager;->cacheList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/youdo/tracking/ReportManager;->sendXAdHttpTracking()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
