.class public Lcom/sea_monster/dao/async/AsyncOperation;
.super Ljava/lang/Object;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/async/AsyncOperation$OperationType;
    }
.end annotation


# static fields
.field public static final FLAG_MERGE_TX:I = 0x1

.field public static final FLAG_STOP_QUEUE_ON_EXCEPTION:I = 0x2


# instance fields
.field private volatile completed:Z

.field final dao:Lcom/sea_monster/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/AbstractDao",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field final flags:I

.field volatile mergedOperationsCount:I

.field final parameter:Ljava/lang/Object;

.field volatile result:Ljava/lang/Object;

.field sequenceNumber:I

.field volatile throwable:Ljava/lang/Throwable;

.field volatile timeCompleted:J

.field volatile timeStarted:J

.field final type:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;


# direct methods
.method constructor <init>(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "type"    # Lcom/sea_monster/dao/async/AsyncOperation$OperationType;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "parameter"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->type:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    .line 77
    iput-object p2, p0, Lcom/sea_monster/dao/async/AsyncOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    iput p4, p0, Lcom/sea_monster/dao/async/AsyncOperation;->flags:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    .line 80
    iput-object p3, p0, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "type"    # Lcom/sea_monster/dao/async/AsyncOperation$OperationType;
    .param p3, "parameter"    # Ljava/lang/Object;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/async/AsyncOperation$OperationType;",
            "Lcom/sea_monster/dao/AbstractDao",
            "<**>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->type:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    .line 69
    iput p4, p0, Lcom/sea_monster/dao/async/AsyncOperation;->flags:I

    .line 70
    iput-object p2, p0, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    iput-object p3, p0, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->timeCompleted:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/sea_monster/dao/DaoException;

    const-string v1, "This operation did not yet complete"

    invoke-direct {v0, v1}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-wide v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->timeCompleted:J

    iget-wide v2, p0, Lcom/sea_monster/dao/async/AsyncOperation;->timeStarted:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMergedOperationsCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->mergedOperationsCount:I

    return v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/sea_monster/dao/async/AsyncOperation;->waitForCompletion()Ljava/lang/Object;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lcom/sea_monster/dao/async/AsyncDaoException;

    iget-object v1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, p0, v1}, Lcom/sea_monster/dao/async/AsyncDaoException;-><init>(Lcom/sea_monster/dao/async/AsyncOperation;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->sequenceNumber:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimeCompleted()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->timeCompleted:J

    return-wide v0
.end method

.method public getTimeStarted()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->timeStarted:J

    return-wide v0
.end method

.method public getType()Lcom/sea_monster/dao/async/AsyncOperation$OperationType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->type:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z

    return v0
.end method

.method public isCompletedSucessfully()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMergeTx()Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMergeableWith(Lcom/sea_monster/dao/async/AsyncOperation;)Z
    .locals 2
    .param p1, "other"    # Lcom/sea_monster/dao/async/AsyncOperation;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sea_monster/dao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sea_monster/dao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sea_monster/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sea_monster/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 219
    iput-wide v2, p0, Lcom/sea_monster/dao/async/AsyncOperation;->timeStarted:J

    .line 220
    iput-wide v2, p0, Lcom/sea_monster/dao/async/AsyncOperation;->timeCompleted:J

    .line 221
    iput-boolean v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z

    .line 222
    iput-object v1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 223
    iput-object v1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 224
    iput v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->mergedOperationsCount:I

    .line 225
    return-void
.end method

.method declared-synchronized setCompleted()V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 89
    return-void
.end method

.method public declared-synchronized waitForCompletion()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 164
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 166
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 171
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .locals 4
    .param p1, "maxMillis"    # I

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 183
    int-to-long v2, p1

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/sea_monster/dao/async/AsyncOperation;->completed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
