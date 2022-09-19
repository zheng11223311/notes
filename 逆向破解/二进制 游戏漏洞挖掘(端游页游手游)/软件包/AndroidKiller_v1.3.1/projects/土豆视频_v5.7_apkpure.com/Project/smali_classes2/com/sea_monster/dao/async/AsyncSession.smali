.class public Lcom/sea_monster/dao/async/AsyncSession;
.super Ljava/lang/Object;
.source "AsyncSession.java"


# instance fields
.field private final daoSession:Lcom/sea_monster/dao/AbstractDaoSession;

.field private final executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/AbstractDaoSession;)V
    .locals 1
    .param p1, "daoSession"    # Lcom/sea_monster/dao/AbstractDaoSession;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sea_monster/dao/async/AsyncSession;->daoSession:Lcom/sea_monster/dao/AbstractDaoSession;

    .line 28
    new-instance v0, Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-direct {v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    .line 29
    return-void
.end method

.method private enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 3
    .param p1, "type"    # Lcom/sea_monster/dao/async/AsyncOperation$OperationType;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/async/AsyncOperation$OperationType;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v2, p0, Lcom/sea_monster/dao/async/AsyncSession;->daoSession:Lcom/sea_monster/dao/AbstractDaoSession;

    invoke-virtual {v2, p2}, Lcom/sea_monster/dao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lcom/sea_monster/dao/AbstractDao;

    move-result-object v0

    .line 317
    .local v0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<**>;"
    new-instance v1, Lcom/sea_monster/dao/async/AsyncOperation;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/sea_monster/dao/async/AsyncOperation;-><init>(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/Object;I)V

    .line 318
    .local v1, "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    iget-object v2, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v2, v1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->enqueue(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 319
    return-object v1
.end method

.method private enqueueDatabaseOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 2
    .param p1, "type"    # Lcom/sea_monster/dao/async/AsyncOperation$OperationType;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 306
    new-instance v0, Lcom/sea_monster/dao/async/AsyncOperation;

    iget-object v1, p0, Lcom/sea_monster/dao/async/AsyncSession;->daoSession:Lcom/sea_monster/dao/AbstractDaoSession;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDaoSession;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/sea_monster/dao/async/AsyncOperation;-><init>(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;I)V

    .line 307
    .local v0, "operation":Lcom/sea_monster/dao/async/AsyncOperation;
    iget-object v1, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v1, v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->enqueue(Lcom/sea_monster/dao/async/AsyncOperation;)V

    .line 308
    return-object v0
.end method

.method private enqueueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "type"    # Lcom/sea_monster/dao/async/AsyncOperation$OperationType;
    .param p2, "entity"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->callInTx(Ljava/util/concurrent/Callable;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public callInTx(Ljava/util/concurrent/Callable;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->TransactionCallable:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueDatabaseOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Class;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->count(Ljava/lang/Class;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Class;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->Count:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->delete(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 182
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->Delete:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/Class;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->deleteAll(Ljava/lang/Class;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/Class;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->DeleteAll:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->deleteByKey(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 192
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->DeleteByKey:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sea_monster/dao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sea_monster/dao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/sea_monster/dao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->getListener()Lcom/sea_monster/dao/async/AsyncOperationListener;

    move-result-object v0

    return-object v0
.end method

.method public getListenerMainThread()Lcom/sea_monster/dao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->getListenerMainThread()Lcom/sea_monster/dao/async/AsyncOperationListener;

    move-result-object v0

    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->getMaxOperationCountToMerge()I

    move-result v0

    return v0
.end method

.method public getWaitForMergeMillis()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->getWaitForMergeMillis()I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->insert(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->Insert:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->InsertInTxArray:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sea_monster/dao/async/AsyncSession;->insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sea_monster/dao/async/AsyncSession;->insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->insertOrReplace(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 122
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->InsertOrReplace:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sea_monster/dao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sea_monster/dao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sea_monster/dao/async/AsyncSession;->load(Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->Load:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->loadAll(Ljava/lang/Class;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->LoadAll:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lcom/sea_monster/dao/query/Query;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/Query",
            "<*>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "query":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->queryList(Lcom/sea_monster/dao/query/Query;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lcom/sea_monster/dao/query/Query;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/Query",
            "<*>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "query":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<*>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->QueryList:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueDatabaseOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryUnique(Lcom/sea_monster/dao/query/Query;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/Query",
            "<*>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "query":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->queryUnique(Lcom/sea_monster/dao/query/Query;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryUnique(Lcom/sea_monster/dao/query/Query;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/Query",
            "<*>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "query":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<*>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->QueryUnique:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueDatabaseOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->refresh(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 302
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->Refresh:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public runInTx(Ljava/lang/Runnable;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->runInTx(Ljava/lang/Runnable;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public runInTx(Ljava/lang/Runnable;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "flags"    # I

    .prologue
    .line 232
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->TransactionRunnable:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueDatabaseOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/sea_monster/dao/async/AsyncOperationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sea_monster/dao/async/AsyncOperationListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->setListener(Lcom/sea_monster/dao/async/AsyncOperationListener;)V

    .line 53
    return-void
.end method

.method public setListenerMainThread(Lcom/sea_monster/dao/async/AsyncOperationListener;)V
    .locals 1
    .param p1, "listenerMainThread"    # Lcom/sea_monster/dao/async/AsyncOperationListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->setListenerMainThread(Lcom/sea_monster/dao/async/AsyncOperationListener;)V

    .line 61
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .locals 1
    .param p1, "maxOperationCountToMerge"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->setMaxOperationCountToMerge(I)V

    .line 37
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .locals 1
    .param p1, "waitForMergeMillis"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->setWaitForMergeMillis(I)V

    .line 45
    return-void
.end method

.method public update(Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/async/AsyncSession;->update(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 152
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->Update:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sea_monster/dao/async/AsyncSession;->updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lcom/sea_monster/dao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lcom/sea_monster/dao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sea_monster/dao/async/AsyncSession;->enqueEntityOperation(Lcom/sea_monster/dao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs updateInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lcom/sea_monster/dao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sea_monster/dao/async/AsyncSession;->updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lcom/sea_monster/dao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->waitForCompletion()V

    .line 73
    return-void
.end method

.method public waitForCompletion(I)Z
    .locals 1
    .param p1, "maxMillis"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncSession;->executor:Lcom/sea_monster/dao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/async/AsyncOperationExecutor;->waitForCompletion(I)Z

    move-result v0

    return v0
.end method
