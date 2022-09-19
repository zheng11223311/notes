.class Lcom/sea_monster/dao/async/AsyncOperationExecutor;
.super Ljava/lang/Object;
.source "AsyncOperationExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/async/AsyncOperationExecutor$1;
    }
.end annotation


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private countOperationsCompleted:I

.field private countOperationsEnqueued:I

.field private volatile executorRunning:Z

.field private handlerMainThread:Landroid/os/Handler;

.field private lastSequenceNumber:I

.field private volatile listener:Lcom/sea_monster/dao/async/AsyncOperationListener;

.field private volatile listenerMainThread:Lcom/sea_monster/dao/async/AsyncOperationListener;

.field private volatile maxOperationCountToMerge:I

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sea_monster/dao/async/AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile waitForMergeMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 54
    iput v1, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 55
    iput v1, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 56
    return-void
.end method

.method private executeOperation(Lcom/sea_monster/dao/async/AsyncOperation;)V
    .locals 4
    .param p1, "operation"    # Lcom/sea_monster/dao/async/AsyncOperation;

    .prologue
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->timeStarted:J

    .line 258
    :try_start_0
    sget-object v1, Lcom/sea_monster/dao/async/AsyncOperationExecutor$1;->$SwitchMap$com$sea_monster$dao$async$AsyncOperation$OperationType:[I

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->type:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-virtual {v2}, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 326
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sea_monster/dao/async/AsyncOperation;->type:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "th":Ljava/lang/Throwable;
    iput-object v0, p1, Lcom/sea_monster/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 331
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->timeCompleted:J

    .line 333
    return-void

    .line 260
    :pswitch_0
    :try_start_1
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/AbstractDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :pswitch_3
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    .line 272
    :pswitch_4
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 275
    :pswitch_5
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :pswitch_6
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    .line 281
    :pswitch_7
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 284
    :pswitch_8
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :pswitch_9
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/AbstractDao;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :pswitch_a
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 293
    :pswitch_b
    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeTransactionRunnable(Lcom/sea_monster/dao/async/AsyncOperation;)V

    goto/16 :goto_0

    .line 299
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeTransactionCallable(Lcom/sea_monster/dao/async/AsyncOperation;)V

    goto/16 :goto_0

    .line 302
    :pswitch_e
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Lcom/sea_monster/dao/query/Query;

    invoke-virtual {v1}, Lcom/sea_monster/dao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 305
    :pswitch_f
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Lcom/sea_monster/dao/query/Query;

    invoke-virtual {v1}, Lcom/sea_monster/dao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 308
    :pswitch_10
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 311
    :pswitch_11
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->deleteAll()V

    goto/16 :goto_0

    .line 314
    :pswitch_12
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 317
    :pswitch_13
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 320
    :pswitch_14
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 323
    :pswitch_15
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->dao:Lcom/sea_monster/dao/AbstractDao;

    iget-object v2, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sea_monster/dao/AbstractDao;->refresh(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private executeOperationAndPostCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V
    .locals 0
    .param p1, "operation"    # Lcom/sea_monster/dao/async/AsyncOperation;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeOperation(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->handleOperationCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 252
    return-void
.end method

.method private executeTransactionCallable(Lcom/sea_monster/dao/async/AsyncOperation;)V
    .locals 2
    .param p1, "operation"    # Lcom/sea_monster/dao/async/AsyncOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/sea_monster/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 351
    :try_start_0
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 352
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private executeTransactionRunnable(Lcom/sea_monster/dao/async/AsyncOperation;)V
    .locals 2
    .param p1, "operation"    # Lcom/sea_monster/dao/async/AsyncOperation;

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/sea_monster/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 337
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 339
    :try_start_0
    iget-object v1, p1, Lcom/sea_monster/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 340
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private handleOperationCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V
    .locals 4
    .param p1, "operation"    # Lcom/sea_monster/dao/async/AsyncOperation;

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/sea_monster/dao/async/AsyncOperation;->setCompleted()V

    .line 230
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->listener:Lcom/sea_monster/dao/async/AsyncOperationListener;

    .line 231
    .local v0, "listenerToCall":Lcom/sea_monster/dao/async/AsyncOperationListener;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p1}, Lcom/sea_monster/dao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->listenerMainThread:Lcom/sea_monster/dao/async/AsyncOperationListener;

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 236
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 239
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    monitor-enter p0

    .line 242
    :try_start_0
    iget v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    .line 243
    iget v2, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    iget v3, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    if-ne v2, v3, :cond_3

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 246
    :cond_3
    monitor-exit p0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private mergeTxAndExecute(Lcom/sea_monster/dao/async/AsyncOperation;Lcom/sea_monster/dao/async/AsyncOperation;)V
    .locals 12
    .param p1, "operation1"    # Lcom/sea_monster/dao/async/AsyncOperation;
    .param p2, "operation2"    # Lcom/sea_monster/dao/async/AsyncOperation;

    .prologue
    .line 178
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v6, "mergedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sea_monster/dao/async/AsyncOperation;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1}, Lcom/sea_monster/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 183
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    const/4 v2, 0x0

    .line 186
    .local v2, "failed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 187
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sea_monster/dao/async/AsyncOperation;

    .line 188
    .local v7, "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    invoke-direct {p0, v7}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeOperation(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 189
    invoke-virtual {v7}, Lcom/sea_monster/dao/async/AsyncOperation;->isFailed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 191
    const/4 v2, 0x1

    .line 210
    .end local v7    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    if-eqz v2, :cond_5

    .line 213
    const-string v10, "Revered merged transaction because one of the operations failed. Executing operations one by one instead..."

    invoke-static {v10}, Lcom/sea_monster/dao/DaoLog;->i(Ljava/lang/String;)I

    .line 214
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/async/AsyncOperation;

    .line 215
    .local v0, "asyncOperation":Lcom/sea_monster/dao/async/AsyncOperation;
    invoke-virtual {v0}, Lcom/sea_monster/dao/async/AsyncOperation;->reset()V

    .line 216
    invoke-direct {p0, v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V

    goto :goto_1

    .line 194
    .end local v0    # "asyncOperation":Lcom/sea_monster/dao/async/AsyncOperation;
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v3, v10, :cond_3

    .line 195
    iget-object v10, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sea_monster/dao/async/AsyncOperation;

    .line 196
    .local v8, "peekedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    iget v10, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    if-ge v3, v10, :cond_4

    invoke-virtual {v7, v8}, Lcom/sea_monster/dao/async/AsyncOperation;->isMergeableWith(Lcom/sea_monster/dao/async/AsyncOperation;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 197
    iget-object v10, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sea_monster/dao/async/AsyncOperation;

    .line 198
    .local v9, "removedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    if-eq v9, v8, :cond_2

    .line 200
    new-instance v10, Lcom/sea_monster/dao/DaoException;

    const-string v11, "Internal error: peeked op did not match removed op"

    invoke-direct {v10, v11}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v7    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    .end local v8    # "peekedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    .end local v9    # "removedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    :catchall_0
    move-exception v10

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    .line 202
    .restart local v7    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    .restart local v8    # "peekedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    .restart local v9    # "removedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_2
    :try_start_2
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v8    # "peekedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    .end local v9    # "removedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .restart local v8    # "peekedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 219
    .end local v7    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    .end local v8    # "peekedOp":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 220
    .local v5, "mergedCount":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/async/AsyncOperation;

    .line 221
    .restart local v0    # "asyncOperation":Lcom/sea_monster/dao/async/AsyncOperation;
    iput v5, v0, Lcom/sea_monster/dao/async/AsyncOperation;->mergedOperationsCount:I

    .line 222
    invoke-direct {p0, v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->handleOperationCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V

    goto :goto_3

    .line 225
    .end local v0    # "asyncOperation":Lcom/sea_monster/dao/async/AsyncOperation;
    .end local v5    # "mergedCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public enqueue(Lcom/sea_monster/dao/async/AsyncOperation;)V
    .locals 1
    .param p1, "operation"    # Lcom/sea_monster/dao/async/AsyncOperation;

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    iput v0, p1, Lcom/sea_monster/dao/async/AsyncOperation;->sequenceNumber:I

    .line 61
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 62
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    .line 63
    iget-boolean v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorRunning:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 65
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getListener()Lcom/sea_monster/dao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->listener:Lcom/sea_monster/dao/async/AsyncOperationListener;

    return-object v0
.end method

.method public getListenerMainThread()Lcom/sea_monster/dao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->listenerMainThread:Lcom/sea_monster/dao/async/AsyncOperationListener;

    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    return v0
.end method

.method public getWaitForMergeMillis()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->listenerMainThread:Lcom/sea_monster/dao/async/AsyncOperationListener;

    .line 361
    .local v0, "listenerToCall":Lcom/sea_monster/dao/async/AsyncOperationListener;
    if-eqz v0, :cond_0

    .line 362
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sea_monster/dao/async/AsyncOperation;

    invoke-interface {v0, v1}, Lcom/sea_monster/dao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 364
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized isCompleted()Z
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    iget v1, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 142
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sea_monster/dao/async/AsyncOperation;

    .line 143
    .local v3, "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    if-nez v3, :cond_1

    .line 144
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    iget-object v5, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sea_monster/dao/async/AsyncOperation;

    move-object v3, v0

    .line 147
    if-nez v3, :cond_0

    .line 148
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iput-boolean v9, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 175
    .end local v3    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    :goto_1
    return-void

    .line 151
    .restart local v3    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lcom/sea_monster/dao/async/AsyncOperation;->isMergeTx()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    iget-object v5, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    iget v6, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sea_monster/dao/async/AsyncOperation;

    .line 156
    .local v4, "operation2":Lcom/sea_monster/dao/async/AsyncOperation;
    if-eqz v4, :cond_3

    .line 157
    invoke-virtual {v3, v4}, Lcom/sea_monster/dao/async/AsyncOperation;->isMergeableWith(Lcom/sea_monster/dao/async/AsyncOperation;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    invoke-direct {p0, v3, v4}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->mergeTxAndExecute(Lcom/sea_monster/dao/async/AsyncOperation;Lcom/sea_monster/dao/async/AsyncOperation;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 169
    .end local v3    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    .end local v4    # "operation2":Lcom/sea_monster/dao/async/AsyncOperation;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was interruppted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sea_monster/dao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    iput-boolean v9, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorRunning:Z

    goto :goto_1

    .line 151
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    .end local v3    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    :catchall_1
    move-exception v5

    iput-boolean v9, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executorRunning:Z

    throw v5

    .line 161
    .restart local v3    # "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    .restart local v4    # "operation2":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_2
    :try_start_7
    invoke-direct {p0, v3}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 162
    invoke-direct {p0, v4}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V

    goto :goto_0

    .line 167
    .end local v4    # "operation2":Lcom/sea_monster/dao/async/AsyncOperation;
    :cond_3
    invoke-direct {p0, v3}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lcom/sea_monster/dao/async/AsyncOperation;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public setListener(Lcom/sea_monster/dao/async/AsyncOperationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sea_monster/dao/async/AsyncOperationListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->listener:Lcom/sea_monster/dao/async/AsyncOperationListener;

    .line 92
    return-void
.end method

.method public setListenerMainThread(Lcom/sea_monster/dao/async/AsyncOperationListener;)V
    .locals 0
    .param p1, "listenerMainThread"    # Lcom/sea_monster/dao/async/AsyncOperationListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->listenerMainThread:Lcom/sea_monster/dao/async/AsyncOperationListener;

    .line 100
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .locals 0
    .param p1, "maxOperationCountToMerge"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 76
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .locals 0
    .param p1, "waitForMergeMillis"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 84
    return-void
.end method

.method public declared-synchronized waitForCompletion()V
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "Interrupted while waiting for all operations to complete"

    invoke-direct {v1, v2, v0}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 118
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .locals 4
    .param p1, "maxMillis"    # I

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 129
    int-to-long v2, p1

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "Interrupted while waiting for all operations to complete"

    invoke-direct {v1, v2, v0}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
